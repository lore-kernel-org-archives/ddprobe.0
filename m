Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4DBEEBA
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781996194; cv=none; b=LG+tultLJhRravsnUzIxHEESVEknP9bv5jzxmdsWc4RzBH8+x0sSgbyI4zdu4tctMnLQtwKLzyFkuY2uAunjc6GPkClNtfP2jsaBvopCqRRiOeXV3MU15veczrXLG/hgMIEPmX1wWpYa/UI1Yhp5eNlNOUpDblIUAKUyPkd93WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781996194; c=relaxed/simple;
	bh=5x30NUyACpzNTdQI9qyKTQwQWS76Taj5B282OJRMFF0=;
	h=To:Subject:From:Message-Id:Date; b=h6t+vA/0EWxU4a/YXdBHNi9EhI2A/zcPCafg8IphbOeXdgSLMq30s2YkhJVCceiny8abXtakzOZ4uiEfjEZVPNwo2gqXGv3e/lRLJnNL3eK8KLQIkm+y9xCgIrlTr3DhMio5dxx73ExLtyoanBTHF4pEgumvMnyHQwPijyWStUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5ihr5Vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5ihr5Vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A07C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781996193;
	bh=5x30NUyACpzNTdQI9qyKTQwQWS76Taj5B282OJRMFF0=;
	h=To:Subject:From:Date:From;
	b=E5ihr5VhbjtsCqSIQfX1aHDz909mF2ztbTjCWtyIOp40/xyIwS5VVbiFe/1eBwljn
	 k1nU3i4AKHp48Q1YELDEcqL8mGnyk5uq4cAAWoocBfy8om0PECJcszhf14zudD5wT+
	 zU+kBU9VaC7//cqD3KAeLKY5K55j/Ky1IaCe9C647S+PyGltRu5B+9MHtr2ct1W425
	 erBbPgtG+PLgEl+HUHGFgLsItDVwUPflBgT1Ug20Bnwaz68JXNdl4PX56xd2gbQJEM
	 2KJ1+jHOHmFCcjtCY5+csQlruMzht4myWfBTS9SO/R7B4qE+S85QULOASnikMmkaRr
	 BdxZ9hT00hdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8558CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199619370.20010.15879305324446362268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11871382e56bbd185a021bd3c791b40494c02b1fc4434b32b0a8814f428cb15
Date: Sat, 20 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781996193
