Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACC63F787F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782816514; cv=none; b=H4OAVKJzAwIr6wITaxJM7Oh0mjdk9nxqKqoDwiAa47zSGL7cqWtSp4j68ITRxWy2nwzCZw7S929CLvOu6LA1UpRZuBUAW61F6+v35DStoohtInpzBDrLwb6B3teLuUraGdV3ZXM1+GOansfKsc9aevu3ykZREOtmkoYa8oJ61fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782816514; c=relaxed/simple;
	bh=EJd0oFAYZqve8ILRH2InZjb0YhhrKVUGpFuQQ28TtBY=;
	h=To:Subject:From:Message-Id:Date; b=iy95d4bx4HsMIZkN5n8Dw7Chv/7UYxPYDYIe7wPbhVz1dGY1VDGCFBR1IrvaJQQuwMz68mE8s8cH4vn9BBU55UKjro+g43j0/XG2TM/9DnvjJxxO9PqEtiEIBsmrMa7d7TqazsFAJg4Cr6ZpupYfychQiW/i/JCsPqTXsplX2xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1SLcoRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1SLcoRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F33C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782816513;
	bh=EJd0oFAYZqve8ILRH2InZjb0YhhrKVUGpFuQQ28TtBY=;
	h=To:Subject:From:Date:From;
	b=X1SLcoRIjh1S8WPZdd/Sjtd/dtrOG1WDwL27xSKUGw2GlUJIsMwESA26pAEYcfNmi
	 W8+57C81585gBEEaqPc/zyw/3zD125sA9OMdjlvitaJJj8esdNYrQkorUEbvWypH+P
	 e9P4GMIgc78j8XhkxHTgRUsAbDNlPB2wnfvUMcrpxarOvUxqIlXUdXhOBicmkbctbU
	 WXLFxI7t09n2yW0Vi6AIJRT0hBDzNdsFQkD4KRhqLunBkbuQJcaG+HgQoUnl9QTjdv
	 bxOJmeG+Pu2MdbqchoX5Q9zzB9uOuyYI/8XJq2nqgSOX1eW64DcvNE3YDIc7fYyFmh
	 Mvy9/ZXeLD5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A811EC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281651368.1108.3302302632009319599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2d0873323337d91813da30d7613c263996785ce6bb18f0035f69657d2d8373
Date: Tue, 30 Jun 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782816513
