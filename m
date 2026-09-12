Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D21435950
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789255234; cv=none; b=nbI7pRlnLe1Yy3C76sOJPHa27b2/Z42AlHTGjkLulQG1KV/sHIe8eNebuSywAJM2ZZAL7f4LlVmqnzopDuGVxhBpinYrkJsWMLJo5zUo0gMN1EtXHwFw56FVjB07aNhP+rRIG8n9BDwPrXQqZL03vW2R6bJhJLff42i8IsO86tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789255234; c=relaxed/simple;
	bh=I6uhavqJjA5qvQfPGIS8TafoxdZveTwWkkp2KVTOwLY=;
	h=To:Subject:From:Message-Id:Date; b=HP758sbasCAUDZT09lXBSpEvSOG/c2Q0nG9LGD1RvwaK5wnyaxblewHhZrCWFQnuhBHBykqii4EA18/FT3yklue+xAAWGzzkv2kd1sp8UlAzVeR0CZwECDaanQ3qtvJViL4FFICFGmyO/1EOWINUqZ40iomnRYI50xyJliaOONA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxA+jrb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxA+jrb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E0AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789255233;
	bh=I6uhavqJjA5qvQfPGIS8TafoxdZveTwWkkp2KVTOwLY=;
	h=To:Subject:From:Date:From;
	b=JxA+jrb288Nfyh1iHZo0OKysfRPuNq520nOtHKCIX3jDbi9qLsKYiNDT1NVUfiBrd
	 B1xwN3aFBRbmFTHalFZKgOT/KBW6ZXz+b50MV0t89EXanmebjGT2D7sP64e3Ucx8s9
	 12BKVsBoIGO/XwTZ7XUmTlEeJ0BLZmxTHkt5aXLYTKEH3l7+3KZGlVVFYeAou0n+q6
	 wVGFcESTVTN0YwDEgwJDvaByPobULNCjcLMGk9WPlSczxku/e+8mk8SsiUYUqjuj0T
	 zvtf98xMqYHND4FRZs1PgOAMnzAbqWoaJSZRZPojdxfJZVwaEl96uDVtYghxvafQDW
	 zveCJXhFDFKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC407C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925523368.29708.11365041251101901288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fce6df7d87c01ba73c91fd796d01843c70cbf3e51f650898df765b49a06b22
Date: Sat, 12 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789255233
