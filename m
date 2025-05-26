Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402D315E97
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748280594; cv=none; b=e0SqBPqueYGziJI9uzpwc0o0hUfT3+ys3wM2imqlzt7huKB4wisKGgTgAGZoazUHwhvByeXXEZ22LE3pOeVo/jFb8mv1W390WSfg6+gEiyn56+7sK/2HtiqlXBqRarKrAj0RxlgRDa2OQWUhHa8p4CfaJAmZX0ETT+XyPhxnDsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748280594; c=relaxed/simple;
	bh=R8PZUKV7VLhuC09fo0c3kkuK/Wn+B5l0BgdNXR0hx38=;
	h=To:Subject:From:Message-Id:Date; b=fZy2CJy/NGpitegAQA/8dELKObrsTsREkeHS/waAkTzr9AtN6VGAypEb/Xg1YckVjXWi+Wv5B5F+lOEudGnTVTy3IhzeFW1cQbhIvatHizCWTf7qdRdMrXzXlLXpqa4O0nMlCsk/vNOFapt6fGX3iBuOxY4GdGEblQUPF+gIYNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5uz2SEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5uz2SEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EF9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748280593;
	bh=R8PZUKV7VLhuC09fo0c3kkuK/Wn+B5l0BgdNXR0hx38=;
	h=To:Subject:From:Date:From;
	b=E5uz2SEKV7Eez5JosmPvOkoQpjTC0Vv0dQwyx3+jCjCHry5/L4w/dhN7OQwEcvCO8
	 ODOgCI2G1v7MDK4ibErLbfQR2C3b6omhU+SofAF8mSU3pEJtUKsUrM1Q3NsabQvJxM
	 hzBdArdp2j7RhR22NwORdHxPqeLvUMmwI0Cm6I9B24gtjcS1APRVlViiGXFSIvi/FT
	 y0CkB7ptfaiAxZUFzDLewDqyD8IevNzk66CcvsZKxlCSdAGLOdpmFQiYgp3/IJn1vj
	 /Li/k0Q1d5hojSPr/3PLkZC8Fwt9VdBkoQzYf8UBVh/abfVNn84aXsKEtwfZZgRkKm
	 /y2ARa40rv83g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E5C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174828059358.24091.12735835897559742192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8fdd2fdda38e785bfaa57027c479b30260510f629b96f957e1a9a865c2f620a
Date: Mon, 26 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748280593
