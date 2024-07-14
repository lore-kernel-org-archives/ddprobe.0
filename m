Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CCC49635
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720956023; cv=none; b=TrtpVwsFoGjfFhfZbZjlLAoV1ACkErdhwDAUUVFkH1mWE+4mIrtZEfmtnmOG6984zqqf1Hnce9iflylC5Y7zoy2Djs3d/F2m1R4E54rxCrNFpVeb7A8C5Gs5cgUlgaj+qEpN/7+fcrPLeFjMmiDPy45vskJk024/GcFLT3shSyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720956023; c=relaxed/simple;
	bh=7YlPZ+fKC/2aswONVO4le33pga02obLIwbU0GQmVEzE=;
	h=To:Subject:From:Message-Id:Date; b=XLEjrusxPixgkvQmsapALt54k+jXAZ1pSBH8aamvGNo32lF3h0zOr6SVue1fXdVkP12gFUU50B4Ih3ZsyCE1fwawi1hb9MFpJGUNwBo5/FX6iZunJff7FQzn1vNeCggqnjhS+++TyMvlLA/zllW09cL+Gcj498LK1GCDEP184eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGnblOqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGnblOqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78C3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720956022;
	bh=7YlPZ+fKC/2aswONVO4le33pga02obLIwbU0GQmVEzE=;
	h=To:Subject:From:Date:From;
	b=pGnblOqijHZXtKl6WlvuXTjtgdPJNc85C4Tz06JaECmWhfiQKeIX+YGLABXNW4hYO
	 Fpm/3vMrBe/ofwLCleUY6radXEMkFUAh1iArugbknPannw1GfR85/sbyiGsY0cVWuy
	 RpY+4gq9QC7jXjn6au29Q+nwZ7kym6HOwX86KjLr1MatHpRyH6fOVkQtYp5hnxgter
	 m6gPVyN0ds1KTwjKT8Nl/E11aZ/iP2SC7stMVzgHmoGQcUQT7XFem8vgmfDUqNSTfX
	 kO9cIJubTDx/pmVXbiQ1NbuMICjA4hpReDO6Id4kBCZ2M9d0ZNNvT4V/FjBFaxKT/U
	 bviENhnE+ED2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF2BC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095602276.3228.2815029988953422744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41c99a4c6a1400df4415289b44dfa0f5c531e05dac0367ee02fb89ca1825913
Date: Sun, 14 Jul 2024 11:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720956022
