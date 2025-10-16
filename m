Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29269FC0A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760588994; cv=none; b=Ochg2FoE2hoyTWuYARjYq0rdhHRJu/vLNrrw/UPG78FXZXVO7wDebYMzxxGOAY/4V/toLYUD6tV/zeQtW2dHeG6LBR1JhS1v7qxmFNOWCsRCok+uoP/sNYcgef/Vgfy/I8hwIrFKVypZj/8hAFmJQTzP1iKHqdYWBsLfHA48PW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760588994; c=relaxed/simple;
	bh=TS5FqvRVMcQMBeZIgFINaFQgP4CY/NcrFS5CFq9jOYs=;
	h=To:Subject:From:Message-Id:Date; b=UILdta7wS64CKRewvSPhnbWyHnQS8tH7nyyBAunN5NbV+Z6t15XzLJWpDvMBEX2UXx7Lv4tL4/GsegYyoBDKrBhGiZ0hBVEugFJu+kKsGSh9/jGQynEAgwIQgCiT5HM3YEdp6+oLDY4ru3Iv5KG4PeUWDvpHGCeiqoJchzFnapA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOiZnISV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOiZnISV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8CAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760588993;
	bh=TS5FqvRVMcQMBeZIgFINaFQgP4CY/NcrFS5CFq9jOYs=;
	h=To:Subject:From:Date:From;
	b=LOiZnISV/gkGzep59ZGqTdEE9nuk8gM8x1i89YeK4woWmJnbyJys0OEqt0+a1T1n0
	 7efPguJCECIp1+5FXjiXbKIT5LxrJfZMjMGG/X5KOG4iBYBLZwGfl2ig/YwZHq/dS6
	 yTGbVKSLuii/2sr43Sn4+mblVcHAKmXKzlrx2Rjmh+SKKf3RF5QiEndviqO4FZ67uC
	 CU3hM7rD0qs3W65112XMGtgNkO4WR/s2JcLCiuQJkZgHp4Jo8/JoIE+CSxSgNiDAcv
	 cUsPn2QYIM7izSQzYjOjf9PYjnUWYFFGjOW/2kM6WX0gPsSFfbu5jMxdI/DkjPtVKP
	 Az0EPQTkYS/AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA7CCD1A2
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058899358.12166.13770056243282609696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6836b6bae271febad688e8ed88b41fead52e4e05291d275e9abc7eb9889c9a6
Date: Thu, 16 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760588993
