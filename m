Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7699C21FF24
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754514595; cv=none; b=okrHSiDyPfTN/AObMxEQVJj9/9esDOHDdUeGule1fChKEOaliVLzb5SO6pWlG0gjjquBJoI+NK7hNMVftY1920h3CLmOxzXs+ifTxVg6vL/i6OuBzN748CZGCUhRUt9r/laaWi7P1M93LJCqYQ2yAaRaN89xhjZ3XXWCVc/C4G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754514595; c=relaxed/simple;
	bh=uq/SupnawZqiI7fhUMtSIZnGT3eywwHvc0jP8GuLPDg=;
	h=To:Subject:From:Message-Id:Date; b=DgfF2kftoaCLRghJFvac/SV9MhnFmYRAAkv+IJHHo/PZkgAphUfI5t/ZUW3l6ZNrxN0aFSrvRTA5z1OLNcOATVaGBF94RN7ICeS2LUqZlaPIv4ZF4T+O2eO0+3Vq0fAZ/tfw3uJACF9ETJkcX9SmrMz3OpVM0heIckSVQfNKIwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gH9N76Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gH9N76Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4BC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754514593;
	bh=uq/SupnawZqiI7fhUMtSIZnGT3eywwHvc0jP8GuLPDg=;
	h=To:Subject:From:Date:From;
	b=gH9N76Q/LjVAey9pxoLbbJHjUDDlZa+db9XTsvF+dvGnK/YyTmTbfifYM4MvNndp/
	 OPh8OdkKSpGyV00HOlbv/sZ9ds3JGf5i33Qq5YNMXFn1zcUcpXsbtaMZ/y0ugyg+0B
	 A3SjXXdZj+hIPzbKZynAfNUaRqYt9U2Zm276UzthMHipYKH1TTR75NW+F0Hzg3NShM
	 zeIzoKpomCyLGf9Al4HdmG4+rmxGrzq4jgbvbPw6JElZCw2j9uZaDMlwHbc/Sacwf1
	 YJvMbnN8tjlBmwhvfhrHnAjSpyO4mj5v9Wig4Py0OV8nFSHwXrE6tBtLG63e3YJywf
	 3LDMehwZ2TxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90188C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451459358.15797.8703656878227046302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deabc6ea95d5176ba9c584ff48f0c8ee92c1974ad0a0a9f5715b8e6ad2abf9d4
Date: Wed, 06 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754514593
