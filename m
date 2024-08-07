Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D8D163
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722989154; cv=none; b=jeaHNDFNXEz7O78dF0LNy91MttdV3/WMIZTJTsbhavYoMnJUqzL2SPqeEVAeiwVjIkx1//E7bpDi25gnfmXHg/RjIWKgrpP0gVT6Fjw9SrIm86/KnUkIpgaxZwma8yZ1rn7i7O9luAnuP9FowU66fG9dsoI1ZoN0vzZABWdSQMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722989154; c=relaxed/simple;
	bh=w24dpwJtXYZKLP9GEmCTsYWx3K6y97jF8V2dvgqzzGQ=;
	h=To:Subject:From:Message-Id:Date; b=QHYj3y77qCQG0cSJ1d/FRQOEgyvu9hkqycXpqV2AZDElRD/NoqgyvuNYiHfahHKXfO3fV1SLZmPwZejAyJ8Bpbk19AvsI7zia9pUs9dvG2BDKC3Dlh8w0LslbONr7jggbUDAYnanNDLrXTIHETso2ZiRWxiqDpIxVAbFVlbaiLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yq49Vel2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yq49Vel2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA427C32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722989153;
	bh=w24dpwJtXYZKLP9GEmCTsYWx3K6y97jF8V2dvgqzzGQ=;
	h=To:Subject:From:Date:From;
	b=Yq49Vel2PqQn28V5GuiFXPbhr84msNBOGx0zPXKSB98T/6Ge/gZrv4eOuSbBDH934
	 t1Zx4IAZZQKKcgFuIp5OGNaDQDWypIYxAp7VAofYjRhFbiIOGr/kL5Pa1vULtBcnNl
	 V/xvWqXDGQVtZMLZiHcjMgYXwTnAH9yWnze7JioZ/d9kqQLnM9KPejPHyR5wEvtGHm
	 yMKq1RJ7yl/NlSU07gGN+y+9zbe8lTmAC0HPf5hvLtbLIRmm/nTuJr/ty1+LwzQ6gz
	 4dQZh8trerpnq3i6wmxBim5ZTQadEL9VS/2Zp52HIbj0MNbEc12hwneY748dPIdGmB
	 D4FOlzYO1cYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F6BC49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298915363.1167.11789488788917645841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2290a13f7eda38a0163eb9a08bb19535c104ef670473de9b63ea935be76ffd49
Date: Wed, 07 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722989153
