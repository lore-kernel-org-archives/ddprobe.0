Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3037117583
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732375554; cv=none; b=NJnIPm+6KMaSSsSLTbLb38Vm0apg5ShwTZ0xeoGly5M5pRsJI1sLb82IHlqTFjiW5NmfrFbjE8TuntbTdkeSOEecCDlv/IMtr/kj65BAnRErd8xCNAmcd39mfz9RKl8mUDuEQOAH+LVJKfjFl4l4WZSS54Kysq9BgTa6xPfhXBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732375554; c=relaxed/simple;
	bh=wb68hHXsA6QlmXVOWiaj41S0gKEqFVYgQXNtymbSw9E=;
	h=To:Subject:From:Message-Id:Date; b=BRfaQqwNJIPCD0WQ5kK2u8aU5ld+8/YgVSTjCyoBwNnWtQIvtCtbXUBMT48rXzeD9m35lj3DmerfTFmKltnftSwA4IgNB6z39tN6HphB38wxAx4028uC7yyJnaNNVXb1rk9d11snmyMKVK3lYOGvWvDgR/MqFQTptq/tTXhR/E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYDCJW7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYDCJW7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B558FC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732375553;
	bh=wb68hHXsA6QlmXVOWiaj41S0gKEqFVYgQXNtymbSw9E=;
	h=To:Subject:From:Date:From;
	b=sYDCJW7c26cFenNARsIxHgCr2EYS7az0LAN8BWWmqUXuZxHEa4o5EoHA+vdjryY+b
	 Zun2fL7dvADTyp0TzHL9PXITQEJnrxWCES21WqbHI0BylT/pz9uig0YEbse6ycCVyi
	 s1yZTnOkyq4WmhKkfHseCN5KcWXu1ZlHram6n63lM0KA5OB/Bh2R4aePncLkn2krhB
	 Pp+5d2DkizCbUx6ExQBtrb5fWeLkIdyO2LNJb3CeFAdNB7U2tOoWMhv113NcaFBzFr
	 M2Do4tUxuqBuPrzVajbePDytX6ggsggiJfUlCGVyF7adsuIUGVgcyH2LbYhtEHbAhT
	 dFURbFjwO1YLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1E3E6ADE9
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173237555364.14840.4096624088277083467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb56fde7bc24cb5d1edb93d7831d3dbdab5f30e5365e438e88192f83cc66b68
Date: Sat, 23 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732375553
