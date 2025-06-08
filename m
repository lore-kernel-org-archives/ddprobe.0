Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AC215D1
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749367194; cv=none; b=a+NPxpWJqFe+YqKb+Mg9btvgvy70C3P+ZRAPe1l23uvdFyYWmoemO1cnL5tUnhWs9KEeHAL75mn8aPYn1UOdAf38k1Vb18ZJ6K5NGvzfasy6YAQN0/KpRGhoEP6VFGtj8y2bWsEmWMMa/J8wkLiFa7uM8AE51emUC8U4CeioFk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749367194; c=relaxed/simple;
	bh=RP0wOx7UgG9QcIzLGC8gP+XAserpkgaHs1HSm2xW6tw=;
	h=To:Subject:From:Message-Id:Date; b=u9YQ05Pkfmr2c7LCS1DiXslcH4bU2twpvimGTRBqrZxpV9SbIF9afh7h/aiBq8srogUlfxaD6K/upkwt6xxmN79iWiuxwf0hVFQsgfzE87uVFOyfCq076waLAKoaGkyJXC6ihDPiibD2qqrD8/vH1XtibKuSsbjFu3leoGXni1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvLUatFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvLUatFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A255FC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749367193;
	bh=RP0wOx7UgG9QcIzLGC8gP+XAserpkgaHs1HSm2xW6tw=;
	h=To:Subject:From:Date:From;
	b=JvLUatFRHgFSEyqdCTEc/r0Bt8v8/W9bQv2uk60lKfhWfcXheQlLK2tMWHLBGq4bR
	 NLAcaRTw3eD/9WgX6NradIA6tJZo0b9ZvyrcxQ75Z1lmKlYQNV0lMPh2nJ2GUEu/R1
	 H1NPUTPNMInuqElUUjVpci9Xzicmi7yCyIycygNDwbkghR5YU+3MOCOPS9oCwUPLqG
	 mwpq2Ehfjj+1lZHA4yH4TUJ6c8IZT2KWDGypeMT8pk5pb0SY8TAMsfcvOsMSFQcM52
	 5is+b/IMZWZUA70a9PN8PXnyxJ71AwKdL1OjD6f/cao4DRMI+/Sjci7lsG45b9/C2K
	 wMLoiiWDFvryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169BC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936719357.27782.2778311513607040262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99b446cbb904de03ff97ee29aade59ff477a26155a6ed511a4c0083f9c4c9e4
Date: Sun, 08 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749367193
