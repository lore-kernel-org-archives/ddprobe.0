Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91EA242D67
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756964994; cv=none; b=CGv24an7v/O7x0nbv6V9iRtjS4oCpaH9qhnyctponQj4UlasRIQ6sFuCJ+/X6UigkRoVcgg4pOPEo3gpxzZLbKER+CsggrgNhIATmiZAyxQveJXImmEaTuVza4cwlDW5HQsJLVzFZsgZ45GroOaFJXMTBFalneZdj+7WXWM1Dr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756964994; c=relaxed/simple;
	bh=eSh+qsfcw3Rfbu+/BACasqvq9tNGhgNLYQ1Ca6YvAhk=;
	h=To:Subject:From:Message-Id:Date; b=B5VdqbxUarSivGwScSSqaxu8bKTCAlpe3jz4XXWxsZg5Fh1rOD5yGr0BEZRkIPzNdj9nB20aZSIlHzES3fuF9KYHCNtTyg1TVagrY4A9WyGkoDOottz5OHmlrfJ83IzZv8JLE73GEj0hDC9GjtFhUG1QOR+DYubcAXYFuEkKb+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnpiKc8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnpiKc8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC8CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756964993;
	bh=eSh+qsfcw3Rfbu+/BACasqvq9tNGhgNLYQ1Ca6YvAhk=;
	h=To:Subject:From:Date:From;
	b=TnpiKc8ISuN1Jk7XSfSl71SpoUJAnFJoqzmVr6rGlfchcwRifMWRuAdHecp1+fvjz
	 4hTivjnl7Nd7AbhJiu9abUxarS6ivFgXmxE9S/p0VKOHx+qjl8BCigawHZky0WUfA6
	 kJVbdpOj5swtOecpe7UgMpaO4jWyf8fwnTVK+ILLmFfs9gzyqBpSDA3Za9Ve3PSCJA
	 txFgRlxph0D516TJGoqO2F9mOie02DE6MtTWdVmOPpa3Wv6NNSg8ydd1yOYfEuSxHr
	 0ceVI5naCHj/Fq/wjom0lUGO5A3yhydj2Zq+jR9/JWxoFMzQReYOzUWnTnLTEym4L/
	 WixFvcXDAZTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E799CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696499357.10501.3969352315589608495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2a9ad1911f23a6892e4ca3e8e1cb206edfef1797d7f06b4a4899ca11d3c6d5
Date: Thu, 04 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756964993
