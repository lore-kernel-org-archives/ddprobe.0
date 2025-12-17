Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2307A22F76F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765958634; cv=none; b=XXMjz6MSKg2SEThZEENUL2csj++pm+EwFmeVM0UvW4blsoicDkMhCBuzBUonL7Y5+Vly2B8yqVlFDpoZ7Vh54BPaMvOfTIHmmKe1/JE7YES4rYIVeAM5iHjC4kFeVdVPExXLXgHJpPInsGPkdHAOPa0xz/TscMdjYJ1qtH/Xolg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765958634; c=relaxed/simple;
	bh=jWDzgmJx2jm6wh9EOH/z7tn7o0SvXeGOMuFrvSNAAx4=;
	h=To:Subject:From:Message-Id:Date; b=d/Q9j7dxg9e2Z0jVGhyqyMoJZjwD6TL+4ApVG3K8Q4/LyohXu6UFAoGUYlLPbBczsjkzPnGp58Ab/ZCp5RJpF9TqYBnKbJ4iGzoZh012lFOHi1bX1AV96EdoW2xDZoe/yxhJz8mGoBC+EWF1IdYO9MHSJLIWC0ke5r9YFMleU5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBsukt9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBsukt9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37ACC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765958633;
	bh=jWDzgmJx2jm6wh9EOH/z7tn7o0SvXeGOMuFrvSNAAx4=;
	h=To:Subject:From:Date:From;
	b=mBsukt9JHKDLa7JMOSlqHS+qbkvfomCgUGdvSCI/GNWxlcjgqSHrA0DGSng652Ori
	 bPfp+e/pIKTaaArhT/NkQ6qmEb8KQJd5TUvrca7Az6tJhjIyCxFlNlLptnfnGDiv7V
	 SY6ExuuyH0Onrrw02tGZeU9+LDSq+5VFeKWUaDT87/48WqLOJTPJxbDSeD4d4AamDQ
	 z6P3aQnWBNNVRKnpWTJ2kVxPBCT2UbeMSfbGvp5WKMtiBkbCzu7e7AUMTXeKkI4wzu
	 f628uXVZkvuTGh/6WPgJLq0Fd570ZHm+bSGQ70ySpqaC8ztZrXBLf89MLcDkR7Qrih
	 tPuShRMJzSELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959AFD64086
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595863360.12517.17690235508624055921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad58dc2383e0c6d85de7b20262275bdbe296df9fc7f0a22a202474a9ea2c72d6
Date: Wed, 17 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765958633
