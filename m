Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E1C63CB
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727880954; cv=none; b=fPtfAsqWMShTzdJMZ+SqK8qb4r/LQJcEOCJ9o5xZonsbtn6Xuc77MKHthNecNWVzCfOzQpOInGXbzZQgjO4tTnmQ7niOip0ltaBOWVk0rSxf0u/q7Tt62bOkNFgV8kBKWm611TLo2kP0f/RCi6OwgsYDwrVGdJoJ1SMO2oZ43UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727880954; c=relaxed/simple;
	bh=IAQXCPlO4k6JP8aDsyEpBTv0URL/J/P5wAzjhvg1P5c=;
	h=To:Subject:From:Message-Id:Date; b=TE2R95w2JxNAl+gNOXw9wFaR9AFLOX6S2qP/KP/NldyZoSNCmHijSaClrwXSMd8FBzv9izNJffeHappFxLG5pR5pqsAcfyJwwEG67T2yds+7i/NtjiLcuIcxwWWK7/6ap2ZC+0mxPubwgWnwNeABLUGTChtlomiIMNR/ehdhEDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja7g2Qxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ja7g2Qxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC0EC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727880953;
	bh=IAQXCPlO4k6JP8aDsyEpBTv0URL/J/P5wAzjhvg1P5c=;
	h=To:Subject:From:Date:From;
	b=Ja7g2QxlsPGtzTym1SWW6PguZdurzfpeJKaB59HjJ/xzYXW4Pdyxgcg8nkqVeIg0b
	 LDHNmDhevYYitvMLdbCDNDQzcZ7HVM7RnnHCyqZFGN3+/eZKiO5veHESN8agAkXvfE
	 TN2wMDpCIyFu2HCbs3ufVt3EPwXquvd534r16zotnk7JmwlsBhN9IIOPBzo6Skin1V
	 EOmRhufPDz7Ba1Cg646C+Lr4vj7MdsYQ2Ddctst8xlhY+FhlIBJlrmLrz0z19LgmJu
	 cIpLeX9izzVCgTDtF2NYYaE2oLOY5KzP0w8DH1etY24t25ZqZ599eosIXI/WG4bI6K
	 +LnuN95MFi8LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B643CF6D28
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788095361.29513.17994105955207937148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee434ca5a92ea85dc34111d74abace5190333a2916f9729718cbda17874af2ae
Date: Wed, 02 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727880953
