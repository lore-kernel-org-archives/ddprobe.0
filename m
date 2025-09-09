Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C5E2288E3
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757429394; cv=none; b=mvkleHyScPQ/wXP6LdPKUZGo4HcHFcfNQkR8pOqDKjaq7u6ww87zmOS1G98fRkzv5/ZqsDEOo0jQCfCdIERgeBkOCHsXroXVdy0hBpUg8ef7P+TFnWCJ2wRYN7OCEiUhazYpw2yKfQcWeuhMAeeBsSARr3hLlM9IlUYrYkJ8uDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757429394; c=relaxed/simple;
	bh=K2/X2LgWJa0xkQcKoGkPCvuyk1peiu6H5XaKr5xZ2Sc=;
	h=To:Subject:From:Message-Id:Date; b=DbBNR/jqMBmG9J/I4AaEGfI2B2U1CEyLgjDDPxYkYuFqdNOV6kU0mFFI6rTLE+L4CRDNg0HpQ7LRA96ugUVuMaGSa1ZT+9oEsbdTIOBqx/3BDiKUklfm5f84P6TiQmcnof940zqpTqag/m5a0PQRs2KLTsd57cmCCRZbDXSKYrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FecaXxpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FecaXxpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F3DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757429393;
	bh=K2/X2LgWJa0xkQcKoGkPCvuyk1peiu6H5XaKr5xZ2Sc=;
	h=To:Subject:From:Date:From;
	b=FecaXxpf646GruPzVpCprY/KK63N8ubKX8UnObfLZATbvy8lkFICUCkU1H28Ntsnm
	 SvSlGTOKt4Ls4c1z3hJMzp/CoxujbL8jM6sY3QKDhwoJ9pBz21+9wAnpX3ySHrXE49
	 Lk+hBSMYHzTvKUwjS5n97ELEQa91kxFeAwJ2gFsBJTjLNbzQQS6EGzlxsFJL1K2Xle
	 6ifP47NwltUJI13R9+3iVgLdTE4zBJYdXMkOIABa975gBHvqZ+d45x6S+hVjl7AxI5
	 5UjT5lyhOLVVdBEZm9GMu+QScFY40GBhbniisNJySqps13vPOaj7uAyshKraSb9ktc
	 im1EVwj5HjpAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90267CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742939358.10662.16753439523550797133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bd8721093a16e734ff30349ef3a0c1836209e15e6a24aeea3379fecaa9563e
Date: Tue, 09 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757429393
