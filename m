Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289721AA7BF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754844594; cv=none; b=Ddrdb+XKwF8cY4oR4QB5gblWYW4pjj983oEh6fmAUsC4j3NFuipz6UGNRoGnsE5fbIS8WS05lGRlErddHe6xWqDRVkQcJw78PZA+Oa+Ad9cEsJpqE+RF6e3ycnHhaOYafHYDYCCqEZ8ocrLoe4cLyQ8lCIOe9FsPs5RdsyD2HLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754844594; c=relaxed/simple;
	bh=kcCwOxIFdl378zenXQmWErvEm1HWT9752lrJYq+stbY=;
	h=To:Subject:From:Message-Id:Date; b=TW+TyRLloXKKoqByTtGKSiNRRItytw2s/tk3qjc9DsRqEx/oWgqYt+KJsD5FsRNd+Mnjq92Wy66cBE71DMOH7/Rtmv3xkM0acyzfGzxVWhW0+prGTfOtZqxWtChYoQJ7l9PlSYx/5A3+yUrb7d2k12dIDna8U+p46ZSr7IvrstA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdZHdjFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdZHdjFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754844593;
	bh=kcCwOxIFdl378zenXQmWErvEm1HWT9752lrJYq+stbY=;
	h=To:Subject:From:Date:From;
	b=HdZHdjFtW8BgUez7BdWvuSqdISjdXkAJP1nBLVOFJcaFN0P3OFAaS67bn60JiWzkY
	 oXoNh7YVem6K/b58L0sMnGcvCy/sTEvHKflLfVVMs2R8z6h1NU3jajHnxll/c6gEGj
	 qFtn2dghLJc240gVyHsWwVTFQFEsUSYV7RN9iQUvwVkRfsSctSMNaCRl6TMaGDqtKT
	 XGujEEqV3a2gj9WGkcOqKIUZ94LeXu7LrQ+f2RYrn1qnUkO5Xha7ul8tODG7Q2naX/
	 5kzF4IlPMFq85M2kbniSkn854d5UZqo/2IO54oRWGhfe4d4y1KRfEIx2zl3qZZ+sB6
	 eLhaUqLmcACgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED6AC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484459357.9084.820798267882733744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e900d6cf7753c70d27e680fb733dacb5779b18deb5674353b0859ab4b5260d
Date: Sun, 10 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754844593
