Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0545C2DA76A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767991434; cv=none; b=U9MqUx+hCnmLHFJO0fCR/3MpeotKp5AJj8skGkn93pOO7/mk3g4uyTwYpPyAbNEmgLZw1QU/NGXAvIj3npu6s072MygC4cN1TCZWJlZbapDqeQG0uX9529r4p6t9ihEHlRXHy08s4iBpXnXxQwlolnnF7CVCeZx5CEKHP8l5XAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767991434; c=relaxed/simple;
	bh=oZI5vE/B0zcP5OCuUzg5RQyQ+jTOEjEUtwjv8L0RJS0=;
	h=To:Subject:From:Message-Id:Date; b=fxEfbSXxWy41b8H5RZ5UETFiFw9E3W1TZQR9SaTQk4mqppMDRnEEqVrhgIninSpnDXh5skZ2rlS9zGRRzjtNIgi/Ly8/UdKDJru5j5FsmLqjvwMn2tgxmh/dx4yyMInuo1s+YCvphCPwYANs5zV4cCQHbuqoLKuTq/NxUINY/cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfdVWaBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfdVWaBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5500C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767991433;
	bh=oZI5vE/B0zcP5OCuUzg5RQyQ+jTOEjEUtwjv8L0RJS0=;
	h=To:Subject:From:Date:From;
	b=gfdVWaBOOSXvesAUyVFVKRytBWZHZzaxgunD4Mg/xbfVyEtEL2G8s7R9SXjvtYXmJ
	 LSN8vbWHC3Vmq1u5evp8SK8/CJu0uVA7TvJG52EqaFXVMYB4FT5hdjtIaIGaYKHEDF
	 aP96R7gohbagkeLaB58VMBLLj44jrwbHyd+rwpDSUAFot8bnjulShkgIrq4iugYy+3
	 jyGwmoRD2vCfG0lSKTFmk86wr0k6aecH12QKPPW/IPQrDqHkn7Gim9uNJ1VdoDlOlc
	 BPixnCzPemXAlaV39on09zTBzHkz9maTWixAG5wUday+kEGskqE5xTXjHx5H/KvDRO
	 pebuU9AhBFU1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9277AD26D94
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176799143359.3600.13755008330963140954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895d431879044ba022b24161e207e32e536501b781901cd1350a0c0d48504fe0
Date: Fri, 09 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767991433
