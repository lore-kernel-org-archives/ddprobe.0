Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E381862C
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713068963; cv=none; b=Wgnq15Kvcl8gRt/vfaozFJCc3HHPeWii+GKG13S/JegEZVcs41cBz7DaycdlarwQbn6XafAcwtfbPCLE2yCA845Sl3AQDrU9ruYWge69+OcWWuPfnurTUdH0aXnBkUPooQJDoymtsSin+Mmvae0dyfRMBNZ97NefzJ6SAwmtDmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713068963; c=relaxed/simple;
	bh=3VfSeOB5rI/jwheTbWvMZoeooTyhhWghFH7CCXQZvkk=;
	h=To:Subject:From:Message-Id:Date; b=dgfiDq/R8LnbqH6wTwD1meiwRyAlGstpOY0eVONVJNf6gVC3DTChiu8wrIqJ5yqEMU2u4Q2XWmwbEcI7NJz4pKkukKn4bEEX8A7izm5yx7Bv2VCJxX3589rvhgSha/NTu0cukZB3iQLIeI53uPrQ3e3rLwt7AO55NOVfNSnZHQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPoNYxHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPoNYxHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DCEC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713068962;
	bh=3VfSeOB5rI/jwheTbWvMZoeooTyhhWghFH7CCXQZvkk=;
	h=To:Subject:From:Date:From;
	b=TPoNYxHnQZcLQRcll9PNUQz5b43FZs210rPSFZsqEqc4+n07M7Iln8EAPCFBb0nPS
	 juGAWvEv0UBz2c5zaPIYsGIfFtjiSxaCSu5htoIiBLahiUfhOS2DBkJQUhlCp5jZh4
	 Ar6+ID3bv04RFgusfB72SUdvTTSBblCXXKtuWjnoXjvMY1lUYUz6niK4mbCaYvb7iS
	 CNC40WA5kvfKrXkxa/NhYw4a39vGf7HPR/EoGBw+yTfm1hAsNaWOmhqpOdQggWxkig
	 WXRhVYht/gsBDz+vwWKNHLNhbMLe3vGJnRUJdMbheENA8iTWKC4sTJfMZ/MLTeBASN
	 2qu0QcT3abyOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16AAC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306896276.27314.2884502265656225550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc26bee18a207e759f8e39e60a11aa89aa7e0ac22e62a7dc9e5daafbebf4701
Date: Sun, 14 Apr 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713068962
