Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D92A158862
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719593063; cv=none; b=nOpn0rKPJCXnCL8IHkIItU3e9YUshHI8ZtSkKB1putP7bhDj5W05w8pu+hEKS6nEkszltHPxKIFage2qVyFnhLRyraH2hT3bBNe4ai1u2sBsHMXcT42+vbtl8j1VvYjGDM6JC3F2j72c3DDj16kDHOrL1bgtBuc6CoTa00k2DGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719593063; c=relaxed/simple;
	bh=FDV31ICBhnN/QeBY4kP1NFsXcYIQSOqcouco47SDoHA=;
	h=To:Subject:From:Message-Id:Date; b=M1S4j0bGG1UmsiAXCZFXq/vcIZxjbCdvy9zPhy9i4YSA6eq5psDgRrs4QaFtIJlHZWw/LhR6Vqk8FkjG/TerkH+iFbMmKBpEW8vLVt/Of4Kp4c0J4BTWGQpMZxJRsN0buovGXc7kAeJRPD9dPDC/vlGHYE2SDTvp3+xVlN7NFMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/WJ8oj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/WJ8oj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8830C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719593062;
	bh=FDV31ICBhnN/QeBY4kP1NFsXcYIQSOqcouco47SDoHA=;
	h=To:Subject:From:Date:From;
	b=L/WJ8oj7Jflu45zr2wUJeTi8J/xnQvn4fBGCIYkWDWm19BufViDM4g78rxzfF8VQf
	 rwFa5YeOB8S3404hNbwJg9YiVslY67Zp4TSWsmMOlMP4VFTGPbsLpyW8v6uCCO3qlr
	 MMRoyVkB9wOLYhFmEgRRmLkzQ+FcJcwq7vibIqO3b25X/Ng9G/EX6T/eF97qwTIUIV
	 AbZKn5zXy6N1DL2miPMQXAScqKTAnVz3x0rvZV0EJPa+Qk2zxrUNA0Ca+8ZwITzfVn
	 zBqetdkVlBzLQ5HymHSEyXNX27IyUgA239lYvtyI1q6uNt+B5acIqORp/gVCrtzQln
	 ZYK4xti9XHTWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4487C30658
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959306285.19717.6233861250823976652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fad13862abec5887b05b6772c3199db31c478f3200f7b19f213275e0bbee743
Date: Fri, 28 Jun 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719593062
