Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3194C182D9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737294954; cv=none; b=AnAzcIEA1ViDPaRUxXwv/S8H+vBLQ/KesmhtffrnO9PGHinkVBPfVrO6x50c7WI/3a+prpRJ3I90hGPY7AX6VBkD8vw48P7gGwbAmVCp5tM5a02QVI9vQ4sC972JmPAwrFIuWsG2zGgLfHJzIucZ+hczY8+CjwwlARyDdo/vjDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737294954; c=relaxed/simple;
	bh=Rk7esQcSHedAp26OEI8UhRG1IGnSI8N1dZJPb4FGemk=;
	h=To:Subject:From:Message-Id:Date; b=TjsKKJ0l5I3f8Glqcvebu03Py65bhSekdCQ18s3Hfed14h8yn9uRUy4apu2U4jcwvjlSg+MlOkvHi7Sho1uTslxV5H25KONlP5o8KRnBT6D/IPa6lpwNEnAqimir+MJu1m1s/ViHrTbidRquxq/pqhF84nkTnASERNLSjsDWKZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAdTw/6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAdTw/6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A30C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737294953;
	bh=Rk7esQcSHedAp26OEI8UhRG1IGnSI8N1dZJPb4FGemk=;
	h=To:Subject:From:Date:From;
	b=bAdTw/6ClBbladinuSSFOqr0ou5pW4HMxtEMGbw1sxKnxoLNwSn+ntF35ducKkCI9
	 3zh1sVULWuK0ejhWghWApoYK15CkQ7FWcZLomeUBuWq/6xShKCNghJ/iTedapK5VaQ
	 mdo0ITZ6FTb110/fKOae1HjdZRobW7hiCJMnEuVW2ZxETgU49jpSHdfsbUtT9htiQx
	 nLUROQVQ4cO3wK1MR8sVN0hEaS/VbnvnNiuNiVA+DwRv5kn/9XR8UvZhNJWxqExtNN
	 Ji1oChsVWsG74sjxpawTRPghe6U5CktFmdxwwWj9JyIKUVWOlTk/dYuaV7v4kNYlpU
	 s0F3DTOMIKbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9063BC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729495358.18691.11569936089053919256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e51a8cd1cf6a99de190fb23005f9efb5b059cd45da918ba91715a66e1a5a430
Date: Sun, 19 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737294953
