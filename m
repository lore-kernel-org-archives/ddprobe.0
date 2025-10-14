Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA501D90DF
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760419794; cv=none; b=QO9dkqQf8R9vLB7g2cQoByk/xmBzfWG2Wa3WH1hD3IutbS6naE46SEYoDxP9i+k1ko3ET/OQtjCnk00wOgZZTsudj8esUuqrtj3JEFgkAZuFKjeao+hoH3r4nMV5QxlKAlSEgzH3bvD/qtoy/sPqHsSrTy1vGrC612BbGQGW3Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760419794; c=relaxed/simple;
	bh=lpzJv8lT7T9c9IC8z2QTPKaDF3ul5TVFIMbN/PtlP1I=;
	h=To:Subject:From:Message-Id:Date; b=f9M1DwQv0l9WfB/SRyge8iBC1q3OJJbOzuLZPiL9odbVDeXOYYjquVuld55yyarAGihs/N6oBeNo/hjnETHFAbnuGGdewW8JN7u2vYwgsAhIDgGqM1pzaim5DbxuKMOKkm7eQMvHla1fwEn7caA9mP86YQ0RCVDIEt+Nf4KXoLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehcZNFBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehcZNFBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FEBC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760419793;
	bh=lpzJv8lT7T9c9IC8z2QTPKaDF3ul5TVFIMbN/PtlP1I=;
	h=To:Subject:From:Date:From;
	b=ehcZNFBkDJJRQ0FbsKmmrIvXDDcMbzTruAiD0/jihoSCn8MSLKvHd0y2RY92r5Vpw
	 2Y1ZX2IQqRKzBSYOr3UNjoVL36e/sQ74QcKszaUSWQfwdAVt1VekUn/NTx0BtPEz/P
	 LgPXaCERzyUwCVc9PUvRevaRDN6eI0mbtjB6ac2y/nYZ71oLbhCFwu47v2rduxHCtG
	 AuM00nEYpM6jxuJdbG7UEOpfHr26YPy9PDLy+gWclFeG4WLpmDOTK2ypXVRnTbHLNn
	 CStS1F9MBBwgDDcoNQ8JBiPppeGyqrp520jEpQcK+IGjq7U6ZoPOSZ68EsTh+iuNHa
	 Wh3pX7ibY765g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9ECCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041979359.15364.17378435766301009809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a68f83be3a9edb4f2811b4103703054a9e8e108d4cc75f52b109a5de63dfc0
Date: Tue, 14 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760419793
