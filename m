Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2992528366
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732449354; cv=none; b=eChCxcfB3NFufSPzILr1tpVLocWvKdpObV3LmGuzX6LOSb59LGyS0ptUb1j8BPUNkHBfzJ5rVpOrQN+9fgiAYWXx3xDQLidLhbKmP+5E5YOaEHJxcw3GwcWAkZHFGfAf9O3oz2HVSYoRDOUlC8KYrxNaIwzMmXXfIcYigpxR2b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732449354; c=relaxed/simple;
	bh=nkd4/0yiLfnH/A5jcGlPt8dnX56w/1h0n+LocJeme60=;
	h=To:Subject:From:Message-Id:Date; b=Q9BwpFGouao8J7SWSmoR84GeU+L4bRFs/u4InnjfitnjJWmh781LUiKK0t0kRKQgM80RIoqqHTglVi1jDIpoTSkBFbTPNG2YP5uVT3gOgawhqC/t9o/rHKe2CBEK8BObZi1TGVAw405/1RVd7sBv/Hzv4I5LIsoal2bA3wW2DGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIAeFvtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIAeFvtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E9C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732449353;
	bh=nkd4/0yiLfnH/A5jcGlPt8dnX56w/1h0n+LocJeme60=;
	h=To:Subject:From:Date:From;
	b=sIAeFvtHidrlyJ034+YZcj512kYcMqwnpNgjv5aMnODtgL/1O5JW6Woy198p3MYOQ
	 s53ON6PgBB8NXO+r6i9pVzsGdOpdHT488MnChgnhl9B2C2kJ8mXy0TRggZ2ib5P6pC
	 MuQRyQ1sQBdMh4bRdXDbOR67Oyujv6wW5Zf5VV1OYGULMkG6ZRMVOlTOwuBF9y+R2p
	 HNdUcfW16/NPRiO/Ql7YP0IoKbMysuwLaRnQU7CVOVpJv35TsblksTkyNrdZFnhZvQ
	 8ia/OJ5NzCIInU7w7ZDu8N2IZAgUTquADlcFGKZUCNONk0J0gcWT8lAPNhl9QmIVgv
	 eHbJtNbVJZZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D2E66894
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244935358.24538.2161432103468388400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbfd0489d08b844ab34ce443c131fb2d9592268905bea869aa27da8b14bb45e
Date: Sun, 24 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732449353
