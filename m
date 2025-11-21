Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B86261B9D
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763764915; cv=none; b=G06/YKQpB25xmsV8JVGYLL+7HtNWFOsF3YVRT5XStt2+o0YjSQtWlt5x1aKgmy3yoTYMXu11ZaJrpjtMQuayK+F4tdPpQRIG59sOs0iZeXYBh6IL5YIS8c9U5r9rkXiiq037AslsRQuGKQTlP6PD4I65jrijd3gjHbzi1UxGqDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763764915; c=relaxed/simple;
	bh=QDt4bDceedGUHcW1JfP1xGgX20n24TRAZ3x8W1YfjKc=;
	h=To:Subject:From:Message-Id:Date; b=AQIzbyk6FacgnoN2Wm8Ftop9AVS1bK6g/SUdvPf7K0ymdJpEOE1zQJPg4QnGXwq6dzkHNe6p6xIu+RgSbbatFFpXdpcK8xcH9KZwMrrU44Bt0XMPLtgNOtW0/ubQ1RjHSIonmRg0Th4tjQb8DpeoxYgeYXUEQ5d0p3bgIu1fyE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKoy/Fmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKoy/Fmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD5BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763764913;
	bh=QDt4bDceedGUHcW1JfP1xGgX20n24TRAZ3x8W1YfjKc=;
	h=To:Subject:From:Date:From;
	b=JKoy/FmvFb0KqTL7n+0ki7oBU5D+CdW6qJrINK/6Jn3xIwHdnQjRMTIk8qyxxP46V
	 90EaOB4aipW25tlR5ns1RZ5SefhKCDUTNobCe9jP+dzsnm1bujpfhsDjWm2d0EpVHW
	 IaiLYHNhrxTxfG77eDiaenlHukRN2AdKa5FeD20hWHh2IKBmbhT0GctOY+6TgBlzNM
	 gYJBdZUt+zvD3uCYxRiQng6u7dfJMYW4jIUXk1zBevtWze5LRewkurMRCXo65yGx/q
	 fRfJlYSkgDCV9YnAEsN5EbczpNow782KWxwsQ2c4o7QxsT+dSvRscuJHo53hFVh09u
	 PG6aFYs5Ciwbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96119CFC510
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376491359.29058.8479354302760013408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cd9821c4ea6838e1f957219b0842f3a233a2a991f061acab72e80c671724e7
Date: Fri, 21 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763764913
