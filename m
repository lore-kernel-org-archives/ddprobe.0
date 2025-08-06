Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2819329B229
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754508595; cv=none; b=Duu/PoFi/bS2KdZ3v8pqSf9VHVKytsajw9XCzSt2z7A4Jt2ix7NPXAV7FZqZWrinAGA/qtZ/wQmJXB76nDebezyY+JL8filx3GiKnL9XRn1+XoVpx2YXNztG8H+op4GcYef/eNY36WgwEsE2B65gLyzfgxUqo7XXOxaF/W2DTDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754508595; c=relaxed/simple;
	bh=PANTpSiflro1jGQuUVxwwHYB51DFHslc32ZVNMeszxg=;
	h=To:Subject:From:Message-Id:Date; b=ibqhvtI87jbNzny3NE4o0x3OysPsKxcg9au7ZYQ4HZqgM7USW9JH2js1ozbT+eAA5a9S2UQC2KjkqGSMj8h1vMDB49uJM2VS2mBC3PcjyaQw5W2UoEXri8aCyYif3MncUStmIfdEMEwzEUkJ1265TuX84HbKjHhD7vQ7J0tggTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chQnt+kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chQnt+kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05CCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754508593;
	bh=PANTpSiflro1jGQuUVxwwHYB51DFHslc32ZVNMeszxg=;
	h=To:Subject:From:Date:From;
	b=chQnt+kzdCo0qBltvr6PwyYIImleB2aC6E11i10J/esqk5M2ehURO2W4BzLyBHzCW
	 3KnEOklecKfxHc8RR5D6iu1pr1zWyxSsvFw+vmSxiaZTbUdWWmIUvQHbJ9GN/9P3ac
	 XueXVFKdVNPjFj4spTRGPRQKvoiGUcBbri3RA89kQRJsdz4RqV3RQEuTjSEHtOMAX0
	 1wi3VD1SDpBSzEVdEmN4Qf54hwhLD0wdZ0d8vs1Hr3KNV2MsD+Ou/ZFvT9JDbZXys7
	 D/5EneqxR61x/RTWuExnJU81XWj9kTf7+Q7l2yVVhXoDj1s32thCmJz1lr37ZYAlHy
	 Gd7rpl8qAjdmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92062C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450859357.6126.14916886751877102952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb6a99f0840b73affe9b468e78fe8718c182fb50503fd8d9517d3d0eb596e15
Date: Wed, 06 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754508593
