Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279E42F657F
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755083394; cv=none; b=oGkhJFJmGZyowagz/a9+ogBfpzyAyIbdNoOfFuGgFDqRJukQ/dcH8SphW2tRdBn604WWoC0CYgfdWxhNoV5XknOpmRXwvu3x1HiB3ksmIy49IkCBkadwyUZ8rbFe3HXowUr3/M96o9tWWNMlmtzLP38maTbzmO9UcUcSzeEf77A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755083394; c=relaxed/simple;
	bh=upMT4MbySAY/3BxkVnp/RRRjHHs32LRB2+mvBK3VBlc=;
	h=To:Subject:From:Message-Id:Date; b=eGuW/5d3HmC6Sx6IDc0CZv9OlZplKxUq036v0PEUnb3/aJrkJUv1v1HkTRPmgUYfAvU2BUkMzX2SIDt6r9VHvbB1Hbhh2MLBd7jdpnz+mnK3LSVmgZQuiw9rnbaQloFUwzpnOFly+4ivyRy3Tzfenwxhm1ESXYmDA8l7P7+YqoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXMmkqWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXMmkqWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755083393;
	bh=upMT4MbySAY/3BxkVnp/RRRjHHs32LRB2+mvBK3VBlc=;
	h=To:Subject:From:Date:From;
	b=HXMmkqWhDThoOZ34uqQh9hwBoitoll5hCUfN1opET4kY6JTyZE8xojz4s73HlKLMG
	 zQ3qEzu4qvJYS2JYwjwwB1UHglKtZFj4A4pjgSi1KG36saJlH6MPDac9eNfX7TeQWK
	 VVTEPH7+t2yrgPO6ucC18q+tzzIpm3MNXbrvLxJeGx9l3dYSnXcE+w09qOPwFuqgkS
	 u1xPrdPMWVsI99YtITsO+KXioaflYfaKrKRAQBXPUbCXZxpMMnG+pT+X6E3gwusths
	 TcUrbsf4QUt+H/DmhvPBSRn4e+mO8+bEFSHhh5TBNO7h5prgJgLOwzi0gCKHg7Qk6u
	 FQ7s+9lcdVMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2AC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508339357.12041.16905498761175341653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1fc310e781fc83fdb285a900a500306c7832f955ff884c5a1571a193e73e1ef
Date: Wed, 13 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755083393
