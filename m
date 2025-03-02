Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410011465BA
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740899334; cv=none; b=uPhfvpRg/TQLNcr21X7G04vgkP7wzltkVdHKhbceIPPvbcDZXedQznnZyELMYcSW43AbxrHyYJoZbQeiQS0xdU4en/6fhQNwqVmykmRNrrUR/XoClxKFMFGwgiXVgPz7qBT0wrhpja9U+f13xHb6BWJnB/OY2KYR3+ST4HnEjpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740899334; c=relaxed/simple;
	bh=YrTMeHKyFpEI430cBiZv3n21tAd68Jozozp3wZCE0RY=;
	h=To:Subject:From:Message-Id:Date; b=GRmCnO+/0DENIQPHLURbIMDxz7VpiVThRWXSl1q1/+Hc481pzR/bDGTcw4roGMCnJ2KwororqAw2LUgBeY7RNdVJLTGaXuPvvvVCcG1yB6qFCup57U0CwTUTxC2aqRuZXwZrQvFM7hzeQquwfR1w3WsLlJJ32QReyny5Tcm/Mbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ5zIQ92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ5zIQ92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A6BC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740899333;
	bh=YrTMeHKyFpEI430cBiZv3n21tAd68Jozozp3wZCE0RY=;
	h=To:Subject:From:Date:From;
	b=OJ5zIQ922J5b5DxcIHQThOJwqf28oPv4ulzAxAydeLBj6p5zGeXT8cc5j/NZoqIoc
	 ttHteR9W9qp2FsQkDYgfoTNSkgPHT+bnRJjWdqF626PtG4q6zUiT99hWbZWs8TGlmF
	 TvjRg8gHKWmjOM3EklHgJjUMwtNjMEXDKvhfDE8IbbuHMTAc7hCbqLQ2o5tYPZxtsp
	 kGkn3FU+W/b/4atOlQnYTizynxTGB3AItZsI0Sfz2uVgbJncnvQWKBXp6cARHleXEX
	 Vvws0Wl3erVYE8mvt5rEg1vT0CXygEHTtQP3sR8csvN9IRF98HPAA495CKGNPPuSZ6
	 8eqvMofzcgtig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A3CC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174089933360.28608.3315271180831977188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae749eb833b7855e8164a40a861866b1cd67135505e2ef154906beebada2fb9
Date: Sun, 02 Mar 2025 07:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740899333
