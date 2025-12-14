Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1E7F513
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765737774; cv=none; b=iaM3aFqwD/Hc9bDM8dtpb+9nPpvC4tjYWkZunSI+zequ9AYnNwGaImH+hm6QmvdjOCFs5EseID6lm37kVClpqfw/A0r4OsJjvWvvV2VaF0IDounQ/pc3p4HiD/ifroH+PdOCdo7z6TlqZxHnRa2V30YiAWJ3F+jrtpkmS49F42M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765737774; c=relaxed/simple;
	bh=T7W2PPbZo0CTW5EIp2VqI95HQTFNQzFqbCWPgSxbDK4=;
	h=To:Subject:From:Message-Id:Date; b=FXmiWa6HyqgRXrudpTgVDrnLMlnDKehKTvgRg4ToiKUhqQfrZ7bNzdb/pD8teueN4Np84bGqYYZJJQGMjmXUsKvpEm81oxXHEoc7/im5/t820+NYA4GT7J9Gf2xwVdzhIRfIVql4toGHJvtxbg/YdgigWvWTxrHRlCtYqgh9uSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lquaCu/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lquaCu/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84D8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765737773;
	bh=T7W2PPbZo0CTW5EIp2VqI95HQTFNQzFqbCWPgSxbDK4=;
	h=To:Subject:From:Date:From;
	b=lquaCu/ow8StmPWQnhSU1SITcsf4APSB2rZE5VcSgcU40cACQRUMuw33mBgoHfUuC
	 H2gMCY1RENu3HpWPQJLaFxmlMj5Pg+Wj/m4usMCXctkHE55/rZHZc+rbdNOuYX9V4i
	 QJ3jT4kbaNHOUVHHaJqAneILoAVQDD7EPso4hyDEgopGaRse3o0QlqCQoNhUxf7Rfh
	 c+bLN+PjxrDJP2q0ayNdlSbZKuBXpQJAe4KB4+3XUUp3iMobr9aE6l0sPB4zrty4bi
	 IPhHwz3L6rKrUdIijVLkACrGvZMZ0yKZhHt9s+pMYvV3JmdGFgKTx0qzYjxJHlPdNx
	 ubjbnZ64YmHFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EDD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573777358.9807.16379137699209053153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967b7fe0bc6d28d7a43ca3c2033390bdb7b7056d0454d43790cd68ea8e77ca37
Date: Sun, 14 Dec 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765737773
