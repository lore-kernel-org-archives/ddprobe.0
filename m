Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E00E25A62E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767573234; cv=none; b=Yvz5YAy2Yl5JiGdiYR+l4KdJwytcYM8Rg7rEi1p7tyaXEpdSe72cO2/rAubunpR8FlsQTGnENU3ic4i+jCw+iS6wPDto82RjZZZrIO9Cl47kGh+x7wWLwMmnOYRuEYRUiut43UJVeukbYzreWFSF1Oj9c37xW+6ABPbzfN0TdaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767573234; c=relaxed/simple;
	bh=YDF7FW+feaJhNVfQAUtIxcKcZ1CMnEueQO99g5sow18=;
	h=To:Subject:From:Message-Id:Date; b=AeF6Alk+cXNZj8dEasUSOnALJxaEUBzcThF6Wejm1zDdMhqR/bDEXrI/Xrjy0w6bL63HFCkhEpwcxPpOCbqU+oXHsv7XvnEtzZnl4lAFxsiKoWTQiaaWDpkWliPdrhMUhALPCAwWH/IY7CPIvJv+goXPJz5KrLEWFmAzscJLzD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrauK8Pu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrauK8Pu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4583C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767573233;
	bh=YDF7FW+feaJhNVfQAUtIxcKcZ1CMnEueQO99g5sow18=;
	h=To:Subject:From:Date:From;
	b=jrauK8PujIUvhqjzwmhfi8RWTFe+U1b8T2SPNysKaRdKVJgvKfzimv96YHYn3/QmV
	 W/FtI+PwBvWjHcnRJgTxqYIPFnjKnn+jQs39ziqyNgnner3ENhULJYdchE2TWewp+Y
	 03kKa3QebUsIehyrH9PDkFLt4qLGuuBjuowuf+7oX6yc3jAfbKyAWZndxpogOXzDs9
	 p+BQIabPFGvsiBRPF7aEHFsqMJeBu4e6F07EAzZE/PQDqWuxzntnEsRUrDeM50JgYh
	 cwSwpxqA7wSkUymNWO5kF+nu4H1UQ86pxPo/cafArBLOo8kH8bgB/BSNpxSOGUSzuA
	 u5npVZkr8A2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B7C2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757323359.32065.4220385974259198241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2aa237b3c11b9a7c9ff0361a7ae12b605473b97ee5873783fca96ca1a7a43d
Date: Mon, 05 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767573233
