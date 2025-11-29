Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E7517A30A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764433374; cv=none; b=ic4Nr4c10hnrjC41eZVZzh/9Nnpho6EBIULfAkPdlaaxnyU6J8d7N2RqlI2Gp1QD1DnXZ/Y+c0Bl5zWSVNyF6M5+eMBUAS0GTaxQs1CH2L2xPrS53er1d+FN+Yq8/GB7zfZQxlZpN4b0wEThg3k+A6QeYDwpyi1A7zO9Lj2a1xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764433374; c=relaxed/simple;
	bh=xXHxPVUNrchaW0Y8/CaSSA77nCai/BSoMsq9tm3vtFk=;
	h=To:Subject:From:Message-Id:Date; b=EZEp9af6oNs2iSmEUXnNucLvYXnaVgcTDwRlYFG+BGPAKLkMeZOWym/QU6uBSwlnpq6KjhfTv6obfVEnCqbtXLUzZmfF987XB095V+eGduae2JHeaL44uCOmoMwmUjaVnawNL5jqW48GVKJIlpwxa6lkjT7a9y6x9Ns3JA1KQAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjQ2pabA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjQ2pabA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD423C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764433373;
	bh=xXHxPVUNrchaW0Y8/CaSSA77nCai/BSoMsq9tm3vtFk=;
	h=To:Subject:From:Date:From;
	b=YjQ2pabAYt5o1rM6JshXJ/KNG/fIewX+6guaQ13F8kMPcKJkI6CqPcIZeb1kflmXY
	 bByA25j//6THBY8SXo0zzxQd2jKbEtgRoiNzYCURj37iKGgRINI52aoGPquIR6qLyz
	 rSNzdmkCeqm1wV5hJpB5E99RASJpI0mEz7gM6delyFQN4g948aGBHj2bynvvsWmgNP
	 Di4SXcA7KcSUFh1B4jDAOX9phct0+CP3nyBUrmy+LlraeNQffSn0XGJX6W+SE34pYB
	 Uv1EEx64NA6rSCG9b3VLNALINRK/ZdzjfN830zjz+YMwnD6CVqMDtUdDFxPADV5Lau
	 aqyk5Fwiwdcuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CCCCFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443337359.8530.14768090713477551474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6638ffb160b6551fa342d48767702e496bcdb35f367dac745bcdcf807c9ee19d
Date: Sat, 29 Nov 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764433373
