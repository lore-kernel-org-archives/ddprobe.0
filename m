Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E76922068F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764753174; cv=none; b=gb8E2IhXNvswGi23dbRUZM8UD7fe7S5ZCynZK10qd+3GSGnuKEMvQfhNa7OrwK64yovF23alcREHITmBDgrjYMGV00jDk8N+oTVVUYeKhxW9/lg4OsJjzuqW/R2TUdZ04FGUR0RKMEazGBo7unvo1mFYCDXDQjcV92Ziop3BwV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764753174; c=relaxed/simple;
	bh=uy8BQLp/rvzx8J+kS8RzE/u2+KcFjo9dYKBA623V1us=;
	h=To:Subject:From:Message-Id:Date; b=lzxAtlck0Tq9w8oMzQfcJtaSlFj702RoejuQBBlHjVYAcvdllzJAh7kLJ387S6Qa15qhGp2gXHPZTyDIgqJgsqlNwIsFhTTKZ27hj4IAO3u7hM85jDb2aHsrtxb98pvr49xC6QNyOVyinKI+AvIbBEYnd+pGeps2sUaZPa2sBfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Opck3+W0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Opck3+W0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1CAC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764753173;
	bh=uy8BQLp/rvzx8J+kS8RzE/u2+KcFjo9dYKBA623V1us=;
	h=To:Subject:From:Date:From;
	b=Opck3+W05lB/LKrshVte0nxxsc1sRUK8NZkGZaGxeV/v3iVLpqLY33Wt8vLbaAOIb
	 /eMb3RPvaPibRmTzAK2XrE4dY0N+BVAqatE7+kJDkisbO6UIMv5Jwqe/Hqh+3XmxT2
	 7xMjBMXSOfEPKKi0y8YvwJfWJarqbDejHxOvtfV754JYGZQiioq2mbnsGFVVVcY7Tx
	 T+u4HvFbROcX7qEgiW4nKzxNNONxQpQZKYgEamfsVI68E3HznNXcCFcWQ/3BNi/8gQ
	 fIWx3dD3BhdrxeHaH3hecSl7C6NXiwVF7gvIvqIMQcLcXvYGgDoQicxc2oo/5W/WC2
	 O7ONH/hNPd+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C5DD1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475317358.21782.3186261396758017893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a839e7b754ef42c77cf2a63d84a21e44cbb2d4d8e315e7d290e574598141d2fd
Date: Wed, 03 Dec 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764753173
