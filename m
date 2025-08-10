Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE358528E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754797194; cv=none; b=Te+XnATCvEwAGd2Xad8SSw3EZ0ex56Kj4bBzz7CCeAKm7aydS0NU1jT+sjQzkbrUO2zzLtkzPwTcbJugohE3Nr5ZiFrsKomMJ5MRG55vz4fo/dbSQ96nl2pGJaK+1TX1vqahnHe8m0Zp4A12dFlEyG2crCqr2VTqapxijlag7qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754797194; c=relaxed/simple;
	bh=2SOeU35Ma+D8HKliXeMkiXukREaDkae9MiHfrvxTOkE=;
	h=To:Subject:From:Message-Id:Date; b=dclpceVLreB+aqXM5s7h68ULZOmDSPV3Bep1Ul+8S3GBtS2NmbraAQP17mQEV6wq/2LttBKuiCfYQZaT/a2bEzTuIoclSLH8trSImIz2ZQTH8AWieJPyay3ifvBn0eNrTa+IGvrAfIiC9XTXpcTAcZ/mwX0D3QgS2hhjjGkkBAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmzYcDX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmzYcDX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AA7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754797193;
	bh=2SOeU35Ma+D8HKliXeMkiXukREaDkae9MiHfrvxTOkE=;
	h=To:Subject:From:Date:From;
	b=CmzYcDX43FwPcHPcn9l7LSJutp0W9Dtr7O1TpcnzdBbGxm77JeSO2ZCtp6dKdPC+K
	 6cvgF0Q5dGOPq98WARFW25jFNBIbfwkI8NDx87ltTSug/yanbMLLuMlgWq9jvlmgfD
	 KQwqDmjcHG57CKCVoV0mSd2r4wLY5GI2HZwg5E8FvNCP8b08SnUaypF9NxBSNEkqfh
	 bNESficFFwUY2Oop2ZmydB+MM0RKRN5+VeRHUDxpjZjYR8bFra7ZmES1CPyuD0C9fM
	 cO8ptakST8PPky/m4Gk0Jaz6j2DWPLWaQvmQ1I00MGLClwZTB9qAQS78lvKwWtdoAc
	 bhUWQ8On7rtvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B60C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479719357.7362.14006175780925179750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524dfa15aefa3e30a09cf14cab276b2dc4110e6d18a9f21d38851b1539d4e00a
Date: Sun, 10 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754797193
