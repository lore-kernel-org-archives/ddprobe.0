Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C0C302149
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771561493; cv=none; b=gn15GH+zd2olnKmYghZQZ0sCTVTm9m5LrYF7o2aspzsrAmBFIXVZWxp44eI9zmKq9jmEq9qI/7u8zdVLMZav6qReELIKvf3I7fvtK8/2ZjDW4M/N2FuaFF9WQXDETeF4rRfEXEjZ2IyBNLeVS8jKn7wSn42dzIgXgRHYKDRi4O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771561493; c=relaxed/simple;
	bh=goptgr08yNyGjqOmhavVr8Gu8OkIhSFezeAYinaECQ8=;
	h=To:Subject:From:Message-Id:Date; b=gVFJJ0FitjmfqUvHL7EILi2S20h7gvvcOxVv72sFvUOt+3sH0QXh/T4uxcagN9b8DznA4FLZovhXrQp6/J6JRVh0pKON8Bnh306b6YH5me1GN1565JSGQW/uPl1D+vK/Fv/MLf/zq7lPgUr6wyYXZQYXgVwm3FOccWqudwuiKoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ur4K9pcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ur4K9pcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF71CC116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771561493;
	bh=goptgr08yNyGjqOmhavVr8Gu8OkIhSFezeAYinaECQ8=;
	h=To:Subject:From:Date:From;
	b=ur4K9pcFsLHN+fcO2Pzgcn+3v0GENHDvPH0otxA3/Crzyu8g+M4EC98JunQ2KM/ul
	 A5KAZNYYDmIRW59xEmaNR5hCAT5VuuqSzUng3yBV0fJ9XrSjqPruuYOnerCQSqE9oL
	 oBCOuPKHeRqfTsnvD5LyXyNb8BRt7CjRPhq0gI/CoWyi1Q0eUxSnUHuYYNEPMgLlNi
	 uLozQR+IWOmyZ1R5GB/doQ0PUKcovxHEQjyO03BzaeVRuuBCISYgiJohtYRUgG5Cgj
	 UoLpLhEVOSFaXmHVvO14uIbrSkPJ4cU9XPsx0cfEWiuXirfgdz4sqUnHfBbI1qcOTm
	 bDIVq44vj+sOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F1EC531E4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156149361.28888.16317616140628764736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ffa96a313896509c2e2f8c44fb88406ceb097bfa8b66c1572fa1fd4c3f0f22
Date: Fri, 20 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771561493
