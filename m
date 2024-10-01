Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E24B6F31E
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727760954; cv=none; b=GpK6GxE5wvnnxJ+ZePFGvbE3Y0D6O/Iuy7NDD3Hqjqi4HqlX7x6sGeNgOkowX4vqUlOzxLgN1fo0V+Qc6aRRWX3s0GYcpGh4eTNqQ2kFOblvYi5M9ITO+lX0fF1LJCyyAcbh7EUpKw2XwV2YkzSM9J5QjhvSnmJ2eHi0/ZJDZgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727760954; c=relaxed/simple;
	bh=7EDlAKE+vbvHrpMPe10f1S65ytV/aADy+/ezeHuoros=;
	h=To:Subject:From:Message-Id:Date; b=f6nluV7eCkzlcnxJeSY0GtRNvbHztth5HEvm7vh0PjTjEMErLUUoY8wahnemo5/db+eraui89SvF/4TX39TgQt2bDS4XECwaIZiPAfRckEDLc80F1U4OkH0YxVGsG8fPBo/L/20OsWcV3Aty9R1cyz7egpwbw9RS4OE39t1Zc/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6pQj7SK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6pQj7SK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3622C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727760953;
	bh=7EDlAKE+vbvHrpMPe10f1S65ytV/aADy+/ezeHuoros=;
	h=To:Subject:From:Date:From;
	b=f6pQj7SK/PwAlyHCa2eQ6w5Vppzba1gEMj3GupFvBtwBoURTzv2wCcBiqGiWvXMkn
	 7cRvpokfhmDPrvx8U0Qq6aHIVeZhZ0eGyqfrXUUz8zBISLxYu7x/8JDrRZfxKCdORK
	 MyQfTPmB409NXGl/0fO02mwfah6YkQ0GSM9CHH0DE6Nbg/NCT58xQjFVoVDgJtwW68
	 f/7YWO36PwqZcNlkS7Ha0apvgvN+m/bxLCQnq89/XVHaX85okJZNKjdmiiebPhi9jf
	 ATMVECDjUnEVtYE0Eb/Bz9ngUNjTnckfVZcQDpp1i4xeCwRc7uHhjg40daEMq5XOAJ
	 7C6RhlR0Mk9eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9411CEB2FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172776095366.15358.18363371026394781971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23d08f99b87ef2a31d401f0c772243570e0e13d0d446ae76bae632703b334a1
Date: Tue, 01 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727760953
