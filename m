Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D72B4A3D43
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789999834; cv=none; b=kIRX7i+7rjA8dXE3Y8OWLB3nZIaW+2KbnMXREoLVT2ewl2YjCqbWHrO+e/j7/YYchOWQFDJWoof7+u87vB6EN1tJB1tSpsIIeyitTP0quhqK5xmIP+9rGGYDqHyGchOLSuX8jKeutGb1gSulcSowwhRSzhEVUeyanFjbldHAAL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789999834; c=relaxed/simple;
	bh=hnERcKGF75Gj3DfpevaDS3bMate5xXi7QuAoEiNx6r0=;
	h=To:Subject:From:Message-Id:Date; b=e/8yJP0DtG3Ma0/TJiDO+62ofp/zhuoFcwPm0wyrdU47rQvwStBdgyKwWlB4aTk4/aEK1FTtqufnU2FMugBJHxOY3fu6coGoPVqpGkEC3mQYtaoUnkLGCuN1GqK+4eGYwWQB2qvtxLyKbSwZnGAvCpvS3Z76erB4ezbD+Tvvi0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CachZd/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CachZd/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05DEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789999833;
	bh=hnERcKGF75Gj3DfpevaDS3bMate5xXi7QuAoEiNx6r0=;
	h=To:Subject:From:Date:From;
	b=CachZd/kNiIpxLYDAtHIu5j51jiZVFwfQKwvR5ZD0f8bYh0SV0lXKXf6oCl5h21B8
	 hJtYV8k3MXJcS40kaYwHEAYhiNLWSsxitJtZl4XSej4inj5fGLK6iR+1nmetvh0M87
	 5sA1cU2R1nmq8cRDz+yBFeL7jjQM6bt5gKLThwzdcTJsRoHGftXR461O6WDNgjS7f8
	 eytmh0x9V65t6lMHHOgSPyGtZ0hNEd3h6vTru04szEiYo26CBz37XfpsYskJ+n3gW7
	 C/Y7F0S62VUUPkt2sdivcnCKjQfWBnCoiItVbLrAN24FbeOVOeYZ4m9ymWsMvnY6PU
	 g1zI91WK1ieaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB69BC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999983369.12767.7320432652473342791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f72520cd468cb82c583793e18765207e2b96d4ba898d06299ee07fd89493546
Date: Mon, 21 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789999833
