Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394831F461D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757811594; cv=none; b=EvvL7svOXgerkWHou6ul8pwD2+q3htCKyN92OTQLz7vuGfuJsINbXNkdvu2PLENuIanUCpsFK/2ltnlGt0EN/oQpZ0gHV7RJPvhlgh8+UHyGgOcWxHopGixxiX4VPDKg6xtvntP26mOTMUqajAe4B2drKTX1rbBTq+VWTEsXueI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757811594; c=relaxed/simple;
	bh=r4uoqWUo2P6ua34TlQiger+E9jxQQgGAKOpOk7whMr0=;
	h=To:Subject:From:Message-Id:Date; b=pm/eInbjnCvU285M8PQ2rd4ko8ZI7tiMsCglOLu8Ye3Ywj7589240eri5oUSE1AFseG6fgYZdjUyux3C0QV3UvsJQbplPm1p5l0oO0+qWgvccIyWRVh8GSM9Pb1kHplMClyHbofqG+mfPaAk64bG7sCgH7ylykJWfC/dH52v1kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNzkpb9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNzkpb9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9358C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757811593;
	bh=r4uoqWUo2P6ua34TlQiger+E9jxQQgGAKOpOk7whMr0=;
	h=To:Subject:From:Date:From;
	b=eNzkpb9o7u0Fa5T0CtLq5qTMpbxxAZL7SNQXlqwUzPUNSkBUc5b2rUqrv4+/TpOOR
	 pnUEdSwA4JygQj7z6cUD6pWpIuhhDl/hperct5qIlsc9zA3aj7MtikPLgYcpduTjGb
	 GFFVFeqekPSHwi5HmqLWGNIzae9Fo/vskqms4WudWr5+aov312vLJUx5yH8mOA98cQ
	 Tm5tyNbo8lqMfcYJSDl0PpzQIM3y1EowLbzea9WOZKGzQwJvEZ8capr+1hvCjyvAMb
	 dITlHWSYVEc1p+0rHsWEVsym+qYllRv+toxQjJlMxig3fqA88u69Lrmu/ZfZJMfe8a
	 WieTJWX4CA5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C5CAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781159358.24543.1804013556797830304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40ecae563695b691f2112355cfc776a63166f8361780c265e652077f9f244c1
Date: Sun, 14 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757811593
