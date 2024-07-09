Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C803155389
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720523183; cv=none; b=p2vyp8G1FsBtWW7bFAvlrDsjLiTQy4Pn8npoyPSeaQL/p/jl4jhGLtomWMhG6bPlqKuhzjL7p2CnDRH9jVxPqStEUKZFEI3JbRQy897QmfAumKmaNDGlww7mRfSjV50NNLvf2vgfAKKnP/L4LrY7n3Hx9YON7G5p+VOstWe9sow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720523183; c=relaxed/simple;
	bh=mIMeQcWe6Ob2Pd6l90+5W+PBssBuwg8NWb8dgEX6pPU=;
	h=To:Subject:From:Message-Id:Date; b=EBOlnOzw1o6wG4NWLA5hrLCYaVH8u1TPkIpIgDsv5/cppWSOaZV9NihChXVnIJhpUDL+V1QNH/fc0aEPadAV1B51XuexIcrBiQBUluTVymHJH+a7lMARihHjeQHSJxLjnQIYgixllT/cqx4J2p9xMDTOgbZ2OAMIyuiHwEbyp1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E34ukATw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E34ukATw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F75C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720523182;
	bh=mIMeQcWe6Ob2Pd6l90+5W+PBssBuwg8NWb8dgEX6pPU=;
	h=To:Subject:From:Date:From;
	b=E34ukATwT84oNA6L7PjFSxT2Nrp7Pxq7XwqAyzngR4ADgnrDJeNAlWKqfYVkLrsek
	 FaIhRuD+eGRy9GYCSZ9i05yIx5RcBC/HOtUc4if+v5bFlyI1+WOgOQEZenO0sea2ia
	 kBqNoU8xK8dUKQ5SR2Sp3kOP15lwtbSWbC6KdSm7Z5HuDn9EYPSuiZMzQ4748MCf3R
	 cTZ9lON2Zw07Mr8fJ1JQrcZxXlGBUspdHySObdBNjsQ4kE35tRG0Wf0u9XRl3rPdTA
	 ++gaLE7TGCYiWL36hP87mSZXpbmzL2i7Kjg4YRhruxKWLryE1T2qDa/nNJENgvEyxO
	 BKIEoi3CirZFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25E6C3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 11:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052318284.7430.14582226713381107663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15d03cf0e12346838ae77c74a560fe36f84f947285377187dc504d589a8de4bc
Date: Tue, 09 Jul 2024 11:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720523182
