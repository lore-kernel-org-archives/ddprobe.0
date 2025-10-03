Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828A2556E
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759481394; cv=none; b=sFFq07tsS1YLf8bZGXzoT23Y932Vio89r1lT3A7b5VUnPCHmzkhO1cNJ2p+G/ZgBV6ugFE3J/TMAwQosGP52DmZu0V4wGH8yFNp3H3PsO9QNIPxNop/ekmsTKmOpnOfPDV+EygH+3+8Brr/7F+bHiNMw1/DAR/HRBv2XMgpkqNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759481394; c=relaxed/simple;
	bh=+p8jGtG7bQE4aA9DNKzNr9emFn1nG2zgkqf24TEwFEs=;
	h=To:Subject:From:Message-Id:Date; b=Hqza99E2YOHzTDN++3LuqTRdIHZHmwNKNXtDOOmOBgFQlBy8UGV89BO0KQmFjzxPzn75j7+ika4nGU4XAP/uyYfZzqRX3Pqs4TZqu6drhNj7DHa/dLV9aNmWvs0Lkk0HbXqejjmrSXR8wAWjxtFf3x/2E6kcZ5arEDVLPTMpDOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki3rPlNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki3rPlNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75BFC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759481393;
	bh=+p8jGtG7bQE4aA9DNKzNr9emFn1nG2zgkqf24TEwFEs=;
	h=To:Subject:From:Date:From;
	b=ki3rPlNhuPSZD+Yv/7SniQZWrygrK30HoqG8atMSkX/ehQRA8zG037jArOiUu3AR/
	 W1cBuhePzPJWbyl/J6F8ccbW0IlX9ItoQSpBvLya/VPrZyqURWW9Jq3RvxUIBLRk4S
	 RIEa19grcDtybN/4oILiCaQcRJzz1Ly0YFfnAdRQ9uZpgaCVWFMaLOXSlyuHQn1mhk
	 I+lgESCyj/iWgVt1CpzhIUWaZhCPOspdGDV4R4N6YfPBTEMhZxUkCGu1OQ1Rg/gymz
	 C0uN7bPMnB0FDEQjwEdpuCRwmWJWB7jmHjwyHkluZOkt390ilj43oaKjqoDOn1fdpm
	 seKffIKsa9VCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92544CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948139357.6923.2767844734045900371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38267c8cfbb025968e879797fcb503dfd1b0ee446f0be37d8234ac92c045007
Date: Fri, 03 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759481393
