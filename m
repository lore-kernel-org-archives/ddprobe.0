Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4982E8F5E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737171954; cv=none; b=C46WQcDm/M5OgWPfktsbwAxPL+FkK5Xgw59bM7IR3GSJMyENsLduVR2MAa1XJQBboSI5rWKGYngTVFrEySIjg+jSSYn+d+ux7QdoSju5dEidXWS3nG0FS+XDNqpNOHDcipWVLE2zK2klR6wM+TFPTszqqrif2vJqDYMW9Zi/sYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737171954; c=relaxed/simple;
	bh=hVI0pNs4ggH0Q0SYsM7kbR+LjAcRX5p11WaXTTLZxlU=;
	h=To:Subject:From:Message-Id:Date; b=l1W7k51JXdVqseH3irgBLb6yyQ4qevAPPnMNJhvU1NPIOfwdMbxqbAvQ6ACFnU7+fnxBo803tU5uY9Bd6xivtCbBMG/VvlZE84c9iiZt13tv2DglbKMd8uNsPqK5cPeOXQ0ZC5WvHXWEDzHEtrOPKXg+4vtMbWLQNTpcmswND00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R72vt2yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R72vt2yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A875BC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737171953;
	bh=hVI0pNs4ggH0Q0SYsM7kbR+LjAcRX5p11WaXTTLZxlU=;
	h=To:Subject:From:Date:From;
	b=R72vt2yT62u/zxbx1XWOKhJ9sGG2T0Ij28vY0dyjueSl73OUk5KVvlr0ijJgpnm3e
	 R2ZC8NzMs2RIPivsiKtOkym3zHc7DLtV+pZJiT8hGmvIKKRO/3HWpREWWw1lybICah
	 +iT8CXwCi4WjSLhp61LEv734elBVdbXtxNG3oBc2o1y5GS2ObfLSzGvzZwGR94UO4v
	 iQQxr/02deFTOXRbHpRyXSGvzt/gUMDUTTrlz/i6mFWmIE0eZTWeUDJ4h9dlIKXm/E
	 kdAMp92/dbgsG6k+01ss8VzuuCij67MauGKo1QeP8/JyGqrN/QFfpRUcpHD9LllZd8
	 V9Dvc+1XfbwBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296BC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717195359.22166.5649708523965641958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce5a89944de9a66bfb5c68f66b759b5e7f5b4b371aaad1d236a6e97e7aaef38
Date: Sat, 18 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737171953
