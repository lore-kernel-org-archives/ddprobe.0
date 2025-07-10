Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE7E18E25
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752173995; cv=none; b=iCxtOdUkIUzqcAMGWzvQ0CzN6iH1YVN1YJRTceKrG15s/anKAMdM/wOgUgdi6wPatCDTEalpYfHRNbO6Naj5EHtUMeyU+jobXKdUfSzXFrawCfEqukKt3rNk1X9c8WUW/yFd0b6aoD8h0V1Cbap9xSo/4iQeEbQP7gSFQLfg2Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752173995; c=relaxed/simple;
	bh=mFifBoVcYK2kDLIiEqR7vHGDVt5gWs7nf/rXwxo1Xis=;
	h=To:Subject:From:Message-Id:Date; b=qYnpNfnFX/TeMT9uRLKJ31BwUa527JXn/AMUQqJTpoNh0Mm5cOMfN5HSiXwtsI7IMEN+rg+jE40Ukwgsb6hsmac5LSHfVuC+eeDfkYWEDs/HJNnf2u+whpU+NtY5AoCLg33ZuT7TEjrA4YzzLIAtSV3AK/zk9rm22LkRXzhmgHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVLnvqD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVLnvqD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A082CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752173993;
	bh=mFifBoVcYK2kDLIiEqR7vHGDVt5gWs7nf/rXwxo1Xis=;
	h=To:Subject:From:Date:From;
	b=nVLnvqD+/K0LybUGffIBW1tQ1eAbVtEaykSBu9qdqCoByQWvIHTcAE+jM4V70WgBv
	 unEyi+8ufIMIer4jQ7SgvT7ZIx5KHlbA4vKoY5H6MZVWc8cWLtXCirbaOBK+ID6ag1
	 f+Kxpz9OiCpE4A79caAONrSkjpp94ttg4OeN0Of64uMr/0U7lQiygoEzE7kYU/q8HL
	 jJ2upDBnLrzFtq/TrsZUShtQf/I+PdfUrROlV45kGnDHMmNBZ5wTNXIvBjufkA3pOF
	 lKj5yuWjtY1jCc7rlVgfbCf5PRwCo9laaltiYBK4tiWAfom1K3Nlt2KOGc5BarpP/F
	 taonL0fKkzE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5CC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217399358.27837.8100219868483055791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1beec1432fd1169ad2cea4993d164baa68853c2e4a98f5562c2ac17e9b67b9
Date: Thu, 10 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752173993
