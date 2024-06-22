Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B22B2904
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719048143; cv=none; b=Y10iCGpyK7+2A3GVP6o4HgxH3rVPcetd9w4ph1GYJ751jGREB7RGbR35lveqhY+dc1cHZTWkmMm4l6AbqC2Rzqr6fdqfjLF7Sd3g22KlOK1Qz/kXK+F6CyqIZuJUdbBOOAT4jwSK22kOAgnPCguW/pPpQIDZiBIq+mbpxgHBzsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719048143; c=relaxed/simple;
	bh=jBarfQnGKYqvyi/eeComk6/IcH0T8UEesVIrbi3b5KE=;
	h=To:Subject:From:Message-Id:Date; b=q1SdTJKV5ug/R8J9EpwUfze+7ulSABEsQ+CL61jEC/Vb5ewrzxQajGWIw5leQeWGtHk3SsOkZjanCAavMtCHI4gaTypIX8n4uTtPQOFoYKMdl2yL1G1PwXg0/KZtnRJRZby0tmMhGiYxM5p7eYQ2JS180nnFb2LArCNilbXpFpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuhHOP+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuhHOP+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FE2C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719048142;
	bh=jBarfQnGKYqvyi/eeComk6/IcH0T8UEesVIrbi3b5KE=;
	h=To:Subject:From:Date:From;
	b=OuhHOP+p4jk8zrpVrFPGGybBwMNgb8SGnaec1X2qSad4sykKiQJ2GD/rgNfmDy+qx
	 SyrjXMbrlOf18GATKjrmUnPKI2ZR4Muu4tbXNoQUGNgBTCVr195xwxiNTBMdtduSkf
	 c0cnpqj6V1vSIegecg+dye4c8m8yE6JcYU233iP4UYblZ3vhkLk8tPDA1fndQDM1Wf
	 sVvKEUCq6YEqBp4Azpfa7fvTT3DQLxiNZe0mYEFwAn0t5O5m67yI4h2vscXgWlEo4A
	 VB/Ma7Uvkxi28e7LJhTPUOE5eFLcu+X693lS6hoLJs7+hAwpPH4XmDXrxFeOHXyoyr
	 DbDZfm32Md7zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CE2C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904814277.26671.8617292050236681967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6cf4c04dee9b5f6ff0824612aad93ec3204394ce5f9ebdb45ef959046f9be4
Date: Sat, 22 Jun 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719048142
