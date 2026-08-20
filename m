Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BAF37CD5A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787249434; cv=none; b=D+4/WOKlwSWkdJAkScXP5azCZjyuUDQMUXsm1lQzI5FIWxbxlz8Cfbz7bMjghzOYmH7onux5cPCfR40CoCVinqqrvAYXpDRux7Bplc7Nah7LOKrN6lY+im798+QJzCvTZmfvVkXlpuMnBax4P/ZCH8CxyfLzsER3PZL2klVvsVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787249434; c=relaxed/simple;
	bh=fcqj+sWQFH2UNdfztuN4P6RAzyb4lEQjFEGewYQIK0s=;
	h=To:Subject:From:Message-Id:Date; b=MUEApEp1azBgZ4I97uGks1RcUjUZ08USs7lvLALXdqbj0XhXRRcDhSVJQV1BJPi4pvLTa+TgfLqyMAVFoiBn+GoF51NUcKf7oBmj9kOBOustA6fd5k2BBqqOWt+8WibRYhB2UflkhDwhBtRLC+BxOytfjpM0xt+jeESiMaaaYs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo3JLBGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo3JLBGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EFBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787249433;
	bh=fcqj+sWQFH2UNdfztuN4P6RAzyb4lEQjFEGewYQIK0s=;
	h=To:Subject:From:Date:From;
	b=fo3JLBGRPHsrGqBO+UKd48k3srlCf/LWilAiqdmG3MpcP2rL16YF/vrsNAMQFdPnP
	 g3Q2CCVssUBBOVQ4nyvwoMyLVeqdZZzNw/5PBjt0mnti4NBOKHS7c8z0PR9scj4YOS
	 sZFdy20nA4Lr1zKQ4ln06xL4DOuZMU3AtZgQ16eTl/TSRSxMBDLySFuLJfuV4a/Rhj
	 J37xSP0+A6vQ8Zcpx+a1MZ6nLTuDEP9RpKTBRJRPyK4IJAdjcTYIT7Be1E9EqtsnVk
	 55J+3b06tk+6VoYCeN96+Mb7sCJaMBp6oheiUf5sO83FhncevFaVcnOJG39+VgJAg3
	 /KSx21//gvVQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB76C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724943369.9611.9612816957032212591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db75bc5c730203c169d021c4c19f165661289f5c68253d7a43bcd8dfd038449
Date: Thu, 20 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787249433
