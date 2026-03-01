Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11976248F73
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772354094; cv=none; b=i34GYmrVUp/hbIkU+r8XolcpVEkhgme6G8lBMp+IWAuGWSlh4/1k7D6AIZlWAUbXkw4dcBR0FjgFKtuYC9HbjiX30C9OnxpQn88Fg0P31PvoqUG1zRFceDjWL6IQgJC5PitBU2PxvOFhI8WV5LoFRACASk7YJk7Yw/1fHn2DHKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772354094; c=relaxed/simple;
	bh=ter8QQYZUvOpK1CbWV1tsMzMTNjs+BQZNFGDKgwMaQc=;
	h=To:Subject:From:Message-Id:Date; b=cGcMuVuWo6H8xqk+yhen7KmHH1gr4dJ9D2hJH+AdLy9kmvbn9S65DMUMdTlm7Pgg4cjymkankSmXDOgXaJrwmibU02joqDuhC2ESGWEltQDM9M/P/s26/b/TjbI2LNZxRu9U9QITqWk+HOhzXWe34wehFm1g1CNY/K1Zu3e8rLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZmoMPs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZmoMPs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C05C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772354093;
	bh=ter8QQYZUvOpK1CbWV1tsMzMTNjs+BQZNFGDKgwMaQc=;
	h=To:Subject:From:Date:From;
	b=fZmoMPs/qkZMYfq0Nqvd508gDjpH64qi5i9a1vvU1Hnw+lCcmtoY972gK6syBgIZD
	 5EoPV2B/sVAjwlZ3xWuGU+i4Dca8QN2ytNmLRtrggZao/Xjtqc3oOmitqEYCj0/4VB
	 eAnUOf7TnwRhiCtklNxJVUA/Dt9QX7xKo/rxSDQP4DXa+WkSGLExOByKgA7+Dunool
	 ea2lT2X3mJdSB1OREJpEcTho9WR+0estaXo230eurOwcfE/5wtRI5VW8NgRHOjYNW6
	 +6UPd48pk16yJ7/UP7xCWVm60xIIl1hhKOY/4Z1Y+GFejSsJIF1ezMxLor0H55WRTC
	 gb8X8BVSvhu6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9E7FD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235409361.27416.13538903174138272920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f58adcd70f10b6b709d763044e7b37173153b4bbab1fc4f1740f3b84bb84cd
Date: Sun, 01 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772354093
