Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2059F37757C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774631694; cv=none; b=oz6vixrDk68C+rc5wuKyn6ifu5D1kiw4eGhByNdUAfV85647GKSlySYUTWuKbvTMeqH7CQgiPrv1s3K9q1ZmVVuVy1vm1m5SgzTrPZRZkmhDLOpLJBGcKunYknGhRjY07chxEm+TveG/tOYOvV4ySQ+bhzpoGwL5edTJI8a1Xws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774631694; c=relaxed/simple;
	bh=h9SnhaBRhMybwYLzjwD9z7pLr4fD21UJBSSBgNFivxE=;
	h=To:Subject:From:Message-Id:Date; b=oVRVJuy1SOtHY+prXb1I/pHYtIoS4MCozHx7M6h4CaToFwDMF98xhaO1vWJ94yJ39E3RRB9mlDDJoaMBArtbag1/9uG3bZnxdMOeKIxqZZ44V6XfVJB3beVR/8WSw84+Yif814JAd2zqv28OK/jlKdAjCi54PYTfsLgrrxAR5oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsAGDZwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsAGDZwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA2FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774631693;
	bh=h9SnhaBRhMybwYLzjwD9z7pLr4fD21UJBSSBgNFivxE=;
	h=To:Subject:From:Date:From;
	b=OsAGDZwGW/w5E5CcYQWo0DkolHKtUvOoZ6HVs0P1SVM65TZKXacJ1YQ8oVmE3hLS8
	 7N8NZC3ENfVk7jlOdGXtHmELJZdrpsJu22ty0CNWc76qh8/WzrxBVSM0CJ+ltDmaWl
	 kiv5ETG1QzRumEyWXdIsNUqhFdh4NGsfDwLDBGRS1as51fe6oolPeuoTunsDLlWGrC
	 ux/e7Puy7Yb7onIFD//FqNEDKKUX0W7jRVHneGdRTz59k+WlQLf2U3USh2FeG2TgCj
	 mC0Q4fK4N25nkPMJ+5AS5hgMUAzFpE9wuQ3eqKswLY9Dz3GKyFTgMdzKHPKT4l1OcV
	 lnGMx+q33txwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E910F285E
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463169359.30426.11168996240423324126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561f9951d2d2342c9ed93802f7b800a0aed33b62c6b9d7632ed6662579a60024
Date: Fri, 27 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774631693
