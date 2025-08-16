Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D97E13AD26
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755334194; cv=none; b=sYd6Kq/UJAGLXPrttbR74GVEoY8heEXfRkDuDsyDG7xB0bhzfbYKTbuKnbM9rXBlLZkXCFYnOcfigcPwjKcyAwao4lCwiOskI+t8YGln7XcWo5WTJbZtv9ETgNPcCyEV8K3PWDYDfQEomvsfZqmmQ7PhLS93nNHMYVujmNm+y5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755334194; c=relaxed/simple;
	bh=w/lGbkf9T9XCpfr2+pE3GNX7G9Qj7Bypnsz4gWeL7to=;
	h=To:Subject:From:Message-Id:Date; b=pqHGqIVVGrcSubYiYlbUZKXeolwUc0QYXT8ppY1RSwceaTalUxCIEvF9osBEt6MSDf49ZGW3Ikx1z11q4AjWU5p4a/tkIv3ZD6YoiXNt1KOk41cq27Muo6UElhN4a2wjC5fJSltxj8Iz387VmoEWPXSGOKGfZvCiQbqMrj67/QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ig5rTzg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ig5rTzg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755334193;
	bh=w/lGbkf9T9XCpfr2+pE3GNX7G9Qj7Bypnsz4gWeL7to=;
	h=To:Subject:From:Date:From;
	b=ig5rTzg7oZQZpMUVpTlKrB5A+T69vRWclmQKUvEHM3Y9enZK4h4DyNhUX0rFmD8Vc
	 BYwFvUhRVVRHtreSFb2vNAXrxMpSJkC4I62tmhLRLV7bU4mz3yGWTSvdAinMITIjay
	 GjaTMc+JxRvUArBT3sgH/I3qhYukbi44OvpZxTzj96c4q3PgDcIecqjz1e9sksmz4Y
	 2tAa8gZve8PF1Iudn8wFL3KzPDk+Kzct9krDNP9KVN8heOZO1lgmhpGYqITOshrdu0
	 OGE6vrP+LxcYTlV8bv383xnohkhLBIslcvNa7gk6AhrpXMp4ZJqFjMQlCOU7mCxBmJ
	 hXDSi6FivZNzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BA3CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533419357.10359.12554997732227923244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1c0e9412230db16e1785775f8f3a48f70be13c6197604913b49c678bbe307e
Date: Sat, 16 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755334193
