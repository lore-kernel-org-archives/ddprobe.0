Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E579215055
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766300034; cv=none; b=T8vhzt8TrW+UsnzncWtbp0p4Xzz+rAmOE1NpDmQGzo+t/HLU4IC8b/wYFfni6nfttXUB3HsN8SbzD5t8RAj7yHp95Zn5mhZUud61qb/17O4pGbHiCugZMdUh+7yk1CwANr2STc5GdEI0HUNGptR1d4fZsXgLGCTFsYy/DVuzuXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766300034; c=relaxed/simple;
	bh=0trisw4NQUNY+94+LDEaGGPBOR7u7M1IvK6nLzIFjmA=;
	h=To:Subject:From:Message-Id:Date; b=FO1IxaUfZZiarnZD2RSFWfO2o1hmMGKwgovclLGRQ1rk13faVbW2TUB7szuOmnsMVPINi2QWPAcg2WhkhjmA4d7a7UNPks/egZRu12ien/KMZ++bQjuMHstadsUjMKZVhJtjtd2MbKo3s/K4HyNGrA6uPAuSx8uiZUWySHB2kmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiUJNtXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiUJNtXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E49C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766300033;
	bh=0trisw4NQUNY+94+LDEaGGPBOR7u7M1IvK6nLzIFjmA=;
	h=To:Subject:From:Date:From;
	b=NiUJNtXsv1QvdqTLpWXX2Idix6OqWIQGcBtBirCxGrrYBcfWgLpRylGqMVTFO0poT
	 llVxzL4CukkKYAvJVXA10Svdhm18CIChLr66SK28wbBSWm185WPFW0l+u7ygxUx4l7
	 O76JgER+yfW/mDqmsJBsQHp9HsWmXM0k3Q2nsvBaiM3yWpwnWoLyKn4s2Wztb20ISz
	 avrLDK9vFw13SvTik9+8rdroF41c/vOMTuuNGuFZSYYbn81F8FQ5DB9lcXL2tiOGZe
	 bKzzet0vJP0/0Vxj0cTqbJ+agSEG/uQyLwSmofv3Mk79oHLoI54ZGfD5BFkxiSBFDL
	 irDjd0eSgzomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9561AE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630003358.21501.6496439549512079085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89db46470ec1724b2930912a8f0d083046a0f6acd91d3b10338b9d7dd46fd3c
Date: Sun, 21 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766300033
