Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7AA2C11F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761204594; cv=none; b=GxQ3wqvvTm9ecf/XtfB7RuG2MRV3wacIDJz1xI3pqGBIU87LRZzv7Gu8r9ivGDUI1U3dXPMrSW5FKGi2sLOQriSht+9LtuGnmHY653CgY7YNHLbmBikj9TEOhuoxDxSCZBojWos/z1p7mUAxlZpsRLbjt2su34Ng6KwddYT3eGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761204594; c=relaxed/simple;
	bh=3mATvi/9oVDgpsTIqCo8pgRvLmagtgUtk/LKI6pN2uY=;
	h=To:Subject:From:Message-Id:Date; b=ItvgAyGwuA0BlgPfM9Wp4vHgj+72T/3DXmRKA1bPUgLIX3Pol05+lBO8JomaL/cVOhW83LS+fd3QCrZV0UcqlL4476NbmLcBWg4npdSsBJfPxupPprH6pg0gyVoy0tlYOtbmxa+mInoiVvagA6eDm2ZXi77A+6WJKR6+R0F2Rx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAeAUG0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAeAUG0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99D9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761204593;
	bh=3mATvi/9oVDgpsTIqCo8pgRvLmagtgUtk/LKI6pN2uY=;
	h=To:Subject:From:Date:From;
	b=dAeAUG0VoqdmTKGXPJs7M2WlMo4BdE7O1L0nUlJ3FMx98KguvV4I4Gp4gmgWxOBgE
	 MtuSx6JgeRATJt528Q/uqJfiTNn3urvjR+u3FK4ltGARS0bpb6N0Q+tBYWoPz2Cg0Z
	 bKcKKNTxrN9JfbRgI1VJ14zqfQeekf46htiG74etgWOu22OPhjKkqMdC3w7eQ3YB42
	 LNVjdFW9X1OzQVTV4bcNDUIR0qPY+wXerVgnGaiuMGfWYXdwJRWRc+y3NRyDskhjAN
	 NfTZF0bNN1eAcVC3JVPoID9b0dD5Jg25OwdmCc3lwgT5kKLtoYbk4uBLCKEkbwOOMv
	 9r+ZTqzfYT8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96175CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120459360.27798.14860546299812085521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5179e50fcf4bd1e7c4b028542ae940aa7fcfef08a7803194beb2f0245a3f12b8
Date: Thu, 23 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761204593
