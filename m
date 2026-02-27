Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09443859E1
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772189694; cv=none; b=C3AZ/25Ld+fIWhUYUo7U/Mx6B4fLvpjnoozfr/AcXAvxQVT0ezvabMtDjV6qz4tOsRW5A81GOJn0VWFX72LDQ2pEsHmEmdelDXI9F/Mvw9323lMpB1NMx0JdfOz/3vgjemld9M6y+Ru6T7GTm88WvbNaxevezAlPyFBasu3ZkP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772189694; c=relaxed/simple;
	bh=5/TinxrhOvoEOgNH4M1V8Sq1s7neX+qnE2FqHU+3uDk=;
	h=To:Subject:From:Message-Id:Date; b=k1PSClWbZ3QpnbIDgsxqh361mTpezd7jW9h6RE0HULFwnWBdmpH+dNKHViCHzvxdaNJtLgyWTj8/JGmxN6NQiQ7XHNh/vTAJHCGtBW06cbuD/UdI6zIQln5DFFVstFOu3bPWGI4D8qSg+Wpbglzybubj8YtfByfR9Ht5HlgYH94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a30VzxNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a30VzxNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A360FC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772189693;
	bh=5/TinxrhOvoEOgNH4M1V8Sq1s7neX+qnE2FqHU+3uDk=;
	h=To:Subject:From:Date:From;
	b=a30VzxNVTM9y8XZ8JuMog/f96KDlLYPyFocvlLON/paAwEx4xJ6I/6TkML83cW+lu
	 2A/MTvOZOjRbupYw6SLdqBpd+s4NZgb7qq0UugFxMkbwhQQtBf+kWPbiFCB96EwUcz
	 QKinw6QxtxTSlaJCYtWlCpq1iow3GPX0HzA/sDMQJz0589RkeRaY+DY20uFeUJ0nz5
	 qoC/GxdXe6L3cQY0ged3r+CmfjipUJeUnH+icpjXcFWiXZ4lhjgJn0i/Fznlwpv9pN
	 MdKEbO1j00SQEjoN8sPNiiGiAxRq9z6RgnAe1e/geJnXyX/3nR0v6r9XHLnE7ZDeSc
	 riT3FvJjtP/uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58DFD7F90
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218969357.2374.11180399800819932663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182001bb7f0d7abd1faa8cac59e21e71a2cf26cfdcfe6e0f470c80ac356e8e95
Date: Fri, 27 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772189693
