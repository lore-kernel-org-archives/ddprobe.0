Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18ED8313292
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765473774; cv=none; b=cDtcPJV0UylgpbEzWd0HyfLsk7ZmP8+ngqcz53h09cV5tnge/0jF8tO5K4t8Sj5lXdc7qfgO1MGS4sIGb95kzBQ7bJEZ+L75W2LvieKQX7zb8eQDxAk8kPw0vsgiN3cDNVIc5/F8avZ1H2CepZeMWyBhawLt3o+0p/xhnyFW2XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765473774; c=relaxed/simple;
	bh=tewQGueU4ztOwFgv9h0KJJKjP0ed23DhL3bgYXYLJPM=;
	h=To:Subject:From:Message-Id:Date; b=j86N+qyqdtrTBlhYyMCusVm6kL6XixQUVl32PeGjkhll2fH/vmj/1v7576h/hvSLkoYlz4NuwZigvRYhcFf1JaRZA36NpEOMHgq2dwUyGAIfLe/pV5lJnEPO21RTvD+JZZe9JkEkRfZTW3WyMRrf3iigxP1AT1WG+G0bbhucXi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlUgCHhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlUgCHhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8350C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765473773;
	bh=tewQGueU4ztOwFgv9h0KJJKjP0ed23DhL3bgYXYLJPM=;
	h=To:Subject:From:Date:From;
	b=PlUgCHhiHhV2HTjS1OVQgDN+8pqys7aLvzZdKp4a6vkSe4IW9whaHZSUxpCkMcgEs
	 Za3khhOOHYeXekVZDthC2DjH6voSXlEwYpjmDETpkIibA7zaICEv54akiWX0iJSxam
	 C/T5FDAeG3jNliOY2THZXxj2PQOKBqDjXzoQoCvX4wjx6gO5d8wKmZDOBRURpahOYe
	 wIrJE+9Gj+nq2lVT9Pgj/TAV54HiCGK2sTh58bn6hqHg4c0i0p2Zo3IpDkJSVxI6KL
	 MdoY0VVmaP8Qtytlk0aFilkd6qybX4mlpQFvqKfoqqRRpQsbt++EiCNYIn5h/Ggt2O
	 N7JHJGa3q9afw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CB7D41D6B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547377360.825.8105656992193998873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe563a8d1cf29f91e8eb724ce470275d77804b79d42f2e04d8795eaa42b90e81
Date: Thu, 11 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765473773
