Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602105FDA7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788240634; cv=none; b=k9qykbTtKh93FSQG5v08k/aMyNKvbi3kuHpWXr6JCTse181s7DLwqkfsop2ABQAFiNDbvKlw1jXkOtXXWmVbPKVSmLGnwVQM2mVijyr2qRe34iJNcfDKxAmQtPv7EIlaa8zCd7A+3koi/Fe9nct/Wo1r5Rayj8rAcDa54F1lftM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788240634; c=relaxed/simple;
	bh=mSR7Nn8u4Mxyeqm4m0/xLgnATryJ2cl+i55DIkpzvnc=;
	h=To:Subject:From:Message-Id:Date; b=YlQXiAAsF3qsHqL11DemsqD4aF0f64K2SiWlN6CsiXVrSyvoCHtFl8prunE2vw3VhUE47ZabMD27NM8ihphaB0mT3l0ua96s8HEKPUZa8+zhcb9n12dOONdsxG2jJ+qcSgEnifBPo7br7Pwk5teyPosx/rfaDBBYixg3ZSXG+NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejqYykyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejqYykyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF906C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788240633;
	bh=mSR7Nn8u4Mxyeqm4m0/xLgnATryJ2cl+i55DIkpzvnc=;
	h=To:Subject:From:Date:From;
	b=ejqYykyolFxuCDGbIOB5P9+uFemMVGe9NJ4kIV9gXdDmwbK58wlzoAqGvMosHLIbM
	 0Odh2O6HKJXXyMTp3lQa0q00yvOwFvOAzaTccGkHECiljf6SQWjJ0nVBaT/4/obygc
	 5Dn1l2vjnGPQIRQantr02XdRn7rSVjw6H+dEehwaaP12idtO6wOgJoXN6xLrJngpPt
	 zbiqhEHJOAugGRfMCKC6CjwI6qUd2EpYqTD9S7j/rlKg/g0+PVGMg7qFLsEtnBvcz/
	 Ao8Vbd8iTNt6EKbret0mwpsbpaV+3gpZt0RFnbvxefyNWVzvX21e/Df4wzHiwJNZmX
	 QkXGH4TtLYwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE0C61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824063368.26698.13251818923483994790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5551ba732e1315356e8e58a43056189a4fd2147d17fc04ae43eddedf4216396
Date: Tue, 01 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788240633
