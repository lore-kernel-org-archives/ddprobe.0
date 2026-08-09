Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DE938B12F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786309234; cv=none; b=IflbqdJ6emI6uAy5hrdVOHGL9CI8zqR7kDVXW9UFyVTU3Ge8wIcSv7+6x9X0up0XUZvapPMAUoqee6DlDV3rtqSN5JOd7tsVmcNtJviOVssUYtzcIg4RO2gYCZf0PWP2d3PFMpj0c7/iw0RZ6mViG2tsGwF+tsHXTSheU3h0ow0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786309234; c=relaxed/simple;
	bh=zz8UPiEq5gT6pC8mmBkpJz7s75FUiXIbV3wRCQTYGvA=;
	h=To:Subject:From:Message-Id:Date; b=ioxgIUYL3XVJhbkdtD8RwMPekzMGfAElIb97qxQsOUD0XHIffaCXxVhBFaIAupum9RFlIgyhW2Vgaz44x844oKgAEs+K8HJUOPYWJjA41ftkmcv9C+jK1gCF3ae2xSaSACqLuNP27B+R2mrfCA0PM10df1uhIRz16ubeyfcTtFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omsyve61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omsyve61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49A7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786309233;
	bh=zz8UPiEq5gT6pC8mmBkpJz7s75FUiXIbV3wRCQTYGvA=;
	h=To:Subject:From:Date:From;
	b=omsyve613K1rr4BBJ6s3D00cjMU2jhNQVvx0+di3QVpHBnwrnMQOpOBrRsLihex6m
	 4abUfGG3wC25647qXBuFfk8QUbFkX2dQ7OOu+4U3R7Ue5VLDLRB/+8JJP3AlC2wNOj
	 JSV2FSqyGO0EbWNnQVt/igb9PNAXXU/PHK2VWRMuuqH3O8s7IXK1HRxms20eq02pp6
	 bv+EP5q7rCrdPiWawVmUGIwysG2E41nhXSU0wkKlp1T9dudr7jakpPCm3ck3P4H7rx
	 7SNg6NhCVfrW1h9Rw9LJcbDkwMzznE9a68fYxNOl4iyH30I7QwLBGiMggKTWKe/CMI
	 58HbvehoHdvaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB8EC5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630923371.12223.2409762963806451245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215e4be4664a81740654775bd246fa4694a91169dc2b3f07e1c1e2567d2a1fc5
Date: Sun, 09 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786309233
