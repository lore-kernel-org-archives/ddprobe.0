Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFD340EB81
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788019834; cv=none; b=XJsvg5LNm1RQ7fPq7TiTMe7L0psb6gSlleglLcUJYbriNE4Ly7WMuktkcha67P4SSsEk4LCV2tqWWtGD6b5OujksrM0TKPSP92gxdsFyVA4n8niEcbd0jHqmTo89+CgpGiubMBU+6abhctC6I1sCokxTLoRWwR9guoft2ZYMy1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788019834; c=relaxed/simple;
	bh=fggNdIp4JnUMcL11nvLeWSVHxAtHyRJJa+uzMLLchWU=;
	h=To:Subject:From:Message-Id:Date; b=jXBNPnkVNWvo087zrvA6NFWayqs39Xu219TxXu+5gw3Ggk83C0lYWpoN0qKIILjOqhi+zDRhOGTR/hpGDfkIaKxP7LOioYaEfUbd2gei7Rz2jeJA/0uk2v3Z7D23QToNQ5uoad4k7V3NwvygssKplzJ6sryZI/lyKq0XVbwJC+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pivoUmB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pivoUmB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5C7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788019833;
	bh=fggNdIp4JnUMcL11nvLeWSVHxAtHyRJJa+uzMLLchWU=;
	h=To:Subject:From:Date:From;
	b=pivoUmB4/kT+gBXmNBimPG/GZZTIZt4m8mYRMACibwL2B1MbXff7udXO7F/6Eb49b
	 qeMfxQmg+O8+aso+3wq4yZUnmugLb8fpmimZcowuNWi4sIOmwXEN8BFB1RjRlSsDYZ
	 oAPR9zSj5syc3LATovUfGJjzRx06V+SdWolKJjiC81e0oj/HVJew4iAfNte5DvmTdv
	 P1eOqE3ZDeijUreOHxQCWBsO9KnlzxKR3ayMBD2bXE+usnoxwsGbSVlny0jaSu6yeR
	 xynNYVa00TfniYRpcqapIHw/wGCEkBF97GGanH0CHv8F/p0Nhyo51jCiJNeeQhj+sk
	 ggy1zny0CXjgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA605C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801983368.4221.12312431638193627507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36af80c1ed0b0186f0be4d67f68978b356b0ad2721ddcc688e8a33609b50a66e
Date: Sat, 29 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788019833
