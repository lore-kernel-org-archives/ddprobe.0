Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A86033E1
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750827594; cv=none; b=jt0B7yJL5/3AqOMdLskQ3D90IVSFYtAVmzKoKV5hSnaFJY5NvnX8q3c0IiyFS/ankn1ryxYeg8kQDYAkeMod7tbhGJPDzjnQeNP0lHNo/vle28lIgbwyQ79Uen7tgp76OZJhopfg8FeYvpdHt/1TyG7ldCEX4opp9Lj+5otbNbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750827594; c=relaxed/simple;
	bh=LGcdYmjR5kIP3JYfwnfMlwMPRBKbTVgoLEqISvIYnuE=;
	h=To:Subject:From:Message-Id:Date; b=soTGt2d+j3BozfNIOJJpUJ654M7tbFNTSTpnz74uP7WpsZnlfvMiOZ7qD7JHMZBF3odNTo6cXV0wqSzMsFReOw/W38/O2ZR4zXpd8dkcDx1GjPY8MIer58Dd6349zPMaWOg0+23WeaNrGz4+NR7zFrTBLZbzvwkpqywpfVXGUzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeVC1PBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeVC1PBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F68C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750827593;
	bh=LGcdYmjR5kIP3JYfwnfMlwMPRBKbTVgoLEqISvIYnuE=;
	h=To:Subject:From:Date:From;
	b=aeVC1PBQAQ1OqBHDCrlN+1CcS9RZtB07TsJC3XeHyI79yt3ARjM2RbrHDdN8CNTBt
	 aJhpb6R0oP5Fe8n63DnYhVRF85Ella5fiuyLE8l79SvNzyIQYtw33DlkheRWl08Z4I
	 3H2or5zo+YQMlx8jEICrPKLh89SvmanawPbn4lXVABC8Fl2VhV2wSF6iWZiiAoTMAe
	 Ll36RQm5ocWNNybIx5kiMRPeBBQ5Dac40EOGkevsv+ffEGrP7T6h2yjhF34PyrSB5G
	 F4Nh0FT96EmV2E/bb6fPlpw+IWM8AXN4SaO2++WHrnMtWftggcd9mlCLMjr4BnbiDC
	 C2xLKoFTj+6FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E989C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082759357.17990.2404511772534244700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b64312478f7264e854b2b8d6154904219ae1b3a67815b71526a31fb887c9e1c
Date: Wed, 25 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750827593
