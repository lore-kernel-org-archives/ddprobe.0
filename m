Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D97145B3F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775468734; cv=none; b=NSa+irgqobL/PgALa3009tUh7e58lAEWWuZFfczBhn4M9n1X6JCvCa6QN5jMzmAxmtjaHuaniY8FrIMo16lEySjW68rSr3sCxAnUz4jDsB56iM06zQTrvyIsgB/g1co1BWOSguqlGaHfmXZD4QF+wjv+vYuWJjd8GqZ39WTei0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775468734; c=relaxed/simple;
	bh=Vhjonbcj/t16yJ0ZN+AB/84J4mi751j8gDpnipt1iUg=;
	h=To:Subject:From:Message-Id:Date; b=W4algKj72vQ2kHiDHMgxK9gLHRI54ErZHfHRMQCkBVOaakZXeBhTxdBxsH9MPUDSNcJvs4fhn/1cABMEmrvzsR+wz1Ayf8jLFtn4lHTF/ki7s5KtD76c/KW49DZKWsX4Qh5NpTpXMWbqtSaU2zqu1cr1fCGupELkPzdAe/FRM5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peEOhKP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peEOhKP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C846DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775468733;
	bh=Vhjonbcj/t16yJ0ZN+AB/84J4mi751j8gDpnipt1iUg=;
	h=To:Subject:From:Date:From;
	b=peEOhKP4s83WqlkfhvDViRGWNuTm28vkPVCaniPH31/f4fjNwazoySEbbJTxNBNfp
	 esiaiuulCy9wXv8fOVWdhfNvZFC2lLni6+U/TZf6ey0JZc+Ebvr6iBt56kkZEta+ub
	 Tj2uG4qEaoyUGffsroJL96g4evZRHyiN9aAYF/48Jhw1/oUpdDFC1RKeruzNCug+X5
	 TLh1NCVu9u1XGDtQ/Pqb2/lPloZqY5l4CbiOWj+sdaBwmnuB2zMIM8/ghJNZxLWpir
	 oJwLX556a4Aeun4U43PBSy07Zjg2BvGiJk8AqSIx5AIMpBqgr3L2shuZri64Y+cW1i
	 9Lb6Sj/fHh8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FC2EF4EC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546873372.23626.2544329465938295176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9d00e713eb84d76c3ca76e1070352029249751f94988754ee669244a46b866
Date: Mon, 06 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775468733
