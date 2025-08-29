Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106503101C1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756465195; cv=none; b=msH1ApRpvp1uRzVTkW0xDc5eh14kqmlOkVWDIqrd5wIaSxK3dtMFn/pMNsp+HFy/ahLbegu6dHOrvwbhSAtzmLJ9kwAsWKk69Yc8IrqJqAJkVJGlkOtVCpjq7Fd5o5KULofaPoeb7qc/So08Z5obDYIOa4d/nJqvTBPhPtkEuLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756465195; c=relaxed/simple;
	bh=gIuEVftfdKcBtxmM8ron0uBSU9GqQSTil5TT9YyjWns=;
	h=To:Subject:From:Message-Id:Date; b=oJ34ph5boPHdhKbFvEX6rcXNVk7r+KKTPb9Tb+MENP+ipsgXIUWNFtstV2MC+wPars340lSmWnCLl94NiCSDSKl/I5figjcryH4PNa+XQbjIOIJysqQbwiRWRv1tWe16CjMhI1jNtJqcnmPdetjAmau1pwruK8PQ/UVLr1mB0aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMgua6yW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMgua6yW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8AFC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756465193;
	bh=gIuEVftfdKcBtxmM8ron0uBSU9GqQSTil5TT9YyjWns=;
	h=To:Subject:From:Date:From;
	b=gMgua6yWiBlQlhGEaaEN+aafYaYmdPKVs7Me0TpU7s11F3sGtJ10rcPvrmHPrq1mM
	 3wtlRnwTZrdT6jli20dGpZg/+aLU3JUOpasX2Trw8pFU6nLVMs0LrVEXwCR62zy5op
	 9LCo5dXgM99jWaKs3KsvAxLddgxgScaN7mbF1IHCNYiCNUrnRGTbU4p1lupnp4hGSe
	 yPE/mz9cTErSSZ9TlXpcX1myzK616zLfNbpFgPnH286JGmDbHmx3P/PvpavrP9YOIq
	 ug4W13NupUX6mYOkiAN7m9P/kTZ2zHlY44WNnai+p4L35JITJolEJ0HBBAgsW08SnV
	 A/Wuoc9jHrRaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5FFCA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646519357.16479.11533599920381774173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfaf17a9801e92b70917f96834c7322b5fbaa0fecccd8d4909dec06980e5745
Date: Fri, 29 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756465193
