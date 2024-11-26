Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C602500D5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732655754; cv=none; b=Ef6rfzWqU8B0HZB9Ba68xg4WoUbcSzzd9XkWoUR/hSnGbYaHllEinr9wRE64jKKgRIAZNsaOMkYRbp1Ks6Rr7YzkDU4iOUIhIf1idyo0v0ipziKV3jBJUX575vutINn/keBG8QWnYr5CpGHOGV4YQS7aF8iyEgsEnk73VclYDXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732655754; c=relaxed/simple;
	bh=p4YTGTeCIEvtOuhLolzh3GKl0mH2+yn65fWPJVjy3+M=;
	h=To:Subject:From:Message-Id:Date; b=GPQLViHk39zqjPdNIGPIh99/2EMZ/20zRlQanMJPSBA3Wl7xh6+DkSlkZhzg4zY2gImtCSVqslbhQm/iW250ptI697Tl66zslejb9GDi927U/3pdnMMvDhZiaOVueOdoOYk5kJxCZlzamHGyiWa91N7oK7NlMXaxP05JzcWcZac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nht9kPRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nht9kPRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1C2C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732655753;
	bh=p4YTGTeCIEvtOuhLolzh3GKl0mH2+yn65fWPJVjy3+M=;
	h=To:Subject:From:Date:From;
	b=Nht9kPRwsHWh5KbNoO5TC63T5zH2L1BuVUDzz38QDmhDGyPb+CWFhl8tzFDkMJ/tY
	 TPkM/893BXox6cigci5159TPNi6NoloPoLvhWqP/OFQiH3b3mJxj6e/I9U24fF8Au0
	 0AlYvK1UpPVZoyhb07NVj7t41yeo6CGthGdHR3NoJBc5vwzmraWHGflwW8XwrBzaCU
	 pNk3sGQv3/68D5PZenBe+6Cn+0hQGa+vdOYd/vUvZeZWp/L+kUJqvIEvBrMqi1Q1GR
	 btEnosrcOxq/pzUAhZvyMcqxflFrdZZ7KLKyJbCNgO5IOUAX56ZzgJc5seuvn+6zXq
	 rl41nw4CCq/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7A6D65559
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265575361.19691.11188086811677812431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e0b8f76b26253ef3d24d5e445e5422be5bd847fba8ff7338f8f097d16e1531
Date: Tue, 26 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732655753
