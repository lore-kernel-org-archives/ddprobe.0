Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466E017A2EA
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759595394; cv=none; b=gYrXvavR5QtEz6VBByV6r7o8RYs/Rhdz5S/LE9/aMpPYb0L+QkGqbvtsZH6ccX93PRt8LW2UBLOln3Pj27KyiyIwq7ovcVXfshIjUjIpLl1DxLW0tRT7fDTHgCIQmxUVnqwW+/Pac6CwcwoU5+uxAhx0IrBIggUCjiuoatmRpFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759595394; c=relaxed/simple;
	bh=g6DY2pOeh1pFqLFRFHgQo6Hiw9Z8y1FMBbUZU2Xs8LE=;
	h=To:Subject:From:Message-Id:Date; b=U0MGIYovEepHtTOLGH9zKiRxVKJtGd4sXDgK0Vwtn3rTwBnRRTN5ZOK659FXWTJKU5mI04Lk85tzKMwINxuqXfEdPOiUXZuOBI9kDSI0zHD+ytJc84xY8SuPDHMDco1k65orXrUZATyv7HzK36RQ9j2v/BJfbtjbuk0KXMsJpIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WM0pCbTa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM0pCbTa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DAEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759595393;
	bh=g6DY2pOeh1pFqLFRFHgQo6Hiw9Z8y1FMBbUZU2Xs8LE=;
	h=To:Subject:From:Date:From;
	b=WM0pCbTaPm/9H1eR2bnMttvW+v8VhPRek07p0xjDWhI3YGOXltdP64eeG3eFq+tnC
	 o6tLEJKX8EG08H6xVC6peDa3p+HeEQ+3mDVXxcDZW3kOApo7DOA/4A2UoZhTXs19CQ
	 PpOLXy9XxlkVruYvKc2qMqAn7gtwQctdILYOEWqG3N1RtCEragbUBMBqhaTxk7hFhk
	 lejXLo2YavGj+kfm27IJJDubvTgL5NQ9/hnuQOjGYsn6Vv45xULRK6HYERkqNefgA/
	 gq2ghcO/FgaEz6YgfaPK7AgxdNniylGb82TUZun4ensaKT4aJuhpuG2kax1srAa+Y6
	 qBybdRSSThNqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C75CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959539358.13764.9184015274114526863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd6a69c632cd803453c6649d67819a475be7eb925a2477f79904c94e7eab529
Date: Sat, 04 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759595393
