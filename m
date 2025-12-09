Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284742F3C1F
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765304574; cv=none; b=gBV8EJhOZwub8Y0yzArY/Rj0kNVejcKyJPUluH7mjy1Oh4g5ZZvYifhq0KCT+epJujV8SED3n/id8ilGXNudiwteqiO9g0FaNGBYNRaCUcSStWCKicQ4a1U7a1XilWNY0/U/B/DnnA2k7Svvxe4Mmn4QivOwRTHd6Nsn2arbsWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765304574; c=relaxed/simple;
	bh=JPjsfLA7d2Uj0leF+XfyT3f1G9BPIAYQAgx+6cNJnew=;
	h=To:Subject:From:Message-Id:Date; b=N49qPaP0xt7PRbTzflpA4QuL5GH5xtJoSHmop/9hOMiD36W30EVgkIfGa7mx2oE1U6kxWvj6AVhllFUy6buCBQTdWRTSvh3lFOXm2LYHl5e4XuihIKmiSzIJ0Q8ygA3qq/kloh5l6lzFqOzJy2aaexhm6F4R0YI3N37OVKqUs98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGMiFnpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGMiFnpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF328C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765304573;
	bh=JPjsfLA7d2Uj0leF+XfyT3f1G9BPIAYQAgx+6cNJnew=;
	h=To:Subject:From:Date:From;
	b=PGMiFnpLNFMdHRxcyfEYzGKgXZ6i4LDn0+wvMdKX54XaEmdNnA4AFCo/Y1+lRou7y
	 GGnlo/iP/WaIJAW8xDncpDi35C4o1KvkDt7twe+6GuJ/rzQ6+oN144j9pLD+prLIzY
	 IfyglmHA64ng5zwGQoxSeklsWdHq+e+48pp1Dxl8plCRgRD1ZVk68HYh3/NNCqr/+W
	 zI2NXX6coldJGUAF+B7v6zHcVYmxZFnAa/RdU4xJE7bVIwHEyTxzxNSxTWLZFjBL3X
	 otsPrxG7wupivb6Lr1nRy6OP9AFH7gV1E1y/269LHRHth5m2KxhTViZvnF94aVmVhY
	 og5c8GZQpP38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933EAD3B98C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530457359.11469.3481393421308879091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acb4c3e6b7ede6e2aec189d2c1c9883beeb14f600c8a011fca2cfe18003ea3f
Date: Tue, 09 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765304573
