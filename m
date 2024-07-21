Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8C8A23
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721529954; cv=none; b=j3mk1GXJbJXcH8g8qNppc8MXitZQuZngzVEX5syL67dsg8gYndSNbUZQKhmMdBycMzGy9wdaISFDL4aL+LXbtS5fr+lcCntAbX4sdwIVRFViIdLdU4kW+DwfOBmfFFY45jQFhFI15ZO64DU1hMS4RfGwm1a9yyY6us2caG6XCiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721529954; c=relaxed/simple;
	bh=ivWJ1kW5yIfrAOKVi6AbLSbhA6nVVhtKdgEbO3tglLU=;
	h=To:Subject:From:Message-Id:Date; b=lBuWEmyw/WnS8LtYwqhaIwM3TceLkAwXNl9TGRC+8b4/tT6Vtcgmdw4lWhVSjxDT4uJd0t8XxhULTjEEoD3FJFR9zkf15NG3KnXsk3PvIGDptIF81gYPa8kIFYvCvkO2bYfWh0ohCB660z7tOxlgZJ69irDOXkxrVHnnmQLrcsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3VvDdcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3VvDdcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0073C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721529953;
	bh=ivWJ1kW5yIfrAOKVi6AbLSbhA6nVVhtKdgEbO3tglLU=;
	h=To:Subject:From:Date:From;
	b=a3VvDdcgRFPknowpX0ahTh7SV99eHDTTVa6ETT5FuD8xDirSquJNjFlWyeM/66lbP
	 PDMXexjmxaJCynC6Cr6V/GpZYYvVe6JrH4/+csZeZYzs7YS0aHbOJKiXxS70aroAUO
	 az+7VzXtfxxLbzrQX0eDL8fMvY2IMUyK2VJnBWvO2TEENAZIp7XNAj+F69Wwz8Lujp
	 7Lu02VeJ8TwjTNz6uvJ3ZrxCy1VDIO/Z4VXo2ZmJkH8kla7r/3rsFcLIc2VfZKAFaA
	 HjG8YRqDI8M/E5qbq+CM2pRFy6aOWSQ1J37oB+ZK1U3So+bKKj4r20CutXeUPGgLpR
	 1ebo5AFQ+lL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A410C3DA59
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172152995358.27774.7119445324321860891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a9b89f184738ed777583bff4e94b0e42e67663a107c804c8ee6c6419a3bd35
Date: Sun, 21 Jul 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721529953
