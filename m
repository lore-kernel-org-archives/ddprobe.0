Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EBC370AFB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783839514; cv=none; b=M6ZGnaER5g7qvnBdR8K1aHxed6a7kwuRRKjFaQNwOPCDVTgThTDJgCV8IyHZlHT0ECLWUYmjHYj3A6AuCEjEVDcmqwR/Rl/yvYdJlKmNVGhhxGbqCTvJyacktfpGG4bqcaxPJaiZr2+xSurfWEcjqhPVNsT8D902CyZL3f/Rh7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783839514; c=relaxed/simple;
	bh=8WZCkNG/JBYDWFgP/rWUICbGzm2Um8v6iJb0p0fePng=;
	h=To:Subject:From:Message-Id:Date; b=a9xBnU5j7EseZnAJE41dKOCb0YaMUoYGUwMViFKPD4VzrPI5MMivnoFfoQAPg5C6t8XR2dZ6+45psIUQpXqDI0DIHIjoT4nuIsD7sWNBF0qXUJA17GZwlc833W/YENe1UOp9QvMYPsu/VM0ZQq53NeOjtyJnoRqVWlcP0NBwulw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ympr5H/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ympr5H/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC33C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783839513;
	bh=8WZCkNG/JBYDWFgP/rWUICbGzm2Um8v6iJb0p0fePng=;
	h=To:Subject:From:Date:From;
	b=Ympr5H/VJ9AfrEDgAh8390O2JIR6yzLJICckntDOdt6Pzxi0w4IqQtIWAxhkzE1hZ
	 CzYZWbsiV6pJ3FuNqNkqaBEJ+6nsYIbgDEm9CfG5qkKyE3epBVtLJ6Sg2jn7Xk3nDb
	 VQhVCA8bzDLnnxInFNQTE1Ju59nWyWvqcafdraA1h5NqQo5q1oWvKa8blsV12Uj5Vw
	 oGWU6atqd5epsOuU99hGQho5fvBEoZjrw6XPF6eMmEbax8WSKLjXUtS8mHcyER1e80
	 ZYqD97d5TaEE0/h5bcbTKFiyDMH2pdaWB6P4Sq/Fhp7j0ixp0ZBsPBechDsnFbiUR4
	 wjH7qs1Vpj22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE400C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383951368.1358.13123670507250434102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910f262472ac182fe409f2ba8bc9dd83945a679c94bf9de8acd9c015b11c48f2
Date: Sun, 12 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783839513
