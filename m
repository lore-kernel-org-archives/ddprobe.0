Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA7E1F1538
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760860794; cv=none; b=bioaGr1qhaCssbRkxaEZSTmWQFfqoCCSqwebAMU3tBVcgINmA9f+C6pY1/ldvhOsqj9dC0KW+auo7GyzysDfJqARZjfV+t6LZMDsAqllwb8tKAqPIN+hF2WJJ6HzpDqpSwGjsnm/a3ioMT/rsVAI1Z5PaWzYMtLfoGySMP2EZmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760860794; c=relaxed/simple;
	bh=CdN6xpwCfHYbPC+FNeGLZT2AhTVO7VuNwY6/ZGivPmY=;
	h=To:Subject:From:Message-Id:Date; b=L6k+ahF8Ja2oTZWGa3roGbEvOW7Yt3c3+wvxi4Bd37VvVpSRH2Vn/4vtw+KPxUnATvhU9wCdb2obpKrrIvD5V7oc4PALifT9MWLQPR9lVIKByXOSybGERhJQqXOpX5kxLL5+z7NHKjZJ48L8B9QYAOtf0ff//XFhNcoMjrDPQ6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvF8stz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvF8stz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8394C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760860793;
	bh=CdN6xpwCfHYbPC+FNeGLZT2AhTVO7VuNwY6/ZGivPmY=;
	h=To:Subject:From:Date:From;
	b=dvF8stz85bFKeznK/lwZpj3v3TJWqaXNSvMIxbakeZKDMBJt6/NRZITygY1K6erE6
	 iZPpmj7N0jgGWDnydhy8H1Z6iPpt34gGLFLtZX7mc1DM+5QnX42n7APQxiiX86ooqM
	 ulqSRTxI7WDxS5VBeZwF7/87hoLqCG9cYNt2mUmopDmRTA+jgwLDk2M02gdHIjgyV6
	 4lmLQAEnFWB1CPfoUiOmqyTwwkC0kjjdl2mPLvAuQSbZmBJ57d1wxBxSdLtJTij4je
	 FPsLqoDKpaEW98Xa8k1CQvO/55oapKkHq4ZSnzJAf61CsAgCMmM79m1gAgqEmWZ0/u
	 Ol3GMl/SjtmwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC8CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086079357.27118.3014859378410163195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83ff3412ba8122f4a388a789890c571d24475c44f637fd52fd03e327207f81d
Date: Sun, 19 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760860793
