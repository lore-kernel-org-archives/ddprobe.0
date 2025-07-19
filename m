Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB1F148838
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752926394; cv=none; b=W5G3kcs9AS7hVUQLJC7yjrJBswqAHOnyN/uYDs9Oexoitgk1YM4aiLegJVXsebiQlfqg/0YFmMUYGikUmka5xGHfO6VaynmUiwC5uNf/s7JqAgM7w3f5nhRFz7tI6tK656H400WTrQMa/DgoJGeEs52bqmgHjAiQ1d5kq/y+rwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752926394; c=relaxed/simple;
	bh=QYW7agpfU40Kj2kP0RTLujfNQ6NJRlIB/PTs8nMBZf0=;
	h=To:Subject:From:Message-Id:Date; b=N5q7AD8kbTKinNfUsR/BGnXuPlfnZGGagOYKIHg/Ilx6cp3SNpdlIMTx1spSN3QgnXioRY/wAkPZYp1PKu8acDKj8a3UuIkH/07tHBL6lVwy0tnqFre9jt0ef6gag68owAE1IaFhNAiEcSUHcuePq19BhGPPVZX5CVH2TVFAFRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhVGLb6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhVGLb6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CEDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752926393;
	bh=QYW7agpfU40Kj2kP0RTLujfNQ6NJRlIB/PTs8nMBZf0=;
	h=To:Subject:From:Date:From;
	b=uhVGLb6LWvwJ7Naz3+JS7rTftWf7ip7gzKwJ5DNJHQlDhhfB06tHtY9OfWIa68kDc
	 ZvX9rRv28tSGIsA3iNQw+axlwPP7ZhyF0lYV4zAOQi0QAkQ8Pj/KjezovOEnzadvXQ
	 6X2I11DC7vUoUfiQE9oxiqN9w25+K/JrsXOwll9GegTzv1LfR+7uN6zGyyy0H8STTn
	 XzkbJXTQhanhCDbnD96hXqghOE6smA5QYhPh3RafVmFBJ6Ekuy1XscKCZWUyAS9f5J
	 rLPEhhtQiJu0lXx4oIwaiVt+wRG4ZUAa1cr//6ePFU3lD/pcxrV1ZVAZUA4hIspJP0
	 ESRZG0B/NucpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C7FC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292639358.10436.2247842487919862598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3969d87299a24f14633ce3779b3f56800aedb881cad58c989cdd7d21de60c1
Date: Sat, 19 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752926393
