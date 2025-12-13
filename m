Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21009253351
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765604574; cv=none; b=PIdnVsl1O7xtaC1mjhwouIs2/XqPEFe5W3xZYTQv0OPKjgYamNxCCCUWMYRJoUP5kcwA/ZqdA0k0ejLRufWpI0cXOXRmNup6MS/MiyWP9yOP8qP5WcEFOCKmxuhfbv6qxZaWgG0Y7PPXLWKEjdJ9S4jn90NWRLxC0xKu/DwlgZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765604574; c=relaxed/simple;
	bh=8dVfPuPtvtN/NdOl4vgAhPx75fSKUrpbXaI7OCfXaqg=;
	h=To:Subject:From:Message-Id:Date; b=XdKw808GbOhksQRn+noXbQIbObgjyyWwplQaI7pL1reee8JZe8c0VDC8cMftU2xeZuE4uMP78ws6J14qqAIpSKGWyUVX46yXhWru/WLvPtB9NPzqVMatVknZyAVwNdk2lOYXYGzTMdI9orOlsOPzVWmMEROulwzWXZk9k39vmN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFCCpTlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFCCpTlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D41C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765604573;
	bh=8dVfPuPtvtN/NdOl4vgAhPx75fSKUrpbXaI7OCfXaqg=;
	h=To:Subject:From:Date:From;
	b=hFCCpTlNylPwXsfvHjD7U5I7XsXA7jbtcufngeeGZqGQ3A2M2VZonbEs0cBp/21PM
	 YQ8RBgfRzxWk+itk3MBkaryM6qbtOR8Z4jaqqq3kN1LymocvRunDKWFuvJjrQ54QaN
	 nV2ri+JYSbhWxRpYSi5bqFoOQKsZiYxE++dKq6s68jpJZfpzdIVmrUC+2N+bbyNDeN
	 5ES6zIPk/mAFzvdLiPCXywftv3u7AkHwuVsGGM0ebxXr72B5dbvhqZlhbO0XfD/J/4
	 Fs/fG8FNXbWJ2C6yXV1S8PMk7m82DLSxLFaLGpoVqaU7VDJuqVaY7ia11A9uEVa1AA
	 EOoC8Q6mnaiLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9274BD59F6C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560457359.23691.1287150737284935890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e47640e1bb64d19062ad6e6eb2b70e38c5a37425476bf8bde924bc8ac121143
Date: Sat, 13 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765604573
