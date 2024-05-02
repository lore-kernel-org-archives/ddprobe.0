Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B6A1C2BD
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714623143; cv=none; b=GX0k16osDEyJ0cEcCU/ARU9f2oiXjgKl0CbpwMNfkeyA6nu1TQllz92SrpWoz11MFr44nxO631SkEPQLj8duyMoblyZcwImoIhlY29TeNYkFHPtsg4+funMMrfhd60HP+uFAADGNbUbGHSLuzZRA8pGfQ2IJsx7Q9elNzNEEaGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714623143; c=relaxed/simple;
	bh=6MXM8vGRo3pLPrelxK0owjnBH5sVDN5bg3BmQjjzHng=;
	h=To:Subject:From:Message-Id:Date; b=t//2jz5IiVsVUQcmhxjroJbHuEtx6QxinR0imWzvY3Eb/R7AMPg0cw7z38ldgHdTwZNf4YiqzK+xWaPaataNg9mlM45O041UDJSzJ8JiPTirmSCEJJAy6HfF2ZgsAiPXcUSd+LpZBy4V03Gm9x38tXhPQ0idPKnc4fyjx+VFh4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/B4bnlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/B4bnlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FDAC116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714623142;
	bh=6MXM8vGRo3pLPrelxK0owjnBH5sVDN5bg3BmQjjzHng=;
	h=To:Subject:From:Date:From;
	b=D/B4bnlFN8sFnpaBEQ7EJ10tJkgJV0itMRIQc4ZnYzP1ilOMheaexencwhcRT6nrh
	 dWrHt04tCBQyST9paPsZf/UgaRakYCpcmYzyILZ84/MVbh1AyeplQn+Va+1gTn4XCm
	 wXz3/uXOhf5pTaSg3o7uSd3GadhGMf4ayrRGqN84DK/eZ+Stf8Se2UsJLx2MTU1gMU
	 HObeXbDKbDHuSqF2gNCuszPB/j4ozTOBp7MScRVQ8mShlMli8l97ly/U9i48176M3X
	 BJvVLvrk6+LWbRDyFm8SR9Jx/76py/FnzVO4CZJJrWSIoLP2Ol3yPbCbfoCR07ISDG
	 2xokef7jZ7FIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED93C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462314277.31145.2269478698478435257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfbcabdcaf08920b1feea4939a6579f358818ccdab375ff6a1119161eca4ed2
Date: Thu, 02 May 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714623142
