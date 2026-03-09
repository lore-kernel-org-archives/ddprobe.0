Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40173859CC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773057894; cv=none; b=RRJGBTRBRJN4qO09FQj0VQ87o6Tv1ZvPyjRXmqdGntIaxnzUJeyW8IBffV1tumuiF6hcNgvnON+ANoSDkKEjp0eX7gTK6OPFEd7my+FqpbeG9uchSLnYe8IxP7YygyC1MkFZYWAYPMspHR335QaDU2RNGBVzJ5To6U+0sf65lJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773057894; c=relaxed/simple;
	bh=EARoBMb99TCgldFOG/o9gUTPVwrr/X4e6PP4S1XcY7A=;
	h=To:Subject:From:Message-Id:Date; b=g00cvaa9wpXc3Nk/bMEOpietoXuF8TlsULnYwQDxzYpJ7Gq7xxtP+HQ2vwcSCpiXNoQEAgzatRJ9vrVWNijbrk2pKb3P9k9jW4Ffl2RkkKElW6Asqj8+chUeMUqJPPd3Dgl2gNcI/dEufrWhD7lo1CTSd/iVmE1snCuQm/G46Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxM+lpeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxM+lpeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E08C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773057893;
	bh=EARoBMb99TCgldFOG/o9gUTPVwrr/X4e6PP4S1XcY7A=;
	h=To:Subject:From:Date:From;
	b=qxM+lpeJiIwgVG97oRkM++QpqikyPWbdefe34t1UUgNuEH6Fa3ms1vLfxBIRRZS71
	 02gHiP/RuPx9zWPJZ1H4VBZLwtflraI8eO7hkQfu7EkMNN4e5jQ6FR9oJPpMZCfFLO
	 0wy3k3WVoSi4fsCRA5WxLaXOmB1R07MUwicK8xMZA6eXUc7w7OzH7RyOUb+hh1aDCg
	 zFzh4Kp1Tx4pLeDcyqYXut2h7dxMaTT6qpO3h0c2SanKEpRx5gu1vaki/l/sNq56xn
	 zneuQbWKuhH3dapk959VLo58h6R4paVVAFKJmA2sx7kQjY+DZY6/MilJJHnzNt8UcT
	 tAiAQnhQBddRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F0EEF3717
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305789360.20214.3046471006848296529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16680e8b38516820765f4691332343c886ecd9de90ae7dbe743171f04ae1f42
Date: Mon, 09 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773057893
