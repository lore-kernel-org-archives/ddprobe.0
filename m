Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5176364054
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798093; cv=none; b=CtBxa9JNRmqEb18M8lThoPAQc+FUyHXSXYQ6Mp0TusWdu2eoxB/FYGLORQqRIanTmCwm07fL24Yz4uqHiEKBqM7At/YJOgN7h6h1r+oAR0UvujovdQ14MNaYY8gZ2jqKDyNI/rLEiETwBmsgaQQijU/z2wMPWhtjxk8wqyr/TZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798093; c=relaxed/simple;
	bh=N2g2FWpkrhXO/xa+pTzNSdmLFW+ntOCFrqciUCqMt6A=;
	h=To:Subject:From:Message-Id:Date; b=BXt1GquyqiJ6EDPeuEdVU+spVmrSVGsr1cGyj219EFv2D+NV8O94AQzBg7drl3owfqixgIaNhuEycnLvkwFH/zBB6/RiDz5YO6L/osIUcR/O8rpa7KjPErHYndRQmT5eWRZa57jKpaAywa+pTny3+t0vsAYT0PTsxTdgBUIA7Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvTA+L4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvTA+L4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0192C2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772798093;
	bh=N2g2FWpkrhXO/xa+pTzNSdmLFW+ntOCFrqciUCqMt6A=;
	h=To:Subject:From:Date:From;
	b=tvTA+L4uXHmWurXAgROyra3CwG+C5NTqr1OPIh+sdgkQ9oTaXRjgJ0KSq7HGnMB1W
	 +65c+U/k1Z2vfES1gYVEV9VkubQTRyTv5BLSbaCPABa20n/mgX6eOZoTDAr8fdbvjQ
	 cEDgULfgngsZmR2GoZFKD6Li4hHseDdYGxdLMwW4Ki4SxKGbUiQJNLHEgCHDYNFKmu
	 UoGS1LS0WydsIFgoPU/iDyzeKhNK2+WXC5VahTFdYwB9+VTdLeNGu4LNhupnpdWMGD
	 M88KWpEAknz6KzfhDp1oigUIGKUx/SCRZY5PHMZ6ngUiKxxdCstYOa3I7nuGrZIimZ
	 xK9putmXFanAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9910FF0182E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279809361.12581.4459977186332143332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ccda21d554a3d26e76b54e36b297f889b6b73dc856e427b33f345082e947df
Date: Fri, 06 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772798093
