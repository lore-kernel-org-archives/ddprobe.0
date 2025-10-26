Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03A61DF99C
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761490794; cv=none; b=nYXvMETn/+M+LuicA8to4oZxY/+7WZLi78YXiEz/tl1Vi8/BYO2vWj2G0In0M3v7tp2FGGZiHO+nqCM0qTTDJFzxQF9HUZsmSt9scuChmhjjU4DaGxgsCaSHur8aj2Yim2fnxE4IbZjV7eb3Mex6J/3rmsxSpgG/Ze+iFoIoMks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761490794; c=relaxed/simple;
	bh=XV90fwG69vLQHPylQZmq2s3t+KbNFSWj15ckAvnLpqI=;
	h=To:Subject:From:Message-Id:Date; b=EhrgUV4or2DzQ14uDkobXdqUAyAGmpNdtoTtvL3BGrhtZApe1UsAVcqFeP/fFuKgf44Csc3cl15GvPSRyBA5L1jwum6zSIU7sIdhGHzycn++sg64skbVIl2IBWFHoHTfc1i105XRbeLVYjZWwFsxh6zkj2RryKkuONNPmPwEuTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dk74rIlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dk74rIlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7830C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761490793;
	bh=XV90fwG69vLQHPylQZmq2s3t+KbNFSWj15ckAvnLpqI=;
	h=To:Subject:From:Date:From;
	b=Dk74rIlJmyRnBN6imShrgnMyb26POTH5+pR78hgSPFWTk4TaDW3d1qiUtS6AgUpwh
	 0pCHOxGyamcY9gTYGoGyb1Um+0sB2I4JAItEguZowEfcYculaRhkkKnr79UecZ5fEn
	 /au2PO03b1OvhHre58kEnB0F5H7ViodUeuXdqwHwUBxBOceMlQOWQaJfnGX3dPHxZe
	 SclfA2eD+bHEmxH/JEgNe34SUHMK4ZscqvnT3masbsEa3roWX4i7jx5DvNIWUIzUJe
	 5rxBdQhcaHEsYZEiW6pWe6k7N48WDk8iweJoJ7SIRw8pNaHHRMHyxJyu+eEznJRTBv
	 URbEaVmZtTXxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986C0CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149079359.9960.17614344249107330927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972714fd79e5b165cd4c88401ede0627695ea1b40f37c1eb2b65601365ae28a5
Date: Sun, 26 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761490793
