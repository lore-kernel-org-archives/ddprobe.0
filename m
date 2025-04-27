Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3005F1F462E
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745752194; cv=none; b=aibQNbz6h7+BeayPEF1uoNH3dP0fydL1K/nTdWRAliANI5yco6c5I19k/WjlwZr2+UGYjGA1WZ9OcoS2fwhfzGo6StlUTilvsUfNaV4hNl2LWlcoSfL1VncGaheE2GrXcaHacpspXOtZ76kYKvv+cIgeMmM7ZvnOy0DJJPFjX80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745752194; c=relaxed/simple;
	bh=JQX5OR1z3+m9VMTsGbOghIazeIkUo+2T/JMn89AsD1I=;
	h=To:Subject:From:Message-Id:Date; b=GRdvqO7o1MkYnvyTcTeWpc2lOpTxQiC27IFdo+cinQ+rb9V4g4YhIluD0WjXNN79JXYyK3I1FT3yP3GZ6/Fs3iv153I/rd2w79WQ/a6lPbi4xtPowQ3ipjIcLoMxiVc/Z58/lMGxQA6rpvSVGD0Tj4sFOWisWgU8zSw6DQgACSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsT5sLbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsT5sLbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745752193;
	bh=JQX5OR1z3+m9VMTsGbOghIazeIkUo+2T/JMn89AsD1I=;
	h=To:Subject:From:Date:From;
	b=RsT5sLbsJ58qsI/WZajIhiQmKbv+Rimsqtz5nmJCKws4Itap+mlGs3ZMC1K8KSXHW
	 Vpnt4fPlFSXQ3SzG9lRC5TG2m94iYA6FWSkqECKWwTtKmN+pSa/oFdU4gIZ2I8z/4O
	 8d7z7RIigFCigRa2dwip5e564HI6mnhCSgOszA5CCPTQLH4VUhX54aABe2AO59cAFr
	 4yvDqQbYhIlYiQ5kTgllVSg2t4O00pgxQaP2Hn4Xz+wWpP+fOmyVGHUsaDQk6CHXD7
	 k5DruUvb/688F7Onpb1f/oXPuSM/bLDIdDRkv5cE01gfSSTsf/1eG6i7XMP6CxtrgS
	 JDkDWyaW4USYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFDC369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575219357.2508.3853136950146553911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448d105f4d6863403c16c25a5f89a5e7bb814cba6f89788ed8a89646197992a9
Date: Sun, 27 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745752193
