Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CFB1C68E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718486303; cv=none; b=mHoos9sVc8i4ctkoZb3q9uM3GppcHXkTb4g9yBMMt33adLu/eaR59aZQLC/+WypFKKXZTRPVcEC3LFhUBCFRt2oA55G8M+qBF9hWveiVcpICaBI4C/5HPFgYMOTq3YVfo7lFPYhM5lNX8gKdnuiHSfNpG0eKjWMYtnXLFEzeVBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718486303; c=relaxed/simple;
	bh=O1rduYH+Kdqf+CceEMfrVtRv3QsFj/ulEQnAqQW6ccM=;
	h=To:Subject:From:Message-Id:Date; b=BFtow+tti0/7H0o52CdPYQog6UZ9RjbHOnUTEqif+qT5Qt7EwTLdRmRnoM/S70W2e/LZUGWn38bOmGW9jV1lEU2/u/xLk7bBWxqAzO5qa9ov8+5on890WMXi8E0FXXS7J+VoYtZoCnamZvjkxfDbxztTt0llLRGkTU1gMjX4g8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdRaKsHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdRaKsHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5ACC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718486302;
	bh=O1rduYH+Kdqf+CceEMfrVtRv3QsFj/ulEQnAqQW6ccM=;
	h=To:Subject:From:Date:From;
	b=jdRaKsHYZ7n0c2hDXZmJdpnAxJSvmTGTbsfmUaoYfeCT4PaGoe99fDf0ITl1Kk3JY
	 xPhJd3snyn7Lx0gGkKI8ToCmakN5qrqYSKCoHn9oP2/X19iRAh3Te/IM4MY/s32YZ7
	 Z8RLmiFkfqZxkhWo+yV0p+0dG4P4vi/DQ7GojD/TPULDnqmhaVtucD2pwQ59XHteUX
	 MYGhX4N7oJqaGnpYLXcOnHBioJtM4w6UkyAhwCYY1TAo6TEvJuMHq6pb3m+va2x90o
	 Z0S53Z/zf4pVF86gO63Iu5Qqb6JtEM/SXYu2kRcSAq8t+y1RPaImB0ZU3UcKG1wpJ/
	 3WtvOmygAcKcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B55C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848630278.14871.5564905631278692583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9e9c50e085dd56979ffdba1d443971af074042589e8724a32212faba595ce9
Date: Sat, 15 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718486302
