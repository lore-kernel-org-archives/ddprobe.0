Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227BB1C6F54
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727802954; cv=none; b=tNl3lq87YhpOt29ZIOh9DBk6WRnd7DwqThNqohcdVOdEX3pxzI5TAdgMzElmEcjPXRfPPYnbLBYdbzgL+Ldlu0Ng3twmHdaspYZY2nZZDKRw5R79hxSPgSIjqdZoY63y62+aomVm98XaXW0febqcDa0Ohce7LLJzWkTLaMsRj4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727802954; c=relaxed/simple;
	bh=3ZJX7lp4fYEVfKUOOQF0ubzeyFLVAXJxSEciuGVg01A=;
	h=To:Subject:From:Message-Id:Date; b=KgYcmRDfFuL8gJNDrgOTUVxGPZkFcqwp21l8iMYJpQSOcf290WPNGG1a6cd92Whl96obxu1QxcWHdV3l2iw2r5do78SObZPd57JyHVq7Ufs7BRwU6UZ4RuU68woTuHTy7L4KnRRyhYuTjr26gaXpOgcoiO6qXLOULIGrWxXCgpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F072IAy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F072IAy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A317AC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727802953;
	bh=3ZJX7lp4fYEVfKUOOQF0ubzeyFLVAXJxSEciuGVg01A=;
	h=To:Subject:From:Date:From;
	b=F072IAy/7FNMIF8/mV1j5/+qG7HGB/SRXSNx+OP4Arfzj5Wh5Cdp/hyTCHqVQ6XlR
	 PQRbqtWuHovW/SlaGqiGL9YGyKNT00x79hMlOB8C2BJGQ82x/A23mDFVNan6EnOzhM
	 LQ9xWZqOmC679tku0P3MEBsA+eRSp5ZkPcYvNouGg91ZDD3Fcpz9XNxQ3mmbjawljt
	 DunrpxUzO4rLsG9vyrcnWcn4C1QYmOQ/7kTtyQseXUhIdTTMs/TT8pXFgL5nNlikTG
	 AuUoJDGE4Lvhgo5nd8MX631VXV5LMdjgXC4fpd4Pw1FVlsqklytQNeIO0Crrvl6t6l
	 Q8+sjMscTgyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB0CEACEC
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780295359.20484.18208480817274070944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4008b4f58e89e12d26fd47409283f56822fbf26356fe500375243a03c4132463
Date: Tue, 01 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727802953
