Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8CF522F
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716720263; cv=none; b=IKpj6NR5v0xKU+X9FupHn4l4fWUeWVgpEsEXmQpsA6dyp2ru72Z1CSLkLubHqn6rgoDPA2U5pXn9hVZfw4O8IAXK8eSUSiHcEzjAovg3RnLYdwJU1EuchD+NLkTAko9aThHQ09MLfzrxtP9/+GxM1Mcw8z5cGvdBhBvm4pLjaf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716720263; c=relaxed/simple;
	bh=q3bqvehwpR4ysDm/G9FbsCf+02l107RGNhfZOikAyRQ=;
	h=To:Subject:From:Message-Id:Date; b=VJsGQZSplNL5fhfoQh6C2JaPS2YAxXkzcWItvBenuDQla/EN1F3oSsBoEVar38OVgd/M8yUIMIrehLZ19FU6x6moazigDoxOitWKuPcIm/rfPrYhrkrziqxWKRPx+jXvr6plytkKjbAKjzEj3CRmrMP0SnruyQLXroh7jPuXY8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+y8cZj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+y8cZj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3CBC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716720262;
	bh=q3bqvehwpR4ysDm/G9FbsCf+02l107RGNhfZOikAyRQ=;
	h=To:Subject:From:Date:From;
	b=W+y8cZj164GkNSpuv4gNMOeVwJF0tUIRv28rWpDOa+Os+3FNxI4szQ3s1to6+c8Gj
	 UpwkEKoLJoZiwDSezmLSq30QLvvTrV79VG/YLQqym9jlhI38fF7QoXRB9+9WFJS4PQ
	 B21mdw4ivAILDSCQ2wliYsQXB+s9hst7masTcruM/AwvEWtzxzqX818dzWgZf32iOM
	 5eqnlO5ayfQqLMzuy8APbU1xDlppLBRxBJs7vmjUKMHQSZ9P4pDiBAXIM1lAErB/OX
	 CjiWX8HltKkyb8qa79QSP7JTk6MKsbOlTsa5tSQPlvm0Rpg870hNeOmg/LgouIqwYt
	 MOqhDjaXgyzSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2270C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672026275.21517.1138415490800369165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47f42676f617a71bc22e62af8ee6e03a5e74baa7705d8c5d0e05d863ec2e296
Date: Sun, 26 May 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716720262
