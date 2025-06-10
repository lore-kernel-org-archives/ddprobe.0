Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD36029B8CF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749559793; cv=none; b=BX03aczWGKOYMMSyzWoAwGHyElYofTQj0jbs6Mr3+ODcXbsdwlSJe0gY+f/hPwkWYMq67DsSQTcpvrqez+1JKhF/Vjj5jzVFu4ZTnu15TcgdNt390GsRpdZuijNRxuSeAFDs4WXHO16sZrx45lIDSEUlNBzsIYdsBccsmEkQGzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749559793; c=relaxed/simple;
	bh=/yVUkcnWI8gHZ92OuJAlPW0TYBxbx5AkmyqgdhsM71k=;
	h=To:Subject:From:Message-Id:Date; b=VYHW5Z2zD2RvT95i+0o7sV6cVWqTgQllRjL0FMKi1v/uZ3qrD0N/jqKpLPK9bNJTwFUj55/HECad2BTa/Gsbo3uCfGYrnSCEm1Xxlnvdd8ZC/n262zWWOJRjykeoI4QOg1DyVJe0r2p9xDXQc4YmaxpJTGrtO4BR9VJSOrwaNLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsSlWDrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsSlWDrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA68C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749559793;
	bh=/yVUkcnWI8gHZ92OuJAlPW0TYBxbx5AkmyqgdhsM71k=;
	h=To:Subject:From:Date:From;
	b=tsSlWDrppu6DXlemAnzpA+S9dBLMXOSmKSuknj/UNKmNF8jCM40fFXbYyfrNBWiMA
	 KG5ErwQxfZHyynlr3as1+ZPTGaO06plfAf1z0Cm0mOXpBchlcJO/HkVE84MtpmTLea
	 lx6SCPA5qHouOKVTqwl0DyVmtzyEf40N8VQTVM9mRJtGNbOy95tmzhmcBO2HwtK4Bj
	 Dh3dV2Zd99YrNFrLkibVTxlGnLBYgyFHqjxA03A6kU00WRZKjnvwC6Jspz1hUGsfXq
	 b4F75zcorI8Ul9FvJAdj00dEmgu0G7oyn+rLe9nuQ6dYONrQozbqWO+ZJDETi7TSUg
	 31hWN3AaG0iRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9EC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955979357.17221.12625769265124952987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 461833b42bd55cadc68769c57400de9bf0a2ff180c704cfd67737d04ff46e4a6
Date: Tue, 10 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749559793
