Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22595384223
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782757714; cv=none; b=DuXGR8v+h0yTFXT9WR2wGo2BmY/u1vNZ5tAsGbGM1eHi+Tve8S27TZ8zcQ7usStO25ZTmPvaccIj+Z+ew2bjMtE1StgavlAjmA7cQckCAIXn/PoES6uyGB6SdBlHylQC6Fc11S25mvXGxtJLE8sz+yjxG6rq56/e2k29O0FtkxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782757714; c=relaxed/simple;
	bh=TLVjzOlEKMf1uPZy7PIb082STLheAmrpnNjNRTckPnE=;
	h=To:Subject:From:Message-Id:Date; b=QF5A4qde6REjQ3Qn+jMZoNMmXLOoOJ7iC3WrNpQolHzu8dBSGJIfjR2EKavstPB5SzdN9vR5G9HN03hF4N9fFuhcAc53wAHQbKPxPbGxkejS+g7oGkRDANgTRJztl9RPCW/7YXNv+LRvO6viwmYxJ9DESuqWCwcg6NZZb4XP45g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5v4QNs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5v4QNs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21C3C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782757713;
	bh=TLVjzOlEKMf1uPZy7PIb082STLheAmrpnNjNRTckPnE=;
	h=To:Subject:From:Date:From;
	b=Q5v4QNs5DSzx+rc9/qCONI1SAZMLwwlTliCw0xRvRsaHLuQQNNEO92by+kR+jO8Ht
	 sLl6eaI4NUJHdGe+Q7XRPV6y6YE1GzxEE7fqHbjfu2oOlar/R1weh3klCW9PE6u38A
	 GaBdTNFkxuyjN6aLn8u4Eo6GlXOypw298Y0qVaKn5SZajcKfoFM2CDfa4ZUHg9XON6
	 Kbo5eMfYDXRThc6FSFiEv69aF6XIKPjDFTTKzPSGIb3p4rqS6T1prwy3T+xe0F+1/m
	 N8h+7YUyLvbOHiTOd90t3qfxCqA2jG8YKXm/EH+RrcSvw1MYOK9k72ui3YmgKY4BIN
	 PDA0tQUZyi+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C1BC43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275771368.18351.4656472800532906662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5885e5f6b047e52449d60ca71ece81bced5865099ddd62d4ae7436ab302103f4
Date: Mon, 29 Jun 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782757713
