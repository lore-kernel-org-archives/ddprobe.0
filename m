Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32734320E
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734237954; cv=none; b=jKqOCKLSuaEQgpnmf9QKKHGx41fMLt6hwWbeQHnQW2jMDNUrTjMlxPmZ6W357y3iuH0Fsm52Uyg8AsLNiB0W3SC/giZmVFLU5y18Mo+YDfzB0Ou3KM7A02W5/alYE2eohYxWBrldVY6kHEDSG5Bq6qV7yqJusWyOWVnTc+h/vBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734237954; c=relaxed/simple;
	bh=CnoKXEh9eOhGjp6Do970r/baeL2ATJjyaAErbF5pBro=;
	h=To:Subject:From:Message-Id:Date; b=u2NJ+ziQuHkvXSUbYmclRhW3IIaGuZGD/nhmLPB2NEpHsBvR+yJmZ0uDjLHDjGHBCNGUgpLz5FokbDEAqjnxn8S7WigTrWrUk4/mW/7hjI/+BWK4HeI4RvnP82Bjey8TkIF67dgItUcaasz727WGvnP26n9JZMI3WhbKnDOtDAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICCIkvCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICCIkvCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A4C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734237953;
	bh=CnoKXEh9eOhGjp6Do970r/baeL2ATJjyaAErbF5pBro=;
	h=To:Subject:From:Date:From;
	b=ICCIkvCL92jmGWJP+DXFvBU/ENBzUf8lI7hzt38LbSxJmAd50HOjlZ1rePlU/6wzN
	 1DpBFN6qOV2hAjKnnMftQnXp+c5Qdkto7HgFaT2Mkv7kcxbvJSSOuCx0K2E3Oa2x3J
	 b/OgOWtNX9y5uZdeXlnE2687aXO8ofp7kaB9X+JKbiigHMcVypTLNUzQ/YhAbaKtRO
	 dHkAzSxUYJAZJQayjkMuk93LVOQYA+CsabhnrcBiO0tjyRSZULpZ5QBkSUiAY8aSDY
	 27DW/Ah9VEREIb+z+ywTuYoBeoq8ia/fXp72VfebP9Bj/F6AybWjPRDUXMHMsC1fMm
	 4UnHacjSBnqFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90005E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173423795358.4590.7702968478702624246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a7ee997492f48ececa2d8d2d76c5b5bdfe8c1cffe17c1e93c3a2d78a3742f3
Date: Sun, 15 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734237953
