Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E173596B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737609354; cv=none; b=sipQRKbdk9fcI5qI1LRxl424vSv5zeDI7UBjzd5FQrEcX90eWsqcIX+j38T+ROXjM7SeyKhjvHL0uLwU+5t4jGoKRrgzy1pkkVTRGhrC1s82mwsF8HjLp2Jp6vQ5fq5kia/J2FxwdwllyqfPa1m/3rULJ62EO4TcRS9dxCBZsXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737609354; c=relaxed/simple;
	bh=39If0PbKgFvGeB/UD1r0/ZN4wNyB/J6eqtlSpZdiuZI=;
	h=To:Subject:From:Message-Id:Date; b=iKRc8AJdN05Mf5dtFFurigofvnuHjSpbaXA33M2ANoPC2p0+y4nQ2tENmg2SDSob7t3vBln2n9yXTttTH3JnkRDNZ64DW7ExeEhapsph3fdnhUpAQ48wNJoi9CCcY3VSN9F+5Y5+c4w9JSuvpE+/cfYpIkVY+Ftj3u6KSwkZl1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKdvgNM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKdvgNM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A494DC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737609353;
	bh=39If0PbKgFvGeB/UD1r0/ZN4wNyB/J6eqtlSpZdiuZI=;
	h=To:Subject:From:Date:From;
	b=rKdvgNM6P7dtpinYf59T1QfieJ/ZeAs7OUTX2lxdeSKq3iask4TxO2IgaYmGxj+7C
	 2uJINuDL7xGZiR1DY5X1S7LFl5uvgOQli/nDRqmXVxpyi4+0TC9P7GoOwnkilcNgex
	 dX3a4YhDVJkHZZTi9U8XBcIobMbbf+WdenUL99XxsSAjCA229U+LAQNj76A5Xr1iD/
	 UDEVexaAgPjvvYrZCRcGSOYRg131dNrnijWbM78ugG46Dr03HYjvb2nlCsWOyV4+8S
	 XkBSvk2fVMP06puFgmRncS776VAF1yDQ8AEQYz7tf6YC4qFCLKML8L5JEORf1piIaM
	 jbs6MQgSI6BjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCA2C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760935357.8227.6337286270646146557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d412abcf7f050497dddb257a86be84589e6d501ee904d9300c8461c4bcc62aee
Date: Thu, 23 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737609353
