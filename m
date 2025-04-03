Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B371A5B86
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743724195; cv=none; b=MFkqmxysuqqO/imPZeFKLp/RGYTG2tnObTsPkbyuWwoQ5U5CdnpcI5nO4aNbB/TSLQHK7c7kiNiBsD8k5u+kwe5t4QgiGUe8hqivdVbhSuxICmO7JUfWb+MboWJD6X9V9RaGokG8ZsmvJHzO3tPdLH02ohbM+DJWltAO3zJkITE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743724195; c=relaxed/simple;
	bh=MWTug8PVUd4eo/L31n0UKG8SUZCA39prwW6K4rQyaHI=;
	h=To:Subject:From:Message-Id:Date; b=BQ2uahx1qK/6pHUuggPjtbGV5SHd9jCShTuz15n1s1kzDv9FBw5R1nokKrvQz0fhQtPCxC3/AA8x+M1Vnr3swKZS6ACTEcylxNeJhmzm5kSbnRsPhscwZ4hRD5QMcy2cjHbyp5/jg2CPqg1KpdcP0Xl5qMjQZW+A8mx5BSCRWn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeeQqJ5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeeQqJ5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743724193;
	bh=MWTug8PVUd4eo/L31n0UKG8SUZCA39prwW6K4rQyaHI=;
	h=To:Subject:From:Date:From;
	b=CeeQqJ5PvIADVcEElMWY3jVBVvMfKrQmlXA1/0625Nd0KkTyBo2z+s5zlC9aBunZZ
	 zRkWz1RN5kZal8Kjr2zqykJCCU3Id1lQGL/bUWG8880AeuoGBNOp+kp/QBVpzQktmZ
	 +OPJx1iY6PwM00jSqicZZs+HxetFaYml4towv6q2Mzj0RiBk+AxYHtliWays59fiPy
	 fB+lI3uUMG8dKjCtimUz+/2k+HlbN/28oo5oqXogL/UfouT2M0EEYuGzTJsk0HgFeX
	 ffWxm3NAbvvDUe8CIh3jwIaLBBkSXFk1HrE5cLFNDOPm9NqPSv4UUM0mV1JxVDuThs
	 bIUMXgwiOvflQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9727FC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372419358.5028.3268904056844549340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02809868cbddb42ed6fced33e4de774cd2bc762d8ca8ef2b01229029c70bce5
Date: Thu, 03 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743724193
