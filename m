Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396F11FBC8E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752959994; cv=none; b=s16B/PWlfqimExqF/uObf2H0HbSpBjIHuDc2miSfynPG6HQCjWWeWIILU4rfLb+7J8x9CXE7xK9SGgI6YMCgnC3hiD4GUYQt4ok60bdDpyfSreQ3bHSbrtYoWHyq6q8s5ue50ycGrFD0yOXHOjpfdCq8WGAFZSvS53ubCtOAP5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752959994; c=relaxed/simple;
	bh=F+TukPdVrELwIiz/SvIF+ZxIECq8ACprC4DeIbV/uy8=;
	h=To:Subject:From:Message-Id:Date; b=qT1Qk2wXrmK4VZTL2LwKjFL9UcmAdtFQWNF3YpZDfExuCEAUMfSs5L2R/ewqmAdjTaqxdwnytau4AywXBFUAj96waBe8xOGxyExlaJIcY6meib3ba0UqqA0n/1Jm/uwMUJoMdrGOvx8NYs7/wlS73huxJzxdYSB5IsiYp0QbYWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2Xr4WFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2Xr4WFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9259C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752959993;
	bh=F+TukPdVrELwIiz/SvIF+ZxIECq8ACprC4DeIbV/uy8=;
	h=To:Subject:From:Date:From;
	b=m2Xr4WFVY8Pv0KwmxyHgxLU0gc04XWbq+WcFHxzP9oyc2fd2hUXz4NH4sTmF52ngA
	 1hHhp42/2XEa+Tl5FC729LRY+NzU3FusVKZkcrrccQeths8fmO3XJvvqPadO36kQxw
	 OizxE8Ou77Dld7ipZsAyyHpr/JxGaFfPYEbbGlOCoY4i1q6AWIwW07bnjdjU6McM6B
	 Byu9dUtVkID0B4Ee/8JodPUNFGkyuflkHGttlPDFz1G1JJ7ZvJ1zBiDbhX06Z6Pl3H
	 71yehhsy8F+dFrXVr/HEamk2j3eMW+ZUCgNyIn58ZQ/bTLmVg+NOxCRCFMiT2FYQAO
	 hnQ1XgkTRglVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96073C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295999358.32411.200947986412272102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7be9d8ce5752ae7534c28e3f6ce05ef8c7473e83eb840b36be9435b1a896e96
Date: Sat, 19 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752959993
