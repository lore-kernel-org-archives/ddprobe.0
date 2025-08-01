Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AFE4A1D
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754057994; cv=none; b=CsxnJAsx6Z/xnC8gqtLSeE/Rydp293bQUKLRopZfsKb9vxzYsWU32jkj5uSAdUD/wZadVfzewGFhPOmLsg4zn013v5QsnWlSGzLwmH55lug0wK1L6fisroR2AjwirTfg8jDYMWqEG6WkqmbmuC8WzFgoTvFT7vOZjPCDMKPS61E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754057994; c=relaxed/simple;
	bh=HZOwFOPOZUgLpNf2OJZXG0LXkLs8awOXcPckMyk6h38=;
	h=To:Subject:From:Message-Id:Date; b=EN9mdUAQkDO8N7F+ZniMQTeJVUjt1mNl8Qar70u/6R5TlaB+d0UtYoP4s07QQTtUyqhEV2ewhVNSZTGDzpDXybB0OQePDTjaneOVs9AY/YN699vniDZ+33TCPe3sHqQRYusdNEFlnvp6Ebpx5Qi7Di5Wv+ohrD0ussA2HDwKZ6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fI/4Oy+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fI/4Oy+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CADC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754057993;
	bh=HZOwFOPOZUgLpNf2OJZXG0LXkLs8awOXcPckMyk6h38=;
	h=To:Subject:From:Date:From;
	b=fI/4Oy+B624hD6wRUgTGZEkPpgSJljkv8RyU/Gn+2dhIQ4pRF2uElWNQBktXXQ9G9
	 REjuZurrRfkNLGV8waNc6JCg+NgIJCsnYxXN9FOZRQKrbv2O+jsSEbGIiw4LnjGaWg
	 14iBpjLYj4FODhr7FTLVxlCGOMYAvaYQAcWsmd1toU54Kc/W8FwsQe/BB5EzZBlDrw
	 cMnGeYn85hQJ7N2YCNN5eVsruw/TwgkeHUHzHK5tBgSzb9LMnuy4Vjohw6ZDD3AbgQ
	 73427wxqPDSIbeQQnLzeDgIhi5HWjAfotz0zCi0Aq8x5mXvGU3r5afyFpBussNK782
	 uqj9XIAZ+Fyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DACC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405799358.26670.16248636605532915113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0ad5c62390f9179f4109d41786310aff252bd992f1dffe309b5f65accfe47e
Date: Fri, 01 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754057993
