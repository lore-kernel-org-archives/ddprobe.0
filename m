Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C95BBA3D
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786173634; cv=none; b=WuGVCIqoyg6HU4spBw53W4t6zel5URtxMVWiaDxNL2KRPOH0aouANI8I7I/9GkgAuC/+u8q5DCptq9Qh3vQStwtkQsBJ3eLncmPK8/3ZH9N3DIC+53HMmFEmoEnl+/eQHUkQ2AHPN2IdzHselj1sj3dU5ieh+QeOMZoZLOH6Sgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786173634; c=relaxed/simple;
	bh=Z6XsYwWKp/mnGdgint4HVlxi1bxS0lY/+6LN5LCKVPg=;
	h=To:Subject:From:Message-Id:Date; b=MkZCrxdvdJqCzmym7qR2auG28K6DaoeazZpIM76WgumWQyD89bcD9iLluuRnbuvnkrk/+luVShhKBG1QqKpFutJXJ3VXFGiOU1LL/SprLnemlBNhGlfE0BaFlB1Bp7SubWithINP5FWfo5CygpdYBeaUyLsVYYHtsqkGqKzdDfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiYBX3Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiYBX3Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE27FC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786173634;
	bh=Z6XsYwWKp/mnGdgint4HVlxi1bxS0lY/+6LN5LCKVPg=;
	h=To:Subject:From:Date:From;
	b=IiYBX3Z1Smmk82gO7Afg09OsZqlxzRTf/YXOESV+rY80R34erSKgjtzit1+5aintg
	 T7ShmGF81S9kctia0QvmOSzU3PAgkHew4pR26r3zXnSsnwH2qXX5qvvrgiBdZYUyKK
	 A4sNCBDiOaMVu1S3h/1tyryT/T/DOKu/N+fhyoEbG8NNgt95NdhWrd+2TJ4AUKIIOK
	 ls+jT2VfiYEzk7aqTXRUvDAqrxe/2EjShx6SrOiw58X7B4AW9QiVl7IWWhn8ThKq5d
	 fbfBCWrtdvZseY6tnZQtJh9BCl7TGvR/8i2331+aWgCg2+nJB+P2Inajn8IpqCPGvh
	 K47ynv7U7VU1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37B3C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617363375.22435.17759167974889578642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d43b86859caa1121fc57633ea8fbc5cc632ced5e9a96075a3b189f14c67177e
Date: Sat, 08 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786173633
