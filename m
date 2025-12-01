Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388602032D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764549774; cv=none; b=opO6nVg6/YJvBw1R08WBykseo5Wb4lFX7CisbTwRDHk8n18Iy9PrHEznS4rDuLmwSPRLof+9VlUH1BQE1y12RlYJyCGqKXxVCjJqTLsmFmCuf5ffochfsN3+kY19opy50+QWpmozSnfoqik3f5wT05GqdRlQerCD8n48B65AWWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764549774; c=relaxed/simple;
	bh=BY9DY+Ej1EmahZteEmqFgDZSCWAFBM6WpsAvtt/+KRE=;
	h=To:Subject:From:Message-Id:Date; b=jfMHum5Z5ykP5gbC5/QwxZcyd7YZGdRqsiLtfg+gynTWpa2YAy4cHWDliqvtdjglyAsDaaEYD4GrQAW6Ks4AthP76UfM73ilv9Ar3TemITpXmVlmErpk3jZF2fJk+0xAlwzu4/SMKiUdED9oxuhI023PMywvOqiopwxLFtxWzDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnOnJyOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnOnJyOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D7EC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764549773;
	bh=BY9DY+Ej1EmahZteEmqFgDZSCWAFBM6WpsAvtt/+KRE=;
	h=To:Subject:From:Date:From;
	b=ZnOnJyOSidmj68QO9qHGm21fQCjI3rLJlD921FZRV4vPxfIIIGWUu2+/7OMGdK/P6
	 9nv3B2OcYi/QaAytA+mV5GB6OVOKarun+mbZzheyKjdywYXF3Tsr5zOOEKbVadFVlj
	 0UPpmgT8Zz6SZx3Vez6zbf5lXzlwzni/HXpWMl+1Cf0IZgtIePij15rvXmRZNOvizW
	 tQcsZhwT15KfOfSKuhx9MX3Z/67mDOxofNv/h573V5zjGRfQvq4qFLewfTs9mefbZE
	 Jjd3Lisp5ObKbvc5uyHzZPIjS/NRFAjleTpP0Xkgti6aN09+TwhZe1i20O8WPmT0vr
	 oXIgXDvTgdOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94321CFD376
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454977358.19031.11971167126998770738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6bb1dab3bec78ad9f83eb3381dd392d24697610886c4e79fc4d138f0819c86
Date: Mon, 01 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764549773
