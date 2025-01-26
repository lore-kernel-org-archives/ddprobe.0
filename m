Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F8517E
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737893755; cv=none; b=RUaqQlDyOccWEd/OWgtH1jVRfB9uvbz/ReuGY0LGQhkL/FmFN8bKGrDaEEM46m9eA+3Ll4hg6iMHOhAF9YgdfzRPEDb/a81G+MW+Tn/nj1vQtz2Pu756TTxTFPP+tQtecwA8/97oZFNwOUKnXi/RXYcSFq6pkVizPpvJcBPy9tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737893755; c=relaxed/simple;
	bh=DBmACXz+3htZH7TbuFqUryq32KvfxU9Z2MTYMMxsoK0=;
	h=To:Subject:From:Message-Id:Date; b=aluu44AbmW42LbbXKEiJVMsUEKT/JICp5CHgn7S2czkPCXc7RuXwBfD6WzCCtohowIhBz5KBU54UMH1BbDyuP9FkE9YbaWr/tFtMHcb1scPu7deSLgGObisSWFlBnTDJJuTKaCPedvcy6fw3nl9wv91dygcHL9dryyc/+1z2ivw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEB8B4xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEB8B4xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6509C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737893753;
	bh=DBmACXz+3htZH7TbuFqUryq32KvfxU9Z2MTYMMxsoK0=;
	h=To:Subject:From:Date:From;
	b=lEB8B4xvtRAeJf3AeeLMuqTj1EBdxb0YFN61cZkX7iURLU1uiieMXvOGFvFzdoLMi
	 sVYaXISVXLCxcFrsxoYWzsxgr/pflA5EJDO39AeyAD/uKs1Muk3qCZg+Rf7YzW1mYu
	 dI9miF8RwJ1BfR+UFhKReYj2MP6EKxJFfC8gABYyzcEfVp9vv9vCQGaUZdE1ZRfRNj
	 wX9HHdIzB/tVwVZ4D1SIgebC5UnK/V1sNxQTCAF2DhS4WQoUvU4GIOcMM/rQxbdE+y
	 3NnSVELwx+vPJoVYtyG8Ctkq3dcYkMDZYO+6eJzWKDwPkAsIbVtcpVImIpnHxzfb/q
	 ANfel+Gv0xZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95626C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789375358.23675.12346852754180247876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c31029e7b2a4cb7d2fe66f0fd9abb5f92545b48f31846308864a04dc4dc3de
Date: Sun, 26 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737893753
