Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564577F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706346497; cv=none; b=o3qGadcw7greacV0Vvo8mdik+U6y+GScNFeVL0dBjzx8w73ooaZQPM8A1GNDo8ymKrQ8Yker73xEzizEWw5MpuUFP/c7oBCmP2f8ab4gzhOowGDScDcArHzMVFq668LAe2FlyY8l9NGJzmDfiN255LMZiz2ZzY1xX3rxtLHs588=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706346497; c=relaxed/simple;
	bh=h4ci/B8dAQaO7B9cZ9N0/Pu87J68xWc7SkfSyOPe8HY=;
	h=To:Subject:From:Message-Id:Date; b=QaObr6r3fUF3VrsXKni++UocRON75kS9cA0hX45hsB36JDDj7tNlLaEfIRF1TXR8QAZ+sSCO8c4ZlFk8DB3icDMIIK2Pwpfx4ApisTx5aTmusz5D9A9VTG2gz7K4ECsgv01EHlTkKXgwBL2k2kGOML3gCmD0+Z3DnmRWbeV4/x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMFfG4RO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMFfG4RO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B778C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706346496;
	bh=h4ci/B8dAQaO7B9cZ9N0/Pu87J68xWc7SkfSyOPe8HY=;
	h=To:Subject:From:Date:From;
	b=eMFfG4ROQ5SPKh4k+9rE4gTHe9SRYojIXhAzw8v5padoJkzX5OljRI8Vrn3o1/QPT
	 vY/ZaYP0XUObNdQ5KaTA+8piauOoVJLihOPruSBdgo8I0HMAi7deQGBs5WOwaROuJl
	 3senwU0rdVpV1Vcv24+k/LNuKJqsbjJ0aamGcFamDF9U7gdC/4i5/4IAmEJWQz2dfY
	 bJy8ihuztZ053ySMrYQPGWSqVRb5e5Y38lgqCrPWYvLQTCEIwCFEDswLOepOdLYTvg
	 f8QeOxPcWoXWPf6qjzaFBYnQYbHwidcDf+s2e8yFsRLWPCk3ic5GIU+Kma7/bG6L4h
	 7LnIapMi8JmvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62231C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634649639.5396.10287797947784097073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc63deaad38c1da88f43571b4e883cde8e9ef1b02451c68fcdaa5aa4824d1a26
Date: Sat, 27 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706346496
