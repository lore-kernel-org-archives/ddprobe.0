Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAF4171B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791069634; cv=none; b=VEirKkELaSAElG8fC0PiraclBcfmWvgYIYhkUAFjPeKieOTyARix57dMj1JEHBfppwUDCmIyqKaj6R/NpCLn2Q67VgsG18jfFY+F4A3miemugyp5raoBDViZXpUfY0LqBjXrr9/VHGaT3EEU8O1R+lNsoADW6NCy95Tx0yuleN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791069634; c=relaxed/simple;
	bh=BYdRqIvq6LtnuI+Q79I69ck1xo2kXrzhTJHE0ee3IuQ=;
	h=To:Subject:From:Message-Id:Date; b=emLFAJWfFB76dhuOGh9qlza9b1rbxVKeJsvRhd2vLpmnDktVPPHQtj7QJhcsxR0dtajRoNo7fHIeJRfgxiEMFEZ36qCBLVAShe3AoJ1kq8z42J4HhwWWG9kH1LpAYXmrNcS9n11/IbTrlK3lALSPkIoytIIyKyikvrntEJL66ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVGOA2Ww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVGOA2Ww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1FAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791069633;
	bh=BYdRqIvq6LtnuI+Q79I69ck1xo2kXrzhTJHE0ee3IuQ=;
	h=To:Subject:From:Date:From;
	b=qVGOA2Ww0LwdHEZf0pDAZndAHc2WO9GoH/ItoBN2zMpwwyRCtZlCQdMWjGHw+ZCuj
	 CBmnB5nz7GaSl8LYrvBFJW01tUYH9CUPuVH8qo31gom8Y0Ol/Jwa7B4E7YHr1oFXmY
	 dCEWsHCeJfBgLQQ2MB1bsBLqF+hQzzjNFZrGGKpDchyTbANQutzuEYQBUVcyux/Mr+
	 +GMHSV4xpqEfSlNR7xUMvdcUxrhIjVwjFHOhdMB672Lo58hxN3EWktqd//G/iKjN8r
	 JRTOUlhIpjnJLXLIFRcqrtE4LJRRb55J6LFMdrYn/SEssLxexlD/dlBk4P2HD3+CUI
	 RFXnU3JamM3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCE4CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106963369.29290.346054826547658439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882e5e1f3a8706ba29977e5768bbc418ebc52d8f9177311be14582beb7b99fcf
Date: Sat, 03 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791069633
