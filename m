Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB840DFBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774058094; cv=none; b=VRSFEVltMlxko8hb//yFqfsE/IQxwrrP5/9v5PwRSCqQKUBxOsxQrk1uAupWMqoLf0piYSper5RctSrxp6ro57G16NijSmPc//SFqY/phChYRRxiARNqdr8PM+mc1O/nZBsq38hwsPdy3vCb0UcB0mF5gQeINo8zBvE+OarHbKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774058094; c=relaxed/simple;
	bh=qOCZaomv5EFUbcHmUmstZogWVc8s65T1DwD6QZ0mgi0=;
	h=To:Subject:From:Message-Id:Date; b=FrVWitAWXv+fJ7z0P29K7WkpKpzYwF7pMXnLQQKQImzh93k6Pwuwk49wSv67Ff2KVakP6FKqlukPu2XNLPvo8SLns/bpKfZYmFj+ahinsDczKcwnj2phyzs9R4TtKziFF8UrSV1WVGOot+8ZNyIYvkD04aY+puEblrdnfBJWgc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PscDHrv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PscDHrv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4015C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774058093;
	bh=qOCZaomv5EFUbcHmUmstZogWVc8s65T1DwD6QZ0mgi0=;
	h=To:Subject:From:Date:From;
	b=PscDHrv58fvojFWoGwHKTbhVXBJWPpvOcaIDGlx8Ia8huYcCFtkfqTu0EC/NNhxAC
	 7OhgPHL8SgkFhcxhfzgQcmZE9fgwKyLp9bsE7jimbPq1E8XQDpjE2pK0NDpVlPzls+
	 WjqIz+7sWAsubGyCNjSqNfAmjGUmaCXgiMrnpz1ApTkKSBEWa3+3Ak28qFuJjNzV/a
	 mUVghPHZrdyT2znXupscmWbNvSqzVWoh5d/UzVoYI0zqoyNYBpw/m/NwAbh3fRM/xq
	 g7Or5OHBFLJSDkjgYWMhqFfPfuUXW1RTkOpBd2RwC6DOGTxfw4WQrJgGYgpcKGZgZ+
	 2ke/0B85aplEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F01099B5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405809357.28216.7484468898065743182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b35a2a027e0ff2a6146659b9879e18bbab52bfcf9977efb381188dcca4fa5b
Date: Sat, 21 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774058093
