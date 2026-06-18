Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B0A30DD2F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781820394; cv=none; b=G8d62np1doT6oaclq7rUoQeCujFb+1OOlCg4B23Lj5AQzcJ/eAVcTZBhZUSg5316Vfb4qxzpOu+MLTQoNmI77zwHqJ1rCUynSYzhh/fvd0q1VO2I2zi5BbFk4f/PMviAnCwFNCqZY40Ir72q2IP9MCuG35OTydQsz5aticiA9Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781820394; c=relaxed/simple;
	bh=5i7+M8xA2OZrd/taHhtqVnOnQv0zNEMnAwFg3A0cses=;
	h=To:Subject:From:Message-Id:Date; b=GC2XjmwEhCGKtV5A7spslGCW2IsgB0oXvuXi/BgX7R2dk0sgKOZRY4zrfekq7U1M67jrWyWW4Ku5PQNPRafqNiVK0ox4lJd/nYvFYcmnzRLSNStmPXVyxdKoYfajdQ1cuGFwPNpPdcrIyTtQ1/QrOG/kHmu0hR9cTPkhESR/dDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gq1K8KIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gq1K8KIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05C5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781820393;
	bh=5i7+M8xA2OZrd/taHhtqVnOnQv0zNEMnAwFg3A0cses=;
	h=To:Subject:From:Date:From;
	b=gq1K8KIviEiLgv+Rd4I2ke/t9SXNW54/XxumHpV2GgduYJVQch7Sp3keCfppeVozZ
	 O/t9YQ8FpnO7VGgntZaI+UWhpDSLECFdN5hRIXFCJhreaN2OGPocz46yHOykNURASy
	 2rorNGmMYcvu+raEDNwCUJImerQcMldrRp1ExOv7JBrIdSRJlvgZkzfbWj7YXj2pvd
	 t2SczJwuvwz+xVy+kYJz70U/z3nx3AXlfJKU9C6CalwML3jj/Q8KTpUQ7anJOXUS3I
	 bvXKG28+xiHTIwH3TJdcikxnUvo7R0QQ5Sg0IwbKDxyDGVM2ZmcFztcgWPexng4XqF
	 /hrE0gVcp7Ymw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C87CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182039373.17790.14640597662131597054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a6f41f3fcb2eb129e3f04e73d48e7760f59c29de8c6b65921e84f47a54d63c
Date: Thu, 18 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781820393
