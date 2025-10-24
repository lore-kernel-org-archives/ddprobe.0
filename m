Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222DC1E500C
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761315594; cv=none; b=Einb1GQzHhB4G8oeQ/HjNgA0X7+qdpoQs9pbpCaaO8wB89VIEKgTzDDnPbTxHoC9cLs+zG7SxxGatWfTJYUIV6N2pN94lp76ga6bS7b5kTmd2/11cXQ/TeI6iteUTKBiR3lHm9r1bMF9Lb3lNnFIZv8VtXOFpj2bTmcDl20Wt5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761315594; c=relaxed/simple;
	bh=UPE2rv9aHSp3jvrANyYlLKYtS+DewZHDYgCxW8apYlI=;
	h=To:Subject:From:Message-Id:Date; b=He54BT08Fwl85sX52gfcZCoqDLVmnYH+qZZIEH69sFwtf1Q6WSngvdbLR2KZty+0M23LCPOWGO93b5QTq9s4qGJq2aUBDJGc58jms7yjoiUYJyJuN26miqtel1GCW06MvI9KM+ePweqHooMLncBpL9mhKwGBE9gtx2L88hZz87I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBqZHgZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBqZHgZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A170AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761315593;
	bh=UPE2rv9aHSp3jvrANyYlLKYtS+DewZHDYgCxW8apYlI=;
	h=To:Subject:From:Date:From;
	b=nBqZHgZaHh7mz+3mWFvQf8XGoMRzAGUDutkRc0Sg5fj4aWPjP6nFZ1K6RO/4kSDiu
	 Ck6oaO7MBz+LDYFNV6kR1Vvnm3glRlNrirHm/cKHfFwE+eytsjK0MgvPKVCOVYEaeU
	 ru/AyZwdcdLnKKhE+Fg+igrSbKTZWSUTrhGWud6cFRACk7c6qShs3Sg4CWbcK8H5j1
	 J+IQ/Dg2Oede6TqaHxwK0J66zIMJ3FfUTIAVcRi1N2IqETVKnCq3tBNKrv+us3J1ay
	 xCbm/hqZpCSV8hFxlPMb4QzHWzhnGpoTRZEfRZPiTsYlPbBp3kPK7R4X/lXyRnkwV7
	 Wn3SkrCG7nu0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F117CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131559357.6585.8932744279544033808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8992f7e3119c5adcf11de913fe94ca2af6d35f07f579aac697b3649601eef45d
Date: Fri, 24 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761315593
