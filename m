Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CC6192D68
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746361194; cv=none; b=CtRjTiJ1bUyjHg7iT/G7DA69+h4GmBPq5/HZvw37cdYxanvVYOpaKjN4aNtqLeiyc0nGPDTdcDuTkmE98ctiowBNRmt01iUleBi8AVhqx21kF/A9Q/WhnqAUjgZKcC/qkDAVGK8UXRqnH9eY/9duRK7Fm64+xmcShB5pUROD7to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746361194; c=relaxed/simple;
	bh=LPA8f3Vhu/h+jNzKqfWVxmwG+noV1hAttwK7RZJCyLo=;
	h=To:Subject:From:Message-Id:Date; b=PsUW2UjQrCaRIyoOAS5SC9bJQgTE3J1sbzzrmuXO1GNgleYKwpjjZdg00xes7TREsnvvxgAlJzU9/Gg2yywaLE3UEnF1meBZ7dNxPVACWEng90oJO/gcnBRxP76qHwiqVd5aj0Glg318WTWii1fGTztDXTcDAvlpqum3rsA0qlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xs68jRN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xs68jRN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0068C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746361193;
	bh=LPA8f3Vhu/h+jNzKqfWVxmwG+noV1hAttwK7RZJCyLo=;
	h=To:Subject:From:Date:From;
	b=Xs68jRN3dkLNtjqAHFW+ps67cD/Phg/J2hwYD30NmzuSRZ+o945nPpHi0Guv/Zve4
	 8DcqQI4qyJoruIcoMzWv5I/qCuQgSslJ4q7XwNf94D5jZjKoAY1LzO9wc0DMfrUUWg
	 WP0X+X89/XwpI2XSz1uaE9KG0fcZF+x/FmvDI4ZiO2vS/lJWxKKfGjod75wGHqChlJ
	 5YQy4jKLh+TvZWE4LLZfbg1jG4iZCyLg2vpCIyFEwaBkb6x3gc7bdx88WEQHWAPiVk
	 fcTCCwJaj8X5s/AJsZ/3E94xdlNnZG8iWs0cR2Jl/WfVtoKHdbUHO/1gDSBVn7kdlb
	 w3WDlqOKGGePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78DC3ABB0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636119357.22292.7049813672993692091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47772bbb58994f3d05528ede5ce7350adda5b5d10d8cb751efe1f8f98d0a55f0
Date: Sun, 04 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746361193
