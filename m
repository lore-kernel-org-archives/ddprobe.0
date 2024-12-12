Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45CC223C58
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734025554; cv=none; b=s678Wy1j6S/rFIANmNuxqLrvQ/La8ON65tKi08+9nk+I/fXvh4dqRcXwmL4FWC2vgCIgMzKH8UiAO5yvKTx3hTcwSlfCnvMS9DfMVqHcyPbr131fEkyieqnTweTtsm5SDriObZJPPt6+3kba4Oy36/1/AJtjxrX2UrTD+nBRY64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734025554; c=relaxed/simple;
	bh=lcSj19IwVsxFWrePg0p77pb69dVIArlIDb0Ob6xcnOE=;
	h=To:Subject:From:Message-Id:Date; b=QR8jTtAzf30N9P9kRDvWjsLiMOwDenhQkdaKzHII28BPjG2i+953AOaiGVcNJaccujONuF+DAUtKacpoTx8jB53rzflsuD8TZF8ErtGxV4xL4JaH7FldrUCc/yoD7gsy/edOMUHBByj46D/TO2rWyzAz60RHrKXOXPWq0L0oVtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nToSeTxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nToSeTxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC946C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734025553;
	bh=lcSj19IwVsxFWrePg0p77pb69dVIArlIDb0Ob6xcnOE=;
	h=To:Subject:From:Date:From;
	b=nToSeTxi53+s+dnot2iiDDL3JNE17zZFW//pGeKszsx+9krDE4L7LMYlH763q5+oF
	 Q+f5U+67bkIN2DiXojF+q1v4534UHak/JkRfLsKo7kaFeF4/nMfk/iSIBb6QDSPd0m
	 iThFHbpXsNY1sIUQ0d2qq1l1mW7B2s287YNrYch5+kNLBuBKcp1mJFE4AUG2l/2obj
	 lY3Yv9cKT2wjNhGAq3RnVTSnTqwbDNP27eeOG5XMf612ObeFcK/a2J3t+f+xN+OmDh
	 UUhpzSudfVTDg5JrVsoWT1QgRVLxj8+Pwuzg/m5OuY7H/BNATe8G74e9yS/TsBJXbD
	 /00/FY39IqAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A253E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173402555362.16628.5273693269584844061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301e03193bd4705dfcb9bb55592c2bb32f71dd0d59243603450089b6937c2b17
Date: Thu, 12 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734025553
