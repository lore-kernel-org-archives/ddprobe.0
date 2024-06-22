Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105EC1E4A2
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719069143; cv=none; b=SxMdRPa/dCHRCIwLZ2LYtYMIPoxATHSnNb4OaLZUBVYY0gHpPXU9nqOlnSxEDU7kLCBJ4OpPaGJX85mfHYqMgiBoks+5dk6XVI697kidBqCxoxhgx3X1gJsfmnRreWSrF1uZURQBxQWRVxrT4SCschd7zrodOJhNIDFhYefrYsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719069143; c=relaxed/simple;
	bh=wiP+8XlqBUemc3o2SqgEDaz1Dyh99y0vQR1jhSpVrKs=;
	h=To:Subject:From:Message-Id:Date; b=dgdsDacRLduZvrBsVLyGPLRd+PZBzZoIMtX3I0GAP8rU/bML8HK0AQwiBQnMq8PIvEFjL9UMLv6yHQ9CuxJ112jW59ao4+h3FIwvMQkidrH8gPW2QP+LrSpIGPnFUa6UBytk8FAAqR237SDUeU6wpaqtrLulJ63C4HdNrxsLtIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKefw9CL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKefw9CL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E482BC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719069142;
	bh=wiP+8XlqBUemc3o2SqgEDaz1Dyh99y0vQR1jhSpVrKs=;
	h=To:Subject:From:Date:From;
	b=nKefw9CLb7RRDtZBPfraEdtWgWn9xAfHZlGOX+n4iPsRmbMtlYyo7750wryh1EthD
	 tMFfzAdNCTGlYgakzujuwXxVf0u+Xq94n0uOevJ0+Gs8lm0GuG+EvstSGCXbcRfGyW
	 8988iyUNzae+sSrjWtUiUAfJfSoM2lI5UNUDJ/YwUTRJM7yaubOZwRXFAzzbJVR0K3
	 mdVZuHZiTl7sbjKRobthxDgD79bHEWsnuCFK4PYPBFq+J7Ejf/TmZ3UCZUY4wxezix
	 lkawMkfxTk6FtxmTvJmeo9X7Nxf4NVwV3ry+8YgXcR1+DZBZ0ewK29sP32SWzQv0vR
	 9eqfJV95gsxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD2CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906914279.6820.15095270982705410428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d055838c5bc7bce4bfb97b4517f78c0024d811e497e5f50b08a797fa1e42a36a
Date: Sat, 22 Jun 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719069142
