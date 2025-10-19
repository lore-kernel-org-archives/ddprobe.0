Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E758354AC1
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760858394; cv=none; b=JYToMXfDpJdcXFHKa1THLMLLJ8p8pqdh1otqOLzaL8xDCblcvvBpLVezroMxuBLusFFuXviiq0b6YlHEVCpqq336CuCgqeXeazXQXBKV2MwavcBzovwpT/z00ZJ6qvaCz5eNFH//rrBkST94pP54ChA/z7IFUlpIcuskil1mSHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760858394; c=relaxed/simple;
	bh=LXFQ+Ms4YEgc6i98RMKFUhg6EXp0HED84TjpeylJyI4=;
	h=To:Subject:From:Message-Id:Date; b=dh7x7PpogaSWzbuCO3ah9nH225tuCxOD2/AaOoIFZK/g6HcAwRwp+LUVDXnOFSaccdIOh7ofKZx/Hk+3z/9XLCkKR17mb50K+RRgl1RsVggd1m7OOetbzqih5jcseUGPBLglkOkB+6IkmSYm2oTcDZq2qJTYl2fwiQXbPSFzFh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhbmTYff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhbmTYff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7121C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760858393;
	bh=LXFQ+Ms4YEgc6i98RMKFUhg6EXp0HED84TjpeylJyI4=;
	h=To:Subject:From:Date:From;
	b=QhbmTYff5CCMhfuDUD+hT9GrR48+EJKWGOmclwkp+dT+rAP+TIip2aHyJ+eoNGNe/
	 h2ACpUMGhyYZLTC8jfJPvDuG+6YoKi8QWcwwVs/9FRK6K2Eu/+Um5Q22a6t4mOE1D4
	 1BforUs3gihcbmZkadqCCcpAREdovaI/6JXV5ge6U3rpSSywQN6BbebPdhEhrjlR3a
	 WDspctdDUjwOb/VUVjed+T7gubF0zQLVQ0COEj1H+MxP66FusAv0iHdLErY9ZTyNbR
	 7ZBT7+Uw9urymn7jBr3mT4KtXv2DEGVc5PeVNT4tl9l5dwBiIgZIwgufLy9HS53LF2
	 wZuA8rkDDZGfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96149CCD1A7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085839358.21988.7220159480102053451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea40770b150f1fb8467d8bb457fae38013f33cd2a9634551cc374a020abab44
Date: Sun, 19 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760858393
