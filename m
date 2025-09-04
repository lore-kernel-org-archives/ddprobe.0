Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35272225408
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756958994; cv=none; b=cwzEEugY8DM7Xc5hn/osEeyvAdry5/fYay3h+Q6JF+fiBPK7+UGRHeovZWGU2XzV1ukmgvNRnUTj24f7/cjPFuYSlhjbxbnKo4efD+RER68z97GetYhB9NcNp19eHu6RRvT9jqphwBSbE82Db9CWxlTQaId8USyVfdXSfvx17ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756958994; c=relaxed/simple;
	bh=RpMOLF3P5JdwlxJxzkyhoZX/OMyBU5pgQ5i00x864hs=;
	h=To:Subject:From:Message-Id:Date; b=FizrxzNszFkdWkniSd2xKRwvbnv8vJ13TDev4Jhpk1Ugtw4M6jGagFrxPZz7MnD+bSRD6A2jz12hyNQ1nWufwk8d4NQuxPRQtZrkXxIy8SLbO8FhmP9JzCfYN4elzBN2qF1aXk+pA8ZINqaGQSCAgnK8xCxB+QrGeJBuuPKjiX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pf1zLFuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pf1zLFuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC2C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756958993;
	bh=RpMOLF3P5JdwlxJxzkyhoZX/OMyBU5pgQ5i00x864hs=;
	h=To:Subject:From:Date:From;
	b=pf1zLFuQy/yhup2braYfTBKUARPLPeaLT9k1AzIWaL/CROjAB87893UlCP8jm9NJs
	 Ml2S5uyQNKY633GmiaW1FFEijsNMrhBp4yLG+zo85eKEpvpg0ZlSMAunpRYdP8lxTR
	 74D8nWzax3w+6XbYW0ohRsTbA6oR/TV+oeMPZlFNpwHQqxO5wzh1KeCF9U70RepmKX
	 aZSmf52eMDxjQHl9g9Y7gLVq/yP8wRncwUkJ3mqhfOwvn0/PrgSztL1supglY1wdkt
	 KD/h6YDqwnE8SkLRgqeHGG4JiUfD2kH7BM9414SqxJqLJBYt/dczgUKMaQrY1zXWna
	 eH6mInsh51OnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97BCA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695899357.8313.9870329658001006666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc976e25793ff1d4ffeaeec811cbe8cbe1e251b7e31dff6dc5f68bdf73c5fa30
Date: Thu, 04 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756958993
