Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529CB157480
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715016743; cv=none; b=rRJqwpuBo543B0nUe5jmgED6Tgz/k5vHG9Auorrq8F9cc+6C+g6ol6ipHRt5PHkSJP/5TDyb2gRtyUoSl+9ustS6pA/Spuk/kt9rGnaXJmVn8OxNJ+VIjQO5BCvY9/mgORij1Msy4BfIip757we/9ZHIG8TKRO7gID9D4CPpmEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715016743; c=relaxed/simple;
	bh=Ef6lW8h+YljPwe1U8wE5fJd0b5UC30KkneQVR8/H0Ac=;
	h=To:Subject:From:Message-Id:Date; b=gn0nVw48drVatJX3j2yPYNNI3FJaXqnOxhLVCuSaVk+Pg9BYCjsTvPWdS4+wy/v0PZXEseFV/MjwXLKHR/++g0WxmLGWtLT0KkzVzR2GCb6RHzCTWCY7wRzvhj6+bwP3OsLPPemJUdaFHMb3MeZX7wiZOofCQaLBfy8ony6tzSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akzvDidg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akzvDidg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6679C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715016742;
	bh=Ef6lW8h+YljPwe1U8wE5fJd0b5UC30KkneQVR8/H0Ac=;
	h=To:Subject:From:Date:From;
	b=akzvDidgF+U+sxGMOLtc9MKpJw6iJLOPAnlF+q0YEv77EpJX7OjEGC8FCg8zdA2Us
	 v8Nvs5UsctXbZRZGJoZaYlUJRJO2SzOBitPBjwidw33BtJ6UZ6S2CGq6tJZU/a0hoT
	 +LstVwUue7GqoYEo8yfkcieSuXWE8I4BglcmZ8N2eI1ZgB8/QfgWECodKA4cOZz0YV
	 R3KSGatI2eiDF41G7O6wTnK/0vW8Kh2QturKyqo1qy6pMKiqHlrEvMt8gZIdUwc4r4
	 lmH/hn4A4E4Btci82ibh89xi6Eohl+e46aSSTlHH1CftQ2f94mgk52PnxA5UDYzbgb
	 SsZQY5Xi2l7Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0353C25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171501674278.29410.15870597233461475417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52656840db5798899826fa1064a413645fd8f352b9ff16801b61d3e5fef3a2e2
Date: Mon, 06 May 2024 17:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715016742
