Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109E72EAB66
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763046594; cv=none; b=E5EljEbj8CQSifdy1cu9syk6im+r59PVzg/KeYQrkqqMsoVoRuiEtUMj/nQuvXNX1a3kpDFeh2sPQw0MP7zwv1HKP1c2PGjHmYKVg778PkbKJt++xKrwHRO5fkXkFwOmN30fTuMhpoEc0eQGAol6WzbkBLARkdSmWE24PHnI6YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763046594; c=relaxed/simple;
	bh=q8EmeVflqoiiP9YpWM2GaUflnmumEZLh4MygqHlSLQw=;
	h=To:Subject:From:Message-Id:Date; b=IueCM4WwNt2LC2hX0CxaYTlEPQXli4nxvpocMAZeu+jH2xjaWMnaolDuCF4mGE7FjXddxZZnkDCTgd8eo3X2r1lqSYYJUWlva52HvCgD6LH/VrH3oHocp/442kvksYZDcnPINxOZWX9Ddy6BUo1IOTaoVJQLkqA6NSibamMZGlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7U+RcvI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7U+RcvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFA0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763046593;
	bh=q8EmeVflqoiiP9YpWM2GaUflnmumEZLh4MygqHlSLQw=;
	h=To:Subject:From:Date:From;
	b=O7U+RcvIql0czwi1Tq5qfj+WvgsniDdskbmvRPNUcQ7ejpcQy2L+mw8lSmsCkImAh
	 JOd8ETfNZCgA5uWzFbRusoLq3Mi2k4FpTRxfCNsSN3T6FOaWAR7QR9kGcrEakS994Y
	 27WjJO87ZXLSovuJE9x/tk8HlJrGs8Bn1tAuSJ5mYpnuiq8xli9bvf0Izg4L3Fya0n
	 fR0zMoSjfjIZU9yk38d3ZHj7+MAjsMgYuvKEBRcwgtG8qBfUS7Vr1I4FHuRb8iAR3D
	 oVoqSEColTpB5TTukRB4v3YYOSwmQrV9DlKyh0BaEZTAlV6OlFkE56UqPw9HZQwatQ
	 UQ+kYXpuDxTKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F81CD8C83
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304659358.23424.14911144961738910180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93277c722aabc8261fea153e7036ed7a96a4cef27434054bdb2685cf251ba107
Date: Thu, 13 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763046593
