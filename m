Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FD622257E
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738877755; cv=none; b=dAuFd7HRymyCGuE0itiOYkKo1psOY9Qofv4q9k8Q9DfclFePnlYaPcpX2nDB5jpUiByAhBHmdx3dTCnYDEvyLW4XfmuMbrTjr9dtsHWFbnOGpVNgo0mI/sqt1ZUnUrM+vSeYhEjjGn8TKwWOl45EGGjpreLuENZkEC3mHZrks78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738877755; c=relaxed/simple;
	bh=2IZPe6wfuU3x6wNkngsipyQpWB7M0SSiMdV5cNPQRvs=;
	h=To:Subject:From:Message-Id:Date; b=bu++GVUpqVTw/Cx0Yw15Y8e1l5bSAWrS+TS1fX3QaPQtcNOXrH1z2FIe0bZbJqVNn8Y5UrHY1XdeaplAhj8mD8XYD0M1qsqSWj9EoN54TGUHHuNU2QaYqkBt7HwEBIXoYXILe3e3LyOwunTR72aKVyNPbS7+buAGDr4l3B7K2yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bvy1qghp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bvy1qghp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A93C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738877753;
	bh=2IZPe6wfuU3x6wNkngsipyQpWB7M0SSiMdV5cNPQRvs=;
	h=To:Subject:From:Date:From;
	b=Bvy1qghpjKdgM0KYCWkN5U3x4hOr05LGREaNwTNzzgCHkd+giliOdcs15PDwVeDtZ
	 pCzb/x5nnPNCff967gcGgDaJn83MGxnBxB9C2Dira0zT2sIb4cfnqvGfynvhCwZuPk
	 MhpkJ0RvMFIeUVECi1oYVGQSwYvAYqaEBU52Hagp9acIQrEWuD4zegSykuu+Oo7hkk
	 5qncRrielXVpvpN/83b8Hexa3yEyEtP/hQLcV+EVS22SlnsormK0YHkpXDrQy8np4N
	 PKeMZljpp9CSBsnrFf0abLAPg95CB1jlzXvHRm/Usgel/LTjVriIJl8XtLMWf/oULT
	 +OohqUVnbFDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD21C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173887775360.10414.17604505993028575725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc89cd89c9b3b50d12a4fa1720672403465ed3f136309662625b92048d7fb26
Date: Thu, 06 Feb 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738877753
