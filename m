Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A73F1DA62E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773470694; cv=none; b=N0QCL3W41ZF8hiGcHz3H3wXF9aoRNKTUzRZZMQwGW2dkNdycCM+9efTPoraFpFpT2q0KqaTDGCfDvWs33EQMZEp3g7UEAON0WPCnX+ApSbGFpDnvYKzFwoG/rz+cjy6HVLSTZAy8h6JJXaqo9MD8BWwXWG5VXreylG9oraewx0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773470694; c=relaxed/simple;
	bh=sUnql6GEhnblXXRbvoKnlvpEsNzIwBHXMM9Ri2vrkeI=;
	h=To:Subject:From:Message-Id:Date; b=DEHia4LEWBRr4IUwprleVoxdhiN64ukz4maDFVW02SesjNGxAfY6Ubg/kz7u9dYax48vd3pi7AbS+iYsMj6R/NVV6dK1TBKmVH4tNJJYDmSsK/Dmyo7XIYTTwFJR3sbq/mosDjYVmMiTsxMd5x0C109B28d4YxagcnznI432Ovo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZyUuDsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZyUuDsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F58C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773470693;
	bh=sUnql6GEhnblXXRbvoKnlvpEsNzIwBHXMM9Ri2vrkeI=;
	h=To:Subject:From:Date:From;
	b=iZyUuDsdsHf8PKBZpu97YqIySoEgRA8tT6wcCH43KOCBBD4+29/CEGv/2x3pOdx05
	 Jrx/xfdYfScdMO8K1P9ox84XTqqpnZh2t8kqh3ESZJRx+1BWs7c6jlhKNKM37dxLUK
	 p3XdUmzskXyS4zfCGLXYZY6TcAlEq0HUzV01cXzE4y0cHy7DtHZ75VinL+vev8TsYm
	 HfcepCUhNaWHJevuZrHFxaUwOEPGnd/C8+7RX8O6mE5OgTEasKAxDxDSdxulqMYNa5
	 lNvD1FS8W53QcWGTgL6JHbXbI0P57m3MtW1A9z3P5dtAg+Cu5/ygRFcl6hJZTeIDkS
	 g48YiYamL/wWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B7FD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347069357.21770.3864801310064470047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a5d2946d1ca06907df6f9acc4f73e14e27cf4e0e45decd6c1fc3c9c5f85dc4
Date: Sat, 14 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773470693
