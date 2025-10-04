Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3626923AD
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759579194; cv=none; b=Nyr5BhRG0QrAPLaR6FDvr6abaKqUXvlItYzYkvPcOP9Nj626yxd+ig0kRfTFMVJyFrCpNAH+nAgblVFHHSL4j3qEWd3ngqgXRGlC/kecA01bBHTjXTedW5FqjCwYzDvMMPSLJEJTq9DLRO/MsidpAfJVhkNY8SIsTzLhHm4BV74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759579194; c=relaxed/simple;
	bh=ctdqFsQrzxnDqWuTFrGqax2M9SSn6kL6CAYLWv6tugk=;
	h=To:Subject:From:Message-Id:Date; b=XbEASeNascXBw325wGSd9ZAJYqcNH1Rgg3bHU5MtkreEa783aTsO/2Bty/8jHFPho27nZFPtZjZwxvPQvzD9DGbYVgfab8DF/pjxEIqaM0btoGjyWsUKGidbUBUJTU0UmWmAdMroWp6q8E+7/N5Nbi998E2aL1bGejRjzbaaZX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxERxT6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxERxT6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B41C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759579193;
	bh=ctdqFsQrzxnDqWuTFrGqax2M9SSn6kL6CAYLWv6tugk=;
	h=To:Subject:From:Date:From;
	b=FxERxT6THIgNap67qgSyl1CBL78w14z9NwMG9MtnwHN9ZxJKAZXb5YWLuRlKrJ7It
	 q3QIP1feXKWOIJ7INjTEMdKyJJRJcCUron31SeW4e1gRUI2kxLj4bxK+/JLVzULW06
	 PhGdgjKG3Yjkw30sOwIOofS0ZBooM6MCl6kbWU4WG0AP2m2jg2X1b7LoFkG9Hhkv7Z
	 YroyXc2HSPSXVIQRn85iQj8H4gVSVW5sotCKuh07DKzf4Q5hOd4JBGunohAnkZLwNF
	 U9hIT0bmZcO8+LYqa3S0IyaVWrDMELTAloVWGs+AtUMx4u8mHC2VEqy+hT3CwaG+OF
	 TWrDSH1sVa05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A49CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957919357.14661.10307791106302442532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2ae344205d1a154da1cfb2dcdcf16480241e1b098c510b94d4f4507ac3acc5
Date: Sat, 04 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759579193
