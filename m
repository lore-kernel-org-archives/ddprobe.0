Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547F9305E28
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787180434; cv=none; b=H3GO0YQsuSOwuZ2EOQ+ZGU/fN/d0xt1FBSpOn09V0wIuWhFfteRRahi1nGfyDKrxxzq+yZK4ES/iiKx19G5xOvqQNTKCqUREGGpbmQWCsQkFCG/ryTwpFbUAxQoHqPDNmc8sABdY+h/Nzu57DVTE6J6++czIotFwxkMzpDqNuNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787180434; c=relaxed/simple;
	bh=qtk4GjI+IwzI+oE7UWn07rSsDzm1+MUqAIsE7pD/ewI=;
	h=To:Subject:From:Message-Id:Date; b=X3FCIGM3SgKaYK1928CTrJGocPMhyFgkHGZk9uJ9B3lrlYXefuXvNW5Ijf423j0YlP40q7R59mUIu4VZRkaF8cmmC/2581rRdp3ADRguw7JXCvURKGyeIQ6fkMZkSB4YSSgVZPrj6KuaQm6BnGJnULYTsTs1EjzkixHCTKRjqjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQnGLESX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQnGLESX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA523C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787180433;
	bh=qtk4GjI+IwzI+oE7UWn07rSsDzm1+MUqAIsE7pD/ewI=;
	h=To:Subject:From:Date:From;
	b=KQnGLESX9cd7fbRX8kV6DwVkOa1w2yuL2GERrDQFdNuxDjy2uusCzt7LA5ND5nq8a
	 ZdV5rOa8x8COWsoVdr3EWgqX3mMpzs38g7mG4ZaD9MKfSptxxh45QITH33RpbvRC7C
	 BSGPyXm7TBfPAPXlm9rX9xpqTrBtlPEfC7bj0wVH8YrxE7J/9d0rVuPF6KUQ4BtEP2
	 ogwBtZ0twvdHNdDueLjvYkpMtMsuyJGHZxPcZ2DCfbtdMUmtRw6QcOEkf6DN2o/PNU
	 JvLVNuvIMDb5E/+/F6Z4in4UMIud8WeN3XV2wFP98SvI0MwYAl2EwG6DsDKCPdmh3C
	 apkqIZnw8bu8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCD5C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178718043368.17717.9303563964706643035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 484ffab7425f08162e4925e9d5d4b76f60b7c18a417a08a908b14959e87ee74c
Date: Wed, 19 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787180433
