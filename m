Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4321D142E83
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762020594; cv=none; b=MOBq0OEHGQ8yimZuFT+RsCLzC3c3F2WWW3KBYI1McrAbO7L7d2zjfM8GGftGtV7oB1UZgGCWKU8a0kdvVuTv58f4NBdnZ7vg7ee3TYnIaUNRjO2/8cZrVNkC41bMxwytX8ny8KmhYWhhyM3NuYqQcPNetwpdaxKjbQBrkOuceNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762020594; c=relaxed/simple;
	bh=Wc3QoRod6BcAxl5K/ivD2u7dm1VKgvww/ujvOoKcnwQ=;
	h=To:Subject:From:Message-Id:Date; b=E0XhsXYk58imJtW8VCHRjx4gOvGQwzNo5gtBwe/2Mx/4e04Hfsy/ZV00Jv9T/Ws+C0lO5Vg/z8nraY0UfqCbGOxGAg2NMAdX5hBceFbYDHG78mClKjmv/etVM0L+tRH4kpsPMF1EuRNAqbCcOEc1L3eSbpqttcOc11Ll8gQ1Wkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxChmgdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxChmgdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5802C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762020593;
	bh=Wc3QoRod6BcAxl5K/ivD2u7dm1VKgvww/ujvOoKcnwQ=;
	h=To:Subject:From:Date:From;
	b=HxChmgdFTJ36LtBkM1E/QzUvsb9TcC6cMd67qY2EAYdXA58rHjS8iFQfFlgM/UVdb
	 kGouBS/hKJWXDWYWF0iiZVlyWQJPOIzRicAwvmv60pX8Oi0d5A/Sn7nOom3oW2C//v
	 NpBrpJ3q8DyUTaX4b8L63IrBk6U0oIUVKPjIA3o6cs8XpKtxRuRDvamEL7sQ1kh7Dv
	 ExxbMKqE/tuMrm2N8ZwznaSgKPjE3BaEUGr2EdoxXGStB8wMl8I+og0fTgM4mXK0ug
	 eRZ+d4wwW2Xhs+hbmoFahmUr90fA9VWGty2U5AtnTHlLAqqT7O6QMNOjelkJd4tCYp
	 zWlV70U4mZNlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0CBCCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202059359.17623.9406544942679829654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7bc72a1d08ce67c912767fc8cb4beb4e512b61163ae0cb9dde2b4de6b2ebaa
Date: Sat, 01 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762020593
