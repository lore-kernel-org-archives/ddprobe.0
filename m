Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160647E110
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758024594; cv=none; b=sckyqqtGBHsTR4Iw5qAYow1yrcq1SI+vwv3dWPSaSJdJzCMR8f8GSDg7Frl/f4g6Plsa/22mODHqSuCKlMtmJ/3l1wtbVX2rXd4Ips8B4O0u4lGN9BQW/UuXVFCiBVbenlBwdlLGcFaiuB0KK6XOhY8dbGg5nbCj6Fyv4mvELXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758024594; c=relaxed/simple;
	bh=Gx1zKG5Kq5/SJ6eQXA6QEIUXDUCcWf6h7ND5RCe9UMM=;
	h=To:Subject:From:Message-Id:Date; b=gMKPYZXzLEYBrie8GYwoQi2NabczuaffoOV0Nd4nUR7qxtp291Hrj1iVR+vGiAB+StMLoVs/5bivSkCZk9iNJIiSxht14nBS/aef9wuD41ugOSV/4Bc0FxjCcPEwQKD9UBoeQ4KoZCC0rdWB7Oq3JnjekmcQRX42+c0iwTdmYiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsEXFY8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsEXFY8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B2C4CEFA
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758024593;
	bh=Gx1zKG5Kq5/SJ6eQXA6QEIUXDUCcWf6h7ND5RCe9UMM=;
	h=To:Subject:From:Date:From;
	b=FsEXFY8WNuyfmBxliWfx8cYWM9wy9XUDeOJGARaQXFkWHw28A+C7aLkRR2sjqBej9
	 tlquxxnsBnLHAQC9axPYtTnbCItpBdyR/s3TVXK09mbbw4XUioDq0/fEygdKhunvw2
	 m0CZgurVVoBYgF8MBWQQNGkMft7woecBrBn6SUXcbcpzyOdgy6bZLfZFjqfpiM32Ug
	 BgRFDbeGgmA080Td7Wp8TKyDivbGCYZ3w+RUOJl3NpQDi6UO09VFX4bASxp/MnBbi6
	 /5vjfA+yjNUlSJICAb/yopslnApOlO+3jW//yBbXnQwRujMFuh2FDaUeTuvidUrKM6
	 gtEL5GADxkRmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C07CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802459357.17359.9327750553377759943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bc3d1163f36268ffe9cddeb881428521e1e6bba98c8dbdb714c939f663f19b
Date: Tue, 16 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758024593
