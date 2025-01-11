Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D4B6FBF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736580354; cv=none; b=VOiYq/IRvJV9TGdBBrA2zSoUbareiXU7Cktr1La7g8mtnDKpWxzQKV0c6qimxPRM1zqUVvN7buwylARQjm2yiQVfujJaML+U6Gv37rYgxKYDhTuoEL9rL+DwdAEHnre2Hjb5dEgYGOuGYJeAEz4FEooJr2P08LnLtlCKxaifMvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736580354; c=relaxed/simple;
	bh=/doAX4thgpuxmJZLLg4nCj8nUBFiFbbGPMTctSdYmjg=;
	h=To:Subject:From:Message-Id:Date; b=GruytYq/xgyudyWKP/+zDoCTxrIbVQXtvcGHESQ33a9nekjEXe15bgT3/wHwsuc0a2R5kQFc6aQaU8hYXIptiuLJv10hC+tB5KFSG2vzKYFqpJ4NyMUR8lTS9Yxrf5fdo8sQ0aJezcDwe5fQzOWZBCIpNtarQh9nLethX5Melws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3YpvPnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3YpvPnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65B4C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736580353;
	bh=/doAX4thgpuxmJZLLg4nCj8nUBFiFbbGPMTctSdYmjg=;
	h=To:Subject:From:Date:From;
	b=p3YpvPnXPuJCq4Bu5WosAQrLa3P38XrVy/DTEN48zzl5hDZxETZUKcRw2ff8hVM4g
	 tWcIU//qtjEdwRcCqI16ODDKDwdVyM4qYy5R58dtV2kH+rRQ1BFQBpLJbP4LWvlwAV
	 ihtGVlF95jqtMKotCEweOIQ/VHxpxeRMXCerom+nI16noPpd1RBIDeJv8HYOaAzMay
	 Bf2FurJLjmdeZv0Jxbl8dr8GEck9kot2jcV83jFsGlWiUYyl65Xr6YiT1IgOoTVjor
	 U18mImurHBaZey6e75L7K3NwGpCKO1Jrc/C0QzEcqrWMT5bH3Roy9Eq4qv87OsXJD6
	 v49fb5ukP4O2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122AE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658035358.18579.13816766755359412713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab0a69ed02c3079ee7910b002a692cebfdf28f6e3a17b56a704d3fb28c002b2
Date: Sat, 11 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736580353
