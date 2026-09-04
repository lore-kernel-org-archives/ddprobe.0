Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FE03BFAFC
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788492634; cv=none; b=RBa031ykmfkN/+ACoVnMFQ3/BTG+GhAG3eJt+lQ1yllZCLvFz/Mi+SRFQGxhZ0RpryfQsgor1e8TrI2unFHEmPwTY91oc5N6BxPoLO3sXP2gfIhSvYY7X+WYzok5MR/vUx2spMGMcu1yAkPb/8BGjsLmKASMTZBar3L4SBcXNTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788492634; c=relaxed/simple;
	bh=OfWi31OMKQPgV4JH3dPEtmzIY/n3226pX12zE5O+tXk=;
	h=To:Subject:From:Message-Id:Date; b=UjRY+HMDeUvLO5DXvfBxjQPN4sXdhZbEqpbpCDY43hyPHUTkqhZcXEsb/bKSlnNg/Nq59bnvoFgJnBsrCyac12J1EoDjoeQLPSf2gvRDzSP6WiXgsipk+Eyg8eSqIaLuMmyNJWuACaNiyaw6bunQZEdo5tBSrmOWF432atBGbHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfTRSAIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfTRSAIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6047C2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788492633;
	bh=OfWi31OMKQPgV4JH3dPEtmzIY/n3226pX12zE5O+tXk=;
	h=To:Subject:From:Date:From;
	b=jfTRSAIqduaU35k2jpaA7cRwaPHmF5vjSjSpzB4hS/MnbDTbuIx5xbrpCXjf2S2ve
	 nfk4Mxih+XTnSIEWLgvdAaLmIPP0sghN+NVDhlw/oaY2/8y76axNdr1WTRSiFo8UHX
	 tSaPFm+caq9gvA1feD4AfuEfjZRHFYaEt3LlXKHo2RpiwILOcGdZUqRnkqflKtKaYn
	 Avt9+UT7bmtybN5KytWGbe3mBh14H1ewhE0PcKhzfCnstc1Y5DcRSEeEv4cykWiVof
	 LCuKhxKk10PIPcwoapBwNThnUPV5JdZaBNctcT5BMhzyn49f3EpUuZsmdktJyN8Vrk
	 O4lS/D6mkxyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD20C61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849263369.22571.4751388038323593872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94899491990cf192a9fadcdc8f487391354694bf17061250c55c1120b9de7e6
Date: Fri, 04 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788492633
