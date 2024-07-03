Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66607440C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719967523; cv=none; b=B1wjuQPGH8JiticB70GFirq/OVa5vnXAE0q1U3s+0r8USOcSkCohtZDCGcbINxjzSoKQdSueVsVMvELLamGiLSSBQxcJYorklAIWLZp7laprTE3T5q5dMaYPGxZ+AynyJvNcR3hezLKF4RXzPn7RAeJW0frKWhic+awtRmDyq2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719967523; c=relaxed/simple;
	bh=Ikg8sznf8qbeRkFe2dtlzVYYjWksULSf8HFbTDYtPfI=;
	h=To:Subject:From:Message-Id:Date; b=bu2Q2SnIXxoVAaaKQdNex1Poczh46NAIzoiwAzwrZlaDY7i71hUX82J+++kclvONtLMVOxyOALYAgojA5Z6OocwJyVu2GIPDzSpv7m758VhKxfLu1S4njYp1sZkmANKX0S3CR53R7bvO1D7QzAINr1C5EHRp/fCSYs/d42cAS+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRioaNAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRioaNAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBAC7C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719967523;
	bh=Ikg8sznf8qbeRkFe2dtlzVYYjWksULSf8HFbTDYtPfI=;
	h=To:Subject:From:Date:From;
	b=kRioaNAdlJozA16yT76ANyfU/yaZVyagKfK2f/u5qb5ELaklsiXA+AiKGKOEcYEX6
	 QZ7GODlPZ71pw4ixpf14TCyJxTrfxce9XqNg0EVsDZ0w+EbDKmv4hDIHhUSbDKk+uz
	 oc+wfwy/TdCngLxSNKgMjTiEk2anHOYhhhKJKypb9s8ERs9ojZSllZImXv8rgiJBp+
	 8eTzLn+9lx16HZ5C4gRCTm59hpED29e0JL6JSc/Vmq2OQgfiuHu+7W4vEEFcFjjggy
	 9/e5foKawDyiO1P/wfrwl/ZLTgDgBh+zjTMKo7Xwj1WS4IrvD7dkQ/iepTO8lbv3lY
	 LausCMLd6Sp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00B8C3065C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996752280.9388.5220584479920452194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0106871d753787c5c991bd8bc60bfbb05d099047091078a3a366d4fe2c046574
Date: Wed, 03 Jul 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719967522
