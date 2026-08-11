Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264B1346A18
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786436434; cv=none; b=M+SV0NqrPGLOmr3vcmdmqDCp+lk671WHf+DWtBeQx7r93+JwLyB02wMB4lZlpyC139eQTx6rN+mx9XeEqD9aw4EebriFkoZHfOQUXE7VySG6m45XpeWkPX263hJr4M6cRDeT2dwlY7/3gYwcMd7oVtAPUQr27XK675yd25rLoIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786436434; c=relaxed/simple;
	bh=gt/MqxTibHp1qoQ9qR2RGT9tcvoHpsBJy95WLz3sqrg=;
	h=To:Subject:From:Message-Id:Date; b=g9lNpviTelZAlJFGIj1VCGZASC0zgxT3aXk74+X/8TUoqmVfe/O2UGjVRN3r0SmX5sBQOdwt8DCO4dNTk4LNeAUv8KyyGhMBJjUnvKgVkqFHk1nVWzvSJx+nXeJNQ3Mvbm16EqlIbYRQi9x91bQ0reaA6j/TuVO8OwFDycgIrTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3ibmKFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3ibmKFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F71C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786436433;
	bh=gt/MqxTibHp1qoQ9qR2RGT9tcvoHpsBJy95WLz3sqrg=;
	h=To:Subject:From:Date:From;
	b=I3ibmKFBmKBP6tf/lR97u8Al3HGQLqdVPF3/+ovii6OTo4mvwfLTNNhwjK2r67E6t
	 V7zyFuOo1uhASgF4bYkhpnFwWLRFjLVj62Hwxdz/N1TQ12Y6CHEk0Ox6GMcWu33om/
	 pLGHFDdSHud/ePhuArB+CXOXWWqIEptEQKnbAcYjZWiP7fCngh08ACxEYmVlFnaA2L
	 UypSU0Gno4sK89bgiEm8qqqPNbrv0e4yaSdDTEKZht7fHutbHKgr7rYuQgS2MbEOkr
	 Ki6RhtMMGstK4dfRxhNJ7S3vJwRx1Fdmn03oWwMA6zbFBa0QYvsRfPPSmhGpJQeI7r
	 3qD/T6QGrQtEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D08C5B574
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643643367.13936.16719593602528784251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bdae6a1dbf06157341d9f3d59220fc243107190a9482df9080ec85f2f4da50
Date: Tue, 11 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786436433
