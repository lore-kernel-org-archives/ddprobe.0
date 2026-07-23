Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4897E337107
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784847634; cv=none; b=hvFYZd+QT0XySAcXojYf1zF9rV2MyzIIFwJU+pNKxTqd5flGoEvN2CP47ov3q8/m5umqqzldGuedP/nRTduDCtJQcJ9R/kp4y9SE0h87XNs8m7rojhXO7368oe3BWrUahNZfNx8JfuDmjSLolEzBqsvKPdXoOg4nBSFMKioma3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784847634; c=relaxed/simple;
	bh=5VBIrB+RqN7Jm2WICf4KEf+zU2zE5XAf09NlxJ6z8yk=;
	h=To:Subject:From:Message-Id:Date; b=kB9ucVj3FfVOoq1XK2R9/xNzD/hRXdwLFlwqqfXKNmnHk9gF06F9JTpjGq12mgpOXxphVHpqJdtRqPAxAh2PAhBkDKqMTaas8uUflfabIokq7SbOpWIOzdfToewa3XWout6/aWW/eXhRjN6ZeHFDI1q8Oa7ST56JNFrB0B2T1Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK43e9Q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK43e9Q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1985C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784847633;
	bh=5VBIrB+RqN7Jm2WICf4KEf+zU2zE5XAf09NlxJ6z8yk=;
	h=To:Subject:From:Date:From;
	b=rK43e9Q/yEsehK2nPdpHtvSQfORW80OjPDEY0SE31eptfL1xXiR+klMN5P+fYSbt0
	 rWErs2HcY2QDP5hBdRpId4NtotvbS2+u2HbuD9gl67h2kFIY+x2BDDjdv3BbKyMyqX
	 rT+rK3a73rQ9E3Gp9yfuv2hqf6jyv3enQQGPlYBHai6Dz+JpSoy2z1kNcTf+Dok595
	 GGtQfcIMbh0nHlvD9ljbQdF8RJmjwzEShfhNTm16CZNBdk7dJL+freDT/wGKGptYkb
	 5RdvPU0mxQcBegMspUIivMAf97C3kOfq8/HOvQOVF1HudWCINGPEWVs3Xs6exOmXH9
	 viF4qTsgmKvCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEC4C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178484763369.22908.16975410934737546103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1f6ffc354e0afdabe7a9e830f5a2bc4a562767e95b7c0ce6666bfed38b7aa0
Date: Thu, 23 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784847633
