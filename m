Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A0E29BDBF
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759316994; cv=none; b=nx3gXQngParkP10mY9y7/uaZbDhAWIsRr7+bh8k0P8OJpK0iknOWJlQXcQmfXs/H6vBLAVnO148Vj9m5N+yLmqBaQxnDS3WA0II76IHbMrvLCXQiXBeh8HP71/gXEEO0vN0JGELLE/R52LdysZ5oglTV2Bo07PlKcYwk7QleThk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759316994; c=relaxed/simple;
	bh=xxTTl9SERM7KgKUC0luO2y+nA+uuZEgws+Remnq0HtI=;
	h=To:Subject:From:Message-Id:Date; b=ZkG3LXXa4ANNWHCcVCdxMi5Ko70IQ/mfXTWKlB0asWN17bCTSbsESqt3wyc5btrVvwUvKBvCKI0YYAN0ze72o1y+4r5ruPvdBgVLkDXkNYN32DxD+3DxqnKybc+wjJdhy9GFMDxfTPUxsL4+EkbaRH4OdqlU2iGhGueIk2Zce6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFqSynfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFqSynfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7701C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759316993;
	bh=xxTTl9SERM7KgKUC0luO2y+nA+uuZEgws+Remnq0HtI=;
	h=To:Subject:From:Date:From;
	b=EFqSynfQaxQ17+Lx/dxa3DDw8vBPl9jRcDN1ZnNW6oZfZUlbGJ5Q8Vh5yEUR1+TPT
	 itMyJ2rCSmEV0xuanQ+c4gh+HU9l82itBVUes0AwQBqPTfhoT3xQ6cNb8ngaIY5ael
	 jYYL2lXr/GOUgoaYFWS9GTZNCpM3/+Vps3PRwoP4c9Pz+CnStf438V1VCSMtawnjrR
	 YIGaOIIiJumYdciE388j1oNs+BVmiUKydheWpbpUxq6exZazWJyqVPYjSDgAdoEvDL
	 tWfu9yEF6GG8/knT1E4gru2iQKBP8g1C2RI9Kn5EjxXc5xVuXJKlWsBA9qDc2R3VMB
	 BX0Lvq7Oe7OmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1590CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931699362.24770.14681635912701443384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feae7f832aa6d8ced0bb633f5a488096fd0bdc5b1a372fd786cbedf4e41b9717
Date: Wed, 01 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759316993
