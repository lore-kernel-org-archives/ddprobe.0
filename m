Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415CE423EA4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785244234; cv=none; b=Ts1B2kruutAo2YmBJXjMfKLdhMjmwQN54lhLFNFbBhBxNLIMCVczI+vpgmMCnszvsJ/lNA748oWACWAUuTfkMsr5y4ygRDVw8klCFZm/ynxCI+V5H7jpFf0xwdsMiMdXAaCzbvYMxBs4dRbDsEkdbh7bnZ3ju+9XTxRi1y5dNzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785244234; c=relaxed/simple;
	bh=kG/knrjxbxHAfMQWeb/QdNHwv4Zpl7wA40RchoNEdXY=;
	h=To:Subject:From:Message-Id:Date; b=TF6HkhkfC0XOv7ICbhrWLuTqEy9ov6NH3MPBfv8ZVCDy3B67P+6WA+Wa5iWEy756LPpolGSXpNhaJa7D3E6Q8Y6yFdOlumZYV76Zegb50quXmmNnbfUSWuYPxdM23NfayQjjZmGG5WZH4c/05JWp/m6BdgiRhmHrrmLgx5rz2Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcHhHCvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcHhHCvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BE2C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785244233;
	bh=kG/knrjxbxHAfMQWeb/QdNHwv4Zpl7wA40RchoNEdXY=;
	h=To:Subject:From:Date:From;
	b=GcHhHCvBDQvRkVltqPTHmANrKjMPZWhtn75r1qoPKYkBxoqwNrXilRVic8HoPjHA6
	 lER4bBxJES2m3Hawmbijtmvv+f3xq/H6CHkfwz87QwmCs805bDMpAZAV92YcToAFWZ
	 r1Jiie0Y9xtLO0x2HeOvt9ypaXBOzG68VKnb4SnpIhBwxs9co6YNhqoDKFuVUpUyqE
	 OX8bNJx0fOCZwkpHgaYcQ7GQPs2elqXTSveEula/4H0MyhfP6YkcE6wASFU4xJm1rU
	 H5RsrVO/4GKgnqQMUeRYpTA9ZK/kn1BHvUIg1mdhTioFgNcx+5nyX/Aca4m8YMC42x
	 l18o78V702Wbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE68C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524423369.24245.12040565953368455062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d935ec3c6f681c520cc69daff602b9748b7763e0f37eef8d968cca367e532953
Date: Tue, 28 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785244233
