Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4024F377ED9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781355394; cv=none; b=j9qtrcgrgo9JCODAadN4du44+sRuT5VmES5BgsX4UDPuyBSWkSudzLKb3PrF2uX+PHLeaTdj9CXSY4x5J7sPyYAMCietSuGo7ue7p2xpZKmAO6LdSdPMhFqrE3+lZkU4dlgWNVAnrk0L8yPVASoSzSgWTLsl8toTeTHwQtr4zHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781355394; c=relaxed/simple;
	bh=/O2foYGY0egFboIYgibMtcvJ46WBp6R6m7pOe9D01/Q=;
	h=To:Subject:From:Message-Id:Date; b=ujnBIj13HsgmPyh1N30IEmkbzxaC56KD1KAJq5ObOcRVegqg+RimxRDaatyUZ+Uz60+opBc9uj/sQuJtGFZO1Im0DMPbvjJGuFYOlwkJsVGGDNYrcR6YsEKRxJpW6peNorZgX9QOR4MCAQ7ZOyCUbjuGDIZpeFnwtJckfCb+2h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9mvGzv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9mvGzv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F11C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781355393;
	bh=/O2foYGY0egFboIYgibMtcvJ46WBp6R6m7pOe9D01/Q=;
	h=To:Subject:From:Date:From;
	b=g9mvGzv8zwMV5K33VdrdG5ma1dlcvCCCwOJ3UwyPgF+P8fHiuP6G7UvQBMFgm+PzO
	 lyIgn0awJfKf2M3aR6RWHbQyCAVxgC5yDlOakdlpEpfbU5XHFKGvgSTLRJiIhLBSRL
	 gkxww3s8NH+/FSmMPUyr+QM46VUh+IImcN7uSl0mNaf7HDlM12ElIEEz0zZFtoJn8t
	 LltKft3Rw++jFlWhAMWQIgW3KoOEWTH6TiMTjhJ7C84T2arcpA5vBXvtzEEggHKJDz
	 IsYoR6tG4adDdhY97aVYN04palPW/cHo5IdYTswYFGxuuDKc/0sANM+4NHj7MTj3NB
	 OWg0HHqmxNtNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8276CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135539368.6615.7302246274388059260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd25df2c46ead3c73bc70e645443b34b861d0de326f719db9e8b6b3227d83dd
Date: Sat, 13 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781355393
