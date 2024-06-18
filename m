Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE018E1D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718698163; cv=none; b=EGj1I4rQH488iI/dDKJYi0Tpn3kOtzJLwBhlRWBzJx0ia96URfixSnQnlH7G+cIm2KTrCzBzAcG45Mtm1/Zw5qIBPg+bUkYNGmduS6U+fwYBXz/73LOznb07JN5igW8gPhvNaAeBhm1UVdKTKheh2Q+q1p1FeXi9z1nMO/lrDeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718698163; c=relaxed/simple;
	bh=Rl8+4D0M0LEGh2c9AgO/rQ6LdvPCQYUWvUIz8i+ux7g=;
	h=To:Subject:From:Message-Id:Date; b=CJ9pnU/AduTNbVyIJ1SfkHrq4/VKVI/PaYO6jTtd1x3LbdhQBlqM+jTXw5sCgntM3S6Njw1j8pwU9er0mhE9sEDwO3Ab4PBXKLHvjjclLqJshbn4KxcTb7LbUL+FZh/J6Sm6IkjjvSkctsc8V9+TH84uyvJ6pcbqklKIY0YG8/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qr/qY2kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qr/qY2kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2680C4AF1D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718698162;
	bh=Rl8+4D0M0LEGh2c9AgO/rQ6LdvPCQYUWvUIz8i+ux7g=;
	h=To:Subject:From:Date:From;
	b=Qr/qY2kVf/Qx2SVWn1+2Qtc+R5H+D3yaRl2aNe1IGZrS9MkhbMov0JHg14D1eorlF
	 hMOXNpjzzmSi0xJi6Lt9bHafic3MmRpyi0+RVGSNXNDSVelutUtp/5eP1nYSgR2cdq
	 ve79uA2x+FNy4F+DaRnXNo/6YQ8iy6XjFBDWvdbUEic+1cGElHo2OqRj9ZHwLwynAY
	 8VGCCTqogpHQmF2cCiMKfvXo1Sgv3WKI8JPnoQOArD8ZaOkEHNqHZUYClS7teS9fOI
	 5Z5vTY1E4j2NRGTdFIE32+76OC2RbS5H9kVA6xfpQvem6ouWXEQsTHywN+Zvqefotu
	 ZC6d+1j5IZOVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F0AC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869816278.23675.15894897650622717338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72949f2e5338642bda3dce2a2b2ccaad04af9077e313ab81d158538fa60577b9
Date: Tue, 18 Jun 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718698162
