Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B7C3E2AD1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791235234; cv=none; b=KZGaz3Uto4H2a/Scy99WRQ5sUbdxOC6HeUNGL2VUITw7FDCNfZ/U0GPrye1wKWh0sZ7J4ixtTmAMelMnJXaxVs43LhUDF9efDLwfHx4lIuQRpBqKh3iOlvg8T6TJOU47x5SJ5Ojb6Zc5Frnpkvog0izHJRnJkusRXuaajXQ3VlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791235234; c=relaxed/simple;
	bh=qbcz+qZwO1vYFQeRVdhxKkXyw61HjcgRb5BJO7WJsKI=;
	h=To:Subject:From:Message-Id:Date; b=qSetQ/10/p+qKi4uR0SCFKAb3GsMaSS2oinRbAvZt9eMBDF0n+Ay40am72Agw/AZQduGB6De+FOAEI8Pq5mNDbqvfsKUNNGv7wr1Cvx0UrqnTyONQ2+7F05ofJsbpH1CCZy0S33gxJRZzyvknPvCWYyQBaHZGLmzBm/7jHp3b3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxit/zX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxit/zX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4557C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791235233;
	bh=qbcz+qZwO1vYFQeRVdhxKkXyw61HjcgRb5BJO7WJsKI=;
	h=To:Subject:From:Date:From;
	b=nxit/zX4CAVtdfjUZyl3vuzD12LowedmCQQwHWKI123ucwHIByLZfLa9ntf68GDJ9
	 F7bHEQIw3NpYSVtKhcel73qqkzIQw+B8d386fD2ZR/gIycncN19BRByKWEvjmilV0Y
	 /faQ/nFjJXwnlxcAsQ3W6RUQlOLeH3SAelAMRJqZ4kZ/bnHAJ2zGQ9RuHMhqqB5BMr
	 OiZYtPIt1eG1oJCvuDk6Z7GD5Exhk13bn8gidlP4UimjjnLVc0ovTaGXm/Ad4N8EsF
	 I6LmOMZdmMgVolniETLX+9YR1sOY2ogAD2AD4hjttLDqchiZ4XMpj3QzAf64IMUHFZ
	 5f3tYadGzXz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD76CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123523369.16116.9136658677673660628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46c5475c2307359c4bc7fde27e8cb40575cd9c0e82d56d1fc19db865385ca04
Date: Mon, 05 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791235233
