Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBEB2E6CB8
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785504634; cv=none; b=NJhFCnTNCu85Hq66hNXKlfqYi5ZlKhyiL+M6SHxPIJvd8NnLtwdfhLMPMUyxQy9Jm2RASb7OGenL8Age00dmlldNW9emztkkfKgM5N6GvpMvxd9WTuRfdKJJ6KEbGx/4vedgiSpZeUCP06MjzdzZH5rlNPAF74BUAsxmBS06TTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785504634; c=relaxed/simple;
	bh=svN4o7VWcZ5BsJ7DRR4KlVfX9QFJJpWycQbpIGTHJ+k=;
	h=To:Subject:From:Message-Id:Date; b=LT46VSIjUzJBHEQ4HGmd9SrjlFNfsA10O7ugRqnytVcBPmGbphivRYnIwDpBhbRYbtEmng7ig337Y9B+3hx97DvehwP+QskdehMfPcGpMC1/dLP/sCpCDHS50SFKuqPAUzgDBKa0JV2SBIvYWKTukE+Y76UcoNcSFushoOauDBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USNmucs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USNmucs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BBDC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785504633;
	bh=svN4o7VWcZ5BsJ7DRR4KlVfX9QFJJpWycQbpIGTHJ+k=;
	h=To:Subject:From:Date:From;
	b=USNmucs+v+qi/vrY420kOE5d6OOk+SptoYIgg5pMT89kJqF3aBLm8n4YDMKGd5mAI
	 g9+90eohEVWl4Inks1wGPe2sOGA4SM5PsvYLcDAxGzHQrOudE0Z+XIl8WfDUtYGKCf
	 BhGgw1vpe9CWNVZcQI3J1/TpZR2sPXbQ0jidc1jnZTfH5zsTEagdV4DAXkPh2e+pYE
	 POTdU199aU/1SWGu4B+LSIqwjGWyGbpncvDB02y4BSRcXLuligsQmlmBRMLyGZQnKj
	 SpwWHKBskXaRSxDkVca2fPIwk9dNMF2t1Gb+PlDXEMKTGn0Bxaj0OsF/+l7+RToAdX
	 nG+2iFahVgMzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8270C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550463368.12619.11248315222162666116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2401a222b84bb1b3cd26547e7c8235eecc57c0cb5d1653c2f28c5fbba7dbea
Date: Fri, 31 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785504633
