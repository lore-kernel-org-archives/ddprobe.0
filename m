Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5758737107E
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788208834; cv=none; b=CRbrvD15xrYBbO+Wp950dEzJqTT1PCjVlxztF9f0fSknGc/X3Oq+0EqEXJqFoXkgqACkyeoEp5qxA2BO45J2fy+FMKeSUK80xxT9YgPLze+2gXxiJxTSvZ67e1J4bdcWd9/bM9gSRUbdt2f+1f0DusALG21b5vH2LlaDUlXn4ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788208834; c=relaxed/simple;
	bh=CcYZENPnTIUoIiPlHyXia7Kw+8lNfhBRl6VBZBD3TV8=;
	h=To:Subject:From:Message-Id:Date; b=LYKpJZwc8I2G1iAPprKpgXqflrF0LzTAIh97/FRMw0VdoaeUgLha2cllAkJmrLfRuZJNFCEG9PbyQd+PPrCbrNY+1HqWCGYHEiv+g/4yf4Cbafq2EhWBXsh/po90TbcVpJeoaLSSvxXQmtJezzbv8gYxYVfFFGybYhGKoPoytHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjFo0/RM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjFo0/RM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1292C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788208833;
	bh=CcYZENPnTIUoIiPlHyXia7Kw+8lNfhBRl6VBZBD3TV8=;
	h=To:Subject:From:Date:From;
	b=tjFo0/RMMihKviuHsyBXQjLugMsNvqyZqUezLwuhgntu0fnvW2S3kKOh34IkVdk9b
	 ypWg3i0QDm3ZWysiCfaY80UaEKOaSlvGFB50pyMIA124w66kSoF7U0g/VfspxQpVv+
	 RiZt5vTo5e+OVkkhwQaxohe80J3jD253Ef9y4DNrFaT1gdom0K7DgC7aVQw5A085oF
	 nU0vy26CObMaaH+5VpTsRQVp/N5oMLQuuQe7HjTbuf0HlBqgY8lh2O5poCX0VE9IL9
	 QaE1apjqs0qzhDHBdaixJxH9Cj7NdhH/cbwKme61iDheW4+mYtLXqkLiu4gKasfO1H
	 FCK5jDvp/4GDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC112C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820883369.16821.12103903237744923097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64a39173c3db8ff98482b38c131922f489c4c5de58b96104dbd08d8435e95bc9
Date: Mon, 31 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788208833
