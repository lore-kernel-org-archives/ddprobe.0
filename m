Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2DD185B48
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756164594; cv=none; b=ojVy0hpP5+IV4Rz8TDdM78nY7ufJ95u3CiSKzIy4twasWjnNU8XwhBmrggFWRzakHkhYWwikyvMROcKTQ42kqruPjsuyEe0rMb5ADDSXi239ITTGweuk/4L/bUuTi8ZIdMuTq0PfScLwPcivxMjtuOgtNQqS1MoHuWbhbA6OeUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756164594; c=relaxed/simple;
	bh=+vyAirHdg4z4zIMokaNAtm2vAqOngkKS77/ImdYwjrs=;
	h=To:Subject:From:Message-Id:Date; b=BW8Q1EJNNZTTRseSqVHMPEzJrojYrN+aTPsgU9U/8cUrWb8QCMYJ/f1wXkSVrusboJNuoNsZlHg/1QujZRz2Q+mU+bc3nuR60eugBkE9KrCOn2rHIHucYRAIHhxzUs5ggKso0PD3Y+KyUMpO0yxfvNUeY9jEolUzbPlSvTJuwWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOezJZ0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOezJZ0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04FFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756164593;
	bh=+vyAirHdg4z4zIMokaNAtm2vAqOngkKS77/ImdYwjrs=;
	h=To:Subject:From:Date:From;
	b=sOezJZ0miceLm28NuxpsOOGQ+rUnHumEysq/kYXQvOLs4jD+/G6aXbcaoz3Dtwq7Q
	 KQZcfOTWLBxWhfaIG4K2G9GB8ODkyZeZx57sVCBz6wGuTk5VuY0rXzO6mtsggrncba
	 66lwtMrPIT47sud8/YJEUtnn+f52A5/WDBHLZRa9Iaa8ExwKB0hRYVWhwPCpwCPg1j
	 OiKuPDg/upl/v7FJvfJRyE7XgJpBFahLM/bUhfbKZ5dmWxAuxT5kXxmh6G5rTJXXQv
	 78He9f8ugcdmUxyLP3je/quAuuiMKZ08Hr7hpRVV0eYbCM3TeJ8PvwMWUq8VfBUHOv
	 zs/6sVJ0tdPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC89C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175616459357.8363.288639094189956123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6407584552df5ee38be9663966c9cb3aa577ef560e003473f4a57eacf9e767fa
Date: Mon, 25 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756164593
