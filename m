Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C72E6CAB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789026634; cv=none; b=FORTg1bshCNLKlQraF8l2PG1T1jMbotVilMGcZWuDu12gz4Wv77yZ/Nc3p5ynpe13pI+JguL8pq89T5/I99MlLYFHoRFuyoU5NO6knTv7OQ5zrOIZwHafb3r0E0gTCAscDCGPnN5T/0I7leh/HlTm2mEFNjvYJoPBl1MEnu7avc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789026634; c=relaxed/simple;
	bh=guz643z2fGx2NjelTBPu1vfidshHc0FkN2urKgJ575Y=;
	h=To:Subject:From:Message-Id:Date; b=l8mbodvoLkaFvpNQ1UTETvdwlxTsMNkC95TsmKu8vYfiAXHr8nGlpOvw//E/W+cTS6WlhQJOn8QqFXhFFzMhBl1HLzbTgXPkgn192uU8L/KZ3LsnPnkmIEsFWtgf0u/j2oKWZkRVT2xfGky7nJ++xQeklfMPcHT9XJn/QMUBX9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkFc9ltf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkFc9ltf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF20C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789026633;
	bh=guz643z2fGx2NjelTBPu1vfidshHc0FkN2urKgJ575Y=;
	h=To:Subject:From:Date:From;
	b=tkFc9ltfhgq7cxdouGrGhlhNh7iRzeUPDXEOTQEqPb6en0JTB3tveI2RKRsJ13IEy
	 BIYwJMZmIRqjkI/Z+sskXIAk+PhHqoHGYGm1y7QFS+sDV/jyncq8IMta9hSnZPX20R
	 UTYiyleDFxsfePHEQYflN7nIW+mQeHgFHWvEsCn0od8disWYyUIPcb77HS07PE2q00
	 eFPffbKHoXJo4TmRk/H6XOXK/rnrLywuylGKqaXBSPPaChtMemD/Q/txkW/iNu/NZ8
	 eTf0dRFAEB7F/SSKk3Jm+lATL34fNpxHSuH93sT2F6ZtmD/JN5TMlas1rlvPVmPFCX
	 0IMiha0zPaUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6FC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902663368.17370.15918800062735971162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7e9b6ad053385fba615e42bdd8ac6e535e8eff1dee0fbc23673bb6f0a7faf5
Date: Thu, 10 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789026633
