Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A37A1DB95E
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765233174; cv=none; b=oCbFGR+xzU6Hu4twoMYPOPqQPmULfr4u0+x3dsyMK4Mk+9LqxIXiNXvdgTQ/Q3xRAo8BB2HeTMxsvFI/DcfMHnOwq30/gtEYFtr7RIgQKTRPs4cDl3tnfcPb9XqCkrefZmZ4gavpcY9Zn4dkijt1+nKivown6N85DgS9kVjiQSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765233174; c=relaxed/simple;
	bh=ycbFGLR6u6noKHTYeR+Ekdcm0+BwRNndKwneW4V0lgc=;
	h=To:Subject:From:Message-Id:Date; b=Zi8atS9eT1PmM+reUGWu0Op+UVrefZGdFl0ju7UPcabjGaAP9e77re/hh2Qb58bN9YspjE9mwpn/vXYWC8WELHrvNubdeSxUwYRstCuzJKbJK/hHPKL64tUg0KPcynlEuNzeDC+UwXlXr71a2yEF4DMIHTlaMRR5lSjBv/x1ivU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUVxaJwu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUVxaJwu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5384C113D0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765233173;
	bh=ycbFGLR6u6noKHTYeR+Ekdcm0+BwRNndKwneW4V0lgc=;
	h=To:Subject:From:Date:From;
	b=MUVxaJwuKlv89aNYMk1rXNx2o8Wvputb3PkmeWhcCgdZpqoFYaGc4p5URd5wq2VBg
	 GNHhdGSu3uQuDN5hBgux1H9cMlIUJKreNM4NHzMh8mHf+APx4BFBUTaKIx2MwGjeet
	 UhC7M1ACyo7cOIusFNI9qe9dETOpnIdAcgzVhTC+T3LlH1/5X9HxBY1qDfeYlWXHXQ
	 Zm+6UQXHapKahwh0wxNrmOPzM5Avx45lx4s8kiZII6Q8JW7KBbt7Y9mwt1VG8f8bB+
	 bd6IcmZL6XnaVtaa1EnEwAbhhFn8RLsYXTJPKwyYQUV3S/e9G0SwfWlKaEKIiWJlPY
	 NWrY4l8J73a8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CBD3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523317358.30174.3908299935928954526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7925655d908358a43c9f6eae9e8655dcac0f5ac1683cba3ed7b364a6e428df65
Date: Mon, 08 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765233173
