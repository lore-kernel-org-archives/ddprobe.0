Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CA629B764
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765974234; cv=none; b=RtJZWiEt8IRotzVDjqtfMQI9ex92RWQD4lJkA4d3wCHy+M53ICA3q1I5pOe5OnRG0JNZlDH7bHIpyJsFwXfhUjDC5TsHsuKbDDeiHh5U7aJ6tzprAIIgSPCsrVqjXCsuw/QXV/oShEowcw6JBA7WGtMtMyj5mae7rXPuomAt00w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765974234; c=relaxed/simple;
	bh=w/rsN8ChZyEe/qgsuC+oh4hlTyip/6I1m3y1OI0eQBI=;
	h=To:Subject:From:Message-Id:Date; b=aHbNgbUHbmbqiRh240AKzAleKbHDHfT9p7PzqvNcqklfsria23T7S/ZK9W4Ggr0RhqjYi60adsgRJWRSHyIXVKdncelbcBcgC2RuyCLsI0OqDNE4x3RCahcbaeRyXPMYHz3reQ06NH2BzkD9NI/d2t9Lm0oe3qSllulV+9OxL+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMu16I4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMu16I4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6191C113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765974233;
	bh=w/rsN8ChZyEe/qgsuC+oh4hlTyip/6I1m3y1OI0eQBI=;
	h=To:Subject:From:Date:From;
	b=hMu16I4wwaG9FgGZrIKJRq4RC6SzqJP/zUiheWmSmYH7FMuk5OhZryyRnzhF6jOMQ
	 ldHrFuYkQ95bUllr4QKxIzVvsotjwuiP33zeNdwMDrgIPgbjqfc3Do5LdnUFgpuG+y
	 XF7QUMzz8M2tRmBQlBJc8PRDpry9Afzi1mkAgOZtfLiCJ8LqbaWZAOL1JmIFffRRD4
	 WDlr5chd5R3LrkDCl+VkXvtMsVs9kW7hEDYfbKGcCM5RXKxfj0+meda+vzxITD3Obd
	 RBN9JiRz6T/wb7KPOGUWO9izDMZ+XtygCA1umtjagGny9TGpY0hva2hiJ0uhERob4C
	 d6oPAWYYWWSqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92921D65559
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597423357.7091.5207022824290871468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8611c294999fc18f5e582afdd65bd507f5676e765d205d05f8f611dde36fd61
Date: Wed, 17 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765974233
