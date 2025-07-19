Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF5D1C862C
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752943794; cv=none; b=pJ9S4ZhuK4oeIvF5ovUVhgbd6gV0I/NpeeUnJQu/y89IVcU6G87jF1hP7aAZaR9ELrCENFeuSKfGqoWCj/PqZGSri725Sl3/b1hL2QdPJTj9Zyp/QH/2owrVDCOaot//vwbw3MTlU5FSUUytTsGPjeumTZwohmrlRHFejSwhwMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752943794; c=relaxed/simple;
	bh=pZZk5bA66LIZSKQKxDNcBIiwc/WmXq6c+KDgN87X1iE=;
	h=To:Subject:From:Message-Id:Date; b=VtWtIJnWYtle9HTXfnHacptKlUNNz1KrK9Ym/Jxc857Pbyhn7MdC3s/GKqDP0SrVB2fwVZ+qBMqmCBU2K9wL/h0NlT5kct1M62rvhXUemFyhwacgBHlyP7XpbAyrN2rNH/Npk3Gv6UExuhFlpSgsE2o5DBbWiQMdDNlw5e5iUO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apKXxKt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apKXxKt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D39C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752943793;
	bh=pZZk5bA66LIZSKQKxDNcBIiwc/WmXq6c+KDgN87X1iE=;
	h=To:Subject:From:Date:From;
	b=apKXxKt5nz3EuosK1AqoueNflJrradTSDPJNVdMVh1Grqmy8M8dsfldCGGsce5YPH
	 CFWu1gsiBpGX02fu5CdcFP67a+UoyFTNTJKmdiKMtBushZzv9I7YaOrLaxTP2+68JO
	 4D72hEGDUz9YiWtlrIyf55SKvND8jPA4muxmq10bGI88PONK/kjoTH85fETDJnY7v2
	 NcI2J8nIDfZ8pJ2O9RqjNkf/IiOxZERo7Dpdm32L24RUDRghK+yoW/8j6cy7hNsss4
	 X8ALp18Du2gyHLX7CLqF7OFSXkKfx/rWpciFA/nLLvqCJdtq1Tt7KgwKx29sHS8SsV
	 WfI+aDbIvQ2jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D1CC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294379357.10064.3592224343617301876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3725f93a1fb55a5ea64aadb4e1f047f056d3d55f52e4ca0f70abd0e32d2941e8
Date: Sat, 19 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752943793
