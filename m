Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5113B2F7F0F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779163834; cv=none; b=hNP3UMREchFVM5eE9k0tWD9q6iNTYBNGAvkI2+LvzjDl+6i+/T5v+ALBJ8kwzWIX2Y4UgBWqkO58h8z0l4YHV+F3cYy3ivkxgLwE6bjCC7mz1jJCMehvfPqa2FkXn3v5kQZob7wYeDMd7JtZDQxBH6RjJBpjI9BGEZuR6aOn2qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779163834; c=relaxed/simple;
	bh=l1KwyRE8AcTIjMvzFgzMDQ8h3ENyoF5OWBeNU+W0Kzg=;
	h=To:Subject:From:Message-Id:Date; b=bbjk6X95F6Yw4AlGA5DtTQyGiIUHURx+3A8uWVcay40fYRc/89VSaGiuikEPGNImg9ybBwn+ieZhkoCXvpUaPBmgYAYeuDyhjk3H5c5bymBV783n3343H8YT+Uev9JOwtsAZSnnz/k4Sr1NuLLUjUTkJgH4UGFsTMFk+xS8bzV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTOSWuFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTOSWuFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C1CC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779163833;
	bh=l1KwyRE8AcTIjMvzFgzMDQ8h3ENyoF5OWBeNU+W0Kzg=;
	h=To:Subject:From:Date:From;
	b=RTOSWuFm0P1opfJiqE7h58DJefkQTAUUEjKNxubjh3Uah9AlBnEBWnVUdm4XMhH2n
	 RNF1puR2BQmTy2FpSiMggmeerG7Pysq9FbbFDFNVooBIMGrtf+IBQGpPWc4v5H5ZSH
	 HFE8sp63CEoJB3Zyosv5gYavX3Txx8v4nRgt59a4DqFJRWDxbHCc5wBL2M8qFN4ziP
	 L0McGtB77V2NB79391fYe1aAQc3qQhsd/Sj42XEnc9+uL91L9x3OrPFL75OwZSLY+m
	 z5/0Lp27qVpAJov2+pR3w3iVaT1T7jPWq2pAUg63ub273abgMqszSrwXtEueCpRH2F
	 NrLPG5cfW+QIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B9ECD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916383368.10448.11623730949401089905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44fb2b5b9b8ecb64628956824a8b6471183ffe44a1bdcec7fdbf96e348f5c6a
Date: Tue, 19 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779163833
