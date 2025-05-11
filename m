Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B71DF58
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746922794; cv=none; b=AlD1EmaaMHORO8CQLE/nLFr0Z79OYjWyLrccX+RQJXePdnRqQYfvOxTXteh8MZh3AbdfAGt/SA6apw1Ux8nzMP03TcL/AB9/kKTGT62VJjDTUeF5UOO7DirhWDJcVDcTbivwxdo9h6HHSNXFONIiugFGyFrQjOaFjpTs0lrPWL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746922794; c=relaxed/simple;
	bh=Dkf55RHKIW1IPoiQF6g3/637X7+i1KexDimtVQ2wu+Y=;
	h=To:Subject:From:Message-Id:Date; b=ld10hkdLBUhaw01fcm65yRDvm24owNUH7toE4TYE54rrjq3B+H3arW3Q1QFvBTBev9z84hMDxWP167b5286c6c5n0RudD02HbCPxQFQjS45ap5EUUz8wnVdnoh5T2XFnjnMlOx7wUJOxQT1g5lIjF5IemU9qNfAnhvAM7Omw2Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2bswPqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2bswPqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F9C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746922793;
	bh=Dkf55RHKIW1IPoiQF6g3/637X7+i1KexDimtVQ2wu+Y=;
	h=To:Subject:From:Date:From;
	b=i2bswPqdwwuj4YZflV1claviaQu73DpLoYpflEegWs9wuElxN9A2ABhnqx/u2p2hs
	 317N5mJGVJyekNS8ox4eXkTpOmwSlbvhYiQWTl/QLKJj5QQHZK6JG+U5VcXEaLSAuU
	 A1B0s2Jgj7A3q6BxHoMk9aUv94UcTSW6nX7bJbB0R5XFXGJo5khtUqKckL9bWrZIzj
	 8SNLK5i2K0RbV46Y9XEquH6U4UtIQOnmzq7VV5APxt3YSLe5ca7YoJP6IRgiWIoMzJ
	 b4PcoexJfbgZ4ovEnLxSYw1OHcrnIucMc+jrLNjpPWLsq+m07AfTBVRfmL6+834HWF
	 6TWoG7md8i+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92738C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692279359.11700.8045650269624792244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974dc093f21581c6790347d11919b8daa3019758a157a12f636c27e09ed6782a
Date: Sun, 11 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746922793
