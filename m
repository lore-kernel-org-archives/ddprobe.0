Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C0A77105
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721486154; cv=none; b=I3magGxX0JWvrhKTEfC+/khSxC0cdOI9eG8a2+rBIv6BH+YAJT51+nFwDLJSqai4OLZnODW0x/ZW2TiDuOViwXNh83mthP97NjypChK1WkFC4YQCMm8C3TfnGM9YG/Ru/LRt7IF7TLXngq0Bqn2IfHiDyKsjmdBgkGmsaF8Lgw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721486154; c=relaxed/simple;
	bh=uDXslKSRx5fugbHjtmofwSTBJL7KmrVyHNphfK8U0xc=;
	h=To:Subject:From:Message-Id:Date; b=aDryYW8fxQIOLb6OhfZcgdFhA/WA/9pAf++i14GfGBr9XGBAVXJ992+NIGJsvgqnRWi0ZmFnsO9ScttlyhC0GhWAG5JBzQ4b5QQLo/yZ8slTOdGs7YooqYBvOcsV+q9B+kYPN1K4L3ukosOn90WmNgBEHoWcm9JWl+6Vt81ruuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvsDuFqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvsDuFqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A119AC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721486153;
	bh=uDXslKSRx5fugbHjtmofwSTBJL7KmrVyHNphfK8U0xc=;
	h=To:Subject:From:Date:From;
	b=PvsDuFqiaIGvGNbGLLZWYUOJ+jwXHVTE+4FLykL+bqChjlfqR5tgnnEM/XS1aiWrM
	 knILmP2bdoTJgqbIlIWtjHj1cruFJxi53scx0rWAGhssLvO6i75ZjJ8eJZEuWlxjaL
	 SVSOXsetB27Utkc2XY7/0u/ObRqDEwTmLVLy17+7ED5BV7wy3+XoDhYmHPwBEZkgbU
	 iSe91bJ1JxnvQnN3ymbc3PPPwEHLbgWVN2Q6wyUf70dzTRBIQ+YTPyJkGGdO38r+0F
	 XYI+7bC3v+7ATdCprs4XzL9zTmGKLEzHW1pBsGXh+8ujMdB1bZe1tnVMK4oYUdO8ys
	 DfKmHQRpIpFrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92920C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148615359.29184.15541813572377566692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4befb1c57942e512831ea85a1be2f52419b9d3dc15483efd84b8206200297384
Date: Sat, 20 Jul 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721486153
