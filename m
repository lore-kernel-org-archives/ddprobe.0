Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D056D1B5
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714942343; cv=none; b=T8PsE5Wl4Nxc795dMsGffMIh/j4f3krVqZNr/myesxk0bMwQrl1wNv7LH+ii+aFH/yNWdel2N41ntG+eYM1GY2fE2IPdKsX43eO62mMtRqJKN1lNcFD0scFeFoZ3LA4EyvLM8X27VjsX1Js+owiIs7Ev2+MlgMpHeYBSixDDd1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714942343; c=relaxed/simple;
	bh=YD6xhKZdjc2nORI3cDCg3wVkbSzgezuZ51hEbyJviLA=;
	h=To:Subject:From:Message-Id:Date; b=CULKxA/ezb6Rx+5wati1uXTc99wuUsgA9dpkm+IhTtaZc96+R+Wdg09UGzbmfHPujdmWu2QwYc9KklUXzU2mcgaPz4YEND/3XtYa1zvyXeS3/+/D3tpXAeE9tf2PTiz1gsrF317VAOVPY6cVPMlOjZEezbTdVKp1ZoC46yGqwx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbdFl/rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbdFl/rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F87C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714942342;
	bh=YD6xhKZdjc2nORI3cDCg3wVkbSzgezuZ51hEbyJviLA=;
	h=To:Subject:From:Date:From;
	b=sbdFl/rwwoy0NR4tC+XSe/iUqgOtzYIyCtUICG4FR4GLd1TCR+1GZOfXXAJFWVCi4
	 T81vQIBYZZbuIxOGPFfZDw8dlFHCM7K1yi06SA3a88BdepHTdK9DOLCWM9McTLsVG6
	 yIeilMfheyzLWIqyVL6sqhcRiDVTXlkfkIcPZg3iuep5Wc/fiSXthcc+ebBYF4Myfo
	 BANENk5+xNwmC2ei8A8x51wonUNBFOfU6SvbF+sFVM9R5sxnQz1WGMWri5+eA3tVIt
	 rSJlqM8JZSgnJgYJYNoyLh55kMR0fC4DnD+tNHQJDFN1lC8+7T8/AIjvrR/uHQdcUe
	 4LXHRlIX/qNkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB6DC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171494234276.26697.13093312930595324478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a80340c6f4758eb3423ba75577ce98d68b9f678e68c8e55d1088835b5e9ba76
Date: Sun, 05 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714942342
