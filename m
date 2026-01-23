Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B091A262D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769178834; cv=none; b=RmqBTBRU8S/jscMx1fNfZh1UlkXlCI/dGwOCecL6qEztIr5P6epxOhLyjnQNlQ+7wrR2/iOugZLCXtR56nTQ+mnOE/acF2Vgv6xFZncTifZrNs0Q5Fr/vQmTcod3XRDBb72WaIXldkmc5qvXhu7nH3oVHX/LEP5vGhocebnStew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769178834; c=relaxed/simple;
	bh=K0UbCCxcf5SMOAo3/6m4c7D9bFE5cYuZmUcBc0Ufx8M=;
	h=To:Subject:From:Message-Id:Date; b=WaTxei4IXUW1ccl/wJavOmG+bHGvho4aUVjDUy7RCfhfs6T+plg6JIRvPq5RLZrvBPQQRpAc3m4jJAD5y68fPf8Qj1Mlpz31Rpgtj9XKNmbEIEgDybDBiYRFOyLPHCExaBLJJGgWtca+TSAVAbwAmURpJpNUhf/4I76TNSKE+NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGQPpO/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGQPpO/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D325C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769178833;
	bh=K0UbCCxcf5SMOAo3/6m4c7D9bFE5cYuZmUcBc0Ufx8M=;
	h=To:Subject:From:Date:From;
	b=cGQPpO/d4fJeXu+3tee+XN5k8v21ue05zXx+hvo2Kh+/ib/vQ2p899sdDRSSg1H1b
	 sTLEEkz+3QfCxTSzOg+scQRamxW3NScczKCjUpfPA8Gk4dm/1HkFHCyKMFiTUUnLg8
	 mzhScfdNISeZqgxQMCk6hoCZFj9IWLGwVGOQr/BtTCZwOdCOCliAwlGsJALhPHI2fR
	 /V0PrIxzHFJvdRorchz5ef86aHA0Fbjmw7FGhF8dujXh7FjSh1pWexk4AHNA9PPpkq
	 CoD2aOkb4SArlPK06py4JvNfkn4ioP+hUJHAs9f8RtLM1oEc1TUsYQz3r3K1RlUSh2
	 /50UqdtW4Uq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA5ED74ED3
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917883357.17351.18231130414477082846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2fb718bfb7077ced285fa5890ee8e0c340a0e9d8a418ade95336376db3c8244
Date: Fri, 23 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769178833
