Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2395C128395
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752226194; cv=none; b=bfC4wUnJ9BuyPhdeJJWCJ1ehYdvre4b8l2Iu9GhYDTyfC5G8Ou9rOKVFYwXGscbjqUXRxYSBmIImtEVvV9GeSGPRGw6KI2niDsGgwChdHt6YkqKxm5W5qDUAk/k6iTqwvtpiju/Fjit4jvwYhyfzTHgH+r4qZ5KORUrC+LlWKwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752226194; c=relaxed/simple;
	bh=25HDjgdOZ8st0XE5qf257FJh+vedfv+F/zpmmSkTpec=;
	h=To:Subject:From:Message-Id:Date; b=nzQORkgO6w/onpjuyV8yxP9XvKf7PV3WLDbuxH+8Pv9jJjfR6zGRG/NcAmZ7mwRuIQDIk5v0WJyM/5KZcDamjIZWuk4ezeAGnaynZ+8qjvLCt9sbYFbfLzM2ip67q5sDuFNXAh+6HaiI5WrFixetkyYhxmnl3395EkE4z8HiOHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDZaPmQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDZaPmQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A846BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752226193;
	bh=25HDjgdOZ8st0XE5qf257FJh+vedfv+F/zpmmSkTpec=;
	h=To:Subject:From:Date:From;
	b=jDZaPmQyYrHCoOth7JuBke19shsTCETB7tQQXB+vsBdTHf8Zo8HbRiSDlXSigQT4A
	 dXCUvygYPgoVBz9QnpTZV/gp5hLFwECRbhOx+qvCQAb0LYci+Ktl9rAbq0dxj4uZz4
	 oVAcHKRByUTZ++ogYr/qzlO1p5BkOX9al3KbB7suUkBrze1pVekC0QTjpUCZKE0kmA
	 7T+IqF7yT1AH3imzmLvFYkC3x3SRiI9fo3hO0Bvsaxw3Tpk0q+EigRqPoagtqfPSze
	 DJYBia2a3gNBt0nfaJIzYRHwuUJ/BeFiSziDCqLIGLFVZbMLYGJvllxo0h3AlT/FvD
	 mVQ2wiMAXzJ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A17AC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222619361.19974.14088095354632158361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb7691e8bb5dd6921ab0b10719318fa7f4f054faace36ac9c5b1c98b61128ba
Date: Fri, 11 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752226193
