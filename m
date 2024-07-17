Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D82F14287
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721197523; cv=none; b=fFpgLBjlJ8b1xlqYkZFdSQiL5PZrPNaTtk0ythKk2r+FS/CcVJfDEGLrglUeMkblmTHS+45YjKa0Xq+RHq+yNdxnOmkLNaHeCU9IIxFlUYT7UgqbEP/MdONNLdPdIk3D403tjgl9HL16ty8zAOJ74dUgpAH+mOnDigYjFwpRWgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721197523; c=relaxed/simple;
	bh=RSJdjrvP0M6uym1T0HEEilT/bnCT/a2CY5vOm2yr+7o=;
	h=To:Subject:From:Message-Id:Date; b=qpRAaW3umwGB6NonH3yu4s59npO0KFpNhSlp9Bt27NQRhQxSZWzIGQfrjsi9Za4RSJoHFoZBFZzmUBahG3bJRthVbE3B6DSNpnhjd/EvJabklLPVOl6I8inOKxj0AExHUxFHk4Krdi1oq16duscj+9KFTsS8C+fnM1d5nlKi9PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRC6kTNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRC6kTNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A53C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721197522;
	bh=RSJdjrvP0M6uym1T0HEEilT/bnCT/a2CY5vOm2yr+7o=;
	h=To:Subject:From:Date:From;
	b=ZRC6kTNuiYw0R+951CCRt2UsKF5YboFCAaiqeyu3/bWPNSzWJ/OH8dfWEo1hBIgVR
	 lX08sQlEYoO//uWuIGlzHXQFt8WF4AVoaGljA1lJ7NgQao3voj3fabyRfr5BuG8EpA
	 mRkYF/QpZE+x8dgJlbtxWyRhK+DNX/fFRPMThCJvMIEIQeCCmHBEd9hrwjJmRCaMDt
	 vWzKA2NgKVUq8ntC1L/goLhC7kQpkRN6CPag4rDGuD6lGJSSBAHsHGukGBm66y2RWC
	 CVF7ZB0/MjiRRT8tly3G37jVj/phWguP579CNn05JUTD0sNTmRAFB0oeEOvoBnMDc9
	 DWDoLDOTPIMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF489C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119752277.9187.9475709109015687817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22be5b9aff785778c1633d5a359be8001de43dc249c98c4b87549f0d883ad351
Date: Wed, 17 Jul 2024 06:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721197522
