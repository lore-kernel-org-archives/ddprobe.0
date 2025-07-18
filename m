Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED7A3298243
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752830394; cv=none; b=dEhPhO8M580do5t4JPKKklw2MTMnmTP5MrYjVUGuQZ18xw33fSLAkcZ0Gso9jPVa/qjsoCqvSSsy3m/HPeJGgx2xKVe2ZV1bK5wVDIm5+D+xNcSR04/yVR4iDY/P+wieR6gbfuRyg3zeeTzXo8LOygNBqX19waqxTM5c3XCSTP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752830394; c=relaxed/simple;
	bh=TxO0DXq54+pFKbxeNrOmdXyuxlE77vLNUJoh+ixCWhE=;
	h=To:Subject:From:Message-Id:Date; b=iLhFDdntfdW9fSZcvDF+l8tDar06T3zumJ56+Rbx7LE8k03aqD+5sqhv68UPZt5XMr3MhI0O6ZwMb3m+e/lKvcmeglraY/XAuHoMk753A8V+ZIP1+OuWf1/Bvo6F7B2fxT0tf1V+uc5xi6YCqK87+h2Fz3NlYil9DIkmxu9kJrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYekdaGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYekdaGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007FC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752830393;
	bh=TxO0DXq54+pFKbxeNrOmdXyuxlE77vLNUJoh+ixCWhE=;
	h=To:Subject:From:Date:From;
	b=QYekdaGO+wtr2DLFl1eXRl71XXW6wrW57GEmYADhwBR5unG5qdm+8rz9WR7sjwHQc
	 qJjptnEkRNMin35jr8LsPmdHKObZYnriw0H/qsc+jS4Ee93NknkikvRh1JytLSScoz
	 tYD1RQJu1VqlrQfVGvo9u9udOJ05buF+cSOa/yN6+8JuEIDrHfjemESqvBVYdHbgzO
	 yDH1DF7wgMaJzyGbhL+b9iryLvDEpO4oZQO6nxkIpPpaQujXRtU4WEb4V+PdBbKIMY
	 BazGS+6u0j3VR0GXpYyvmbPitp3X4n4sxieUbyKS3P6CU6jAtdrawyz8WJRV+ubUsW
	 ual6XRPfTPoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BCC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283039357.5410.18346277825716525704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db320044b9495125f5fea6beb12e8308652a9670da7506154974d44b5b43fa0d
Date: Fri, 18 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752830393
