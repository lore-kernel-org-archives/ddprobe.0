Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDCA26E179
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767548034; cv=none; b=FQQams8R5qWWmtccbfFrYNZLE1ONn3zE15Y6wJVGWcl+siTcg5cjLuGs1P46UCcBEZbq/8HAkdb3KcqTp1ETUH1oBH0HCUEn+HQwaIqqMJF6FvAmXqQNZkx7AqJ6LFkx0EEJNo7tkuswNjloR+/WnGRo0C6YIuxXRZMX0Rj3+LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767548034; c=relaxed/simple;
	bh=s82adHyXNsAXXPomSp5hTPZufFu7yAPyb2/n4Cn++c4=;
	h=To:Subject:From:Message-Id:Date; b=E4qhItJuddJnilu7TGmlc4c26zH+tbT83YCNAWl2s8mD9vQ/sAiXEKxt7ytMrW8S1fZO+JhKD76B4YJKXLVWTnqN+++cPXXzrYAhgD42DUD3dIvz8uv7BpgtOF5sUQnDTmAHvk+bmuo+8sudM0lNAVuoTz6Rt1VLK+9vPQ9PSxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coP4rTlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coP4rTlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52B6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767548033;
	bh=s82adHyXNsAXXPomSp5hTPZufFu7yAPyb2/n4Cn++c4=;
	h=To:Subject:From:Date:From;
	b=coP4rTlGhRTwYJCGLFj17j8/oAiV4hd+hsfszlo7nBEjxYar3QEUAW5y4pu9SZnKR
	 7Qz5lzkRHLA5WL9GvJ7njSeJFN3F4Xjbt51gzlYzyS1KWUkqQIQSFk0QssiDM2T0bW
	 7VJpZVQxas4kln0kzZFfLHLrdDS/pQ4MfxfNgdqD9q33uxBo06oHCqjxOVNUm7o0LM
	 sEQ8NnRfewM332N1E6aKQG2jhOXYrCrCm/HOI61bWEZz8nZTou6+HqenEI+l8whWdC
	 psOJXYJOKqOw8lZ11Cd51lXNLbSlnI/MJXBGSc9KtQ3jblaTfNUF3xKPxe8mr3bm0n
	 eUX+Z3eUOiKXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9494FC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754803357.22970.8350857171773281534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8478e31d4979e0bf50da0c719288adbad51550fe8a77d7e0c3089789e15dfa57
Date: Sun, 04 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767548033
