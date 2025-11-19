Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192032D063E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763589114; cv=none; b=cJnybtesVUHO3GYWBJ15yNl9E1eEq5VtrUrWVe+6QPz3xNXmj8z0tZq2B9puEWbkbaAStlPF6nYnDpi+7D9TcMNlXREOwGsRxKtEJdm4b03V5xL+WwlaBBWQKMQ34ALSq6Herh2Y037QFQAHCis5u6RUTmZgRRUNMkGMJJ70FWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763589114; c=relaxed/simple;
	bh=S7l3RtYDrQYxzGlRZQ83Pne5DSTQSeEq09DJCjazPy8=;
	h=To:Subject:From:Message-Id:Date; b=d2hOgdOQtSj4BteN9Z8dqB20lbueet0LM5VMowMFu0ektg14XqgXHvzkKLEHXr240VxHshGBYkqxxnjUBdjO5cB0uM8dUyEuNfEBw00cog8xRwSgMfiaOCYkvmkFPA7ddnUylpJLxfgz/XLxOY2bGYCSenyA8QhF9KfWx/SkQio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPdty9ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPdty9ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB17C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763589113;
	bh=S7l3RtYDrQYxzGlRZQ83Pne5DSTQSeEq09DJCjazPy8=;
	h=To:Subject:From:Date:From;
	b=pPdty9ex4HgpVder60xy+wyB8i/ERxofjSIATNO+rtCEydOlP7mXtJL1O3YvtzjoO
	 Alea0E+AW613XoayEdTpKv38vdFhgfRO6xup3mDymLq98sgPpzDudNkfQ4kbE9OX1+
	 lSr2J2fJ19MXEsAr8ujsG/dP/HwSZwpEKWPGzB2c8zL/PjYJUsTR63kdWosji93QII
	 azI8NLwtjTb9ADrND/ru8wmU5LxOlS7KfbeRtI+vSTJHYol39evoS6uCGtH9FlF2vs
	 u1EWeiPAJvh9ziQEk0yr7snylWOpKqPTaZa4E6/3r8aLN7SEHhL9lPUvqarmvoqCNZ
	 vVnLKCE/S5ONg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB5BCF58FF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358911359.1173.681976024187444436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3b86c4be67b2205b9abc6c8dcdcd8ffae6f61e19a5bd6a75da914f38b2e73c
Date: Wed, 19 Nov 2025 21:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763589113
