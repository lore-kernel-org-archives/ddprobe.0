Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4464320E01F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737630354; cv=none; b=H5w3BRBSkVik6e57QxB6N3HNFp34QHneiyEapDq+6VU5jmfb0yWpmdaZnfQTStCrCwagbsdFLBZeCgfR1HRGXQjgD6vGyCM13sV33uBggVRM9VQJaCfdVYEJ4CyY1s2Nr/QNxRKIRSr/i+wtF74MrFELkm5/33Yrp9335p6TweQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737630354; c=relaxed/simple;
	bh=fNDNgxLdZk91I9wmE3r3ipv1nF6IYrQGlp+FKX+tACE=;
	h=To:Subject:From:Message-Id:Date; b=LDF4rE4g+EINOG8AFO/etXA6z/5eJUGxyISZY1/3cnX2z9eHiWGaRjVM12Qwrg7VsywlHQe2EVihCDki/U3Aw+SDOgMNjyFVXFJ+Yqw5OYKlId7e50FZ6ZJxcClPV4b3EDmvctnFxseItuyi9MDHosELVfxh+G12NTX1C/k1F2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1ANySMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1ANySMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C90EC4CEE1
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737630353;
	bh=fNDNgxLdZk91I9wmE3r3ipv1nF6IYrQGlp+FKX+tACE=;
	h=To:Subject:From:Date:From;
	b=t1ANySMMrQdgYc2ujRi2Y/OK3c1sCLH3LTH+7HDgHWwXbPdSTvAjQ9TlpdxfLcIZK
	 s6KHbII/zETOVp6qjPBNp5Xc0eldS60e1UWDyMeSTisQPpxYV+C24SGflt1/nsbJd0
	 MZY6N51sHRhBZfU9qh4kdWmq35lu2xp+LioMxiOIj8UQrHqdMHgQPJudsrC/E1HyxM
	 Y8jM/ElgWsV+pGvrX9ALZRFx2oPrZq1kZsHgufCYtD/arzihyqYZQj6+wrQ4KZi+Ui
	 DfkGpENpD1sLLyOn5NhjBd80msjjtTwJSPaQFlxK3i0ViLwQTTu7Nv+jlpFWTk2bzb
	 N716VaRJLjjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E023C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173763035357.13190.10074429633367289386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a850b7abe95a09b9f17c4a15e3aeae3c77e660381ef8d3ed4dcf78f5f1e5ec4b
Date: Thu, 23 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737630353
