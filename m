Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B37E327C08
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779529354; cv=none; b=ifvml2gejYZyrli7zNoZZTluxpgq1GEYzeVmZT+uWUHb6icgScnLZHdrPpnl5sYadtC4AhzmsvGAH1UO5vCRlFYWHFqRP8ae/Hka5cK0HDoqLRTtb+60/0beA98Z5sVoDiSOVZSdPOn/GNv9CNorhGimgWC9nIp+JNJQ657vrbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779529354; c=relaxed/simple;
	bh=znst8H08y2SgLpAe7lRchNKFu1PTA24ywS2Q5PLXvWM=;
	h=To:Subject:From:Message-Id:Date; b=C1Fxf7S++mV6yxrUtnMnJU27QC4uqtYpRXx6T7sx1KbWKA2XKoJFtb3b0OENuj1PQq8snRyEQ8CMG5oUOxrfEj7TrdMdF8+SucSsm2CeTp9Rn0iQP0gK/zUplMmvGlgBfVI8gbMuvS8q7SZpi7kxZCYsyWpRU/JJkrhT2zrQpvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuU92zwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuU92zwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C1FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779529353;
	bh=znst8H08y2SgLpAe7lRchNKFu1PTA24ywS2Q5PLXvWM=;
	h=To:Subject:From:Date:From;
	b=LuU92zwtauC7iDYrmrzEqnkzEfkw7wArJMg8wCjZuZOeRLVDZgTQDXy8COGVWwZpn
	 AvtBqpNBhJOLu0V1sUqJZX0741e35m3rDJ/WS6tyl6s3VrtBtWUMPJPRTkKcgHp3Zt
	 U8+qTKXl/5aSKjMqV6SIih3SFAMtgLm20EACekpby9thHPZWjblzXyriSWawdyMqoD
	 HA26Geg+4ZVMUMo+s4uP6uVmpj/vy29RgRlLrXuhcwKoDE6dguwn1UH9u07vfzQ4Mr
	 GAXafBFyxnXnESDHyLnZnoZxYyaTxbpVAyBx8R5AHJLxFyS2CFOqHqbS67GZzuBmlV
	 aQ4VDALDDiRYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABECFCD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952935368.2492.7419824853980142712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212ca1ae00c7171a20a5f86b47ffe11a9769ee8a5ba4a1e98cc37e6a5369e39f
Date: Sat, 23 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779529353
