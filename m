Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5678517838D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720049123; cv=none; b=sCaa2lMJnp6gKUrfk8zaifA4ZaUT8IVFDGBJKF+OQ5Z09VrjX2K59zGmbQjOEcBURmFhUPu60Gv07uqUVHmUllb/qtsCUk9fkZxAXjSgkTkMBCyPfzUdaB6/ZYNRlf6CQ5A8LhecdM/hy0pxRWr6u+j23jQNydy0LTh4F+b5co0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720049123; c=relaxed/simple;
	bh=EgQjDwL+zgdd7w94ndx20MJmMVtfn+t9C/m9lF/emA4=;
	h=To:Subject:From:Message-Id:Date; b=cvNY0WTOb2frjUTHzVi/3R4JfokPteTkSJae6hl0BrFLU4YMQZWDWEPjlF/EKxipa3dDfmzTGsNQEWzFAY5/4KnMNJVieVphC3GKqVUGlWWgpDLpYEfGeW3qEfqu2bHP4J9wQxi9S8bsMXvSXYlx9PxBbk8p6PDF5U3ow2lQktE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlVZnh6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlVZnh6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B1DC4AF07
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720049122;
	bh=EgQjDwL+zgdd7w94ndx20MJmMVtfn+t9C/m9lF/emA4=;
	h=To:Subject:From:Date:From;
	b=dlVZnh6cTaEzOwM3Usg9qCCOr4bjd8QrPDFnTT0p8ud5tnrjpu5JUNd3vormnWA0E
	 R7AHYoi+gyhJWO53yeGj4IqaptXpQ9th3UvpGH/SstvQKrrgUlRdQPXFDz77+SUFPs
	 UzRIczfb3DHMm7e8/Wv9ODNMdG7Ky5TX7pGf3sj739yaM9/+3d/DJk+e4/rJ2whHqf
	 JbS7IzFttYXaMto5zdRLmxgCyYF3OW6jMbNJKXCrh4u4giQf7nb9acZ+TSkO362CiN
	 ysjSIXFwH8xbxd25JF2Xb7i38YTHU1zYMi+03TomnnG/n1H+sTcmFF7eKpd0r92EbG
	 kdzcBGE+dN3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF11C31D97
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 23:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004912276.26777.9948357373094439619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75840d9d818a708eec89033a44bec09ed67618175b4f301c825a33d8c52b72e4
Date: Wed, 03 Jul 2024 23:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720049122
