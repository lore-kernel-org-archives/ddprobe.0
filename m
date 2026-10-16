Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFB52773D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792123234; cv=none; b=fkDuPiOujBtEQHrqSOTmmPJOLiVUi3fgjONFA+MV0oZI34ZzpWuym9ae5nGuRpsM5xtUfJhWqPj9NnGnzi+IokjE9zWOdX3O9FDb4k5C6yhOwwInj8rU6XFdDfvFbVUbrAw4GXnUABpEHU1P0/kH0P6MVdHAn+8QQ0nRvgYQYKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792123234; c=relaxed/simple;
	bh=wXZ8esIqtz/RdyzUV/XayLMXGeJYnsE8V3CUVIk8Elg=;
	h=To:Subject:From:Message-Id:Date; b=F/HDxkJxOfYhOlGzOU5EL8cle+m/gkTsGg87LVL6xS23cQiYD26caHTQfku+9SuFc6TLKP155yKSaher7oOibI0Ppi2wsYGNFmMy7ubR0i0/jYiB8zab3NVg+mXP5mE6kr6n2vIZ+gtJ3thRJkm4iex6OaCIUdRTKEag9s1i4d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMWoyr5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMWoyr5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16AFC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792123233;
	bh=wXZ8esIqtz/RdyzUV/XayLMXGeJYnsE8V3CUVIk8Elg=;
	h=To:Subject:From:Date:From;
	b=IMWoyr5MGSRlC654cdqFCd0WNYs8GWTtfVDVvkhsMnRRvJMr6lWrLN8UdBCrNdVFj
	 FZTWbjQJKm0xD+33w7FVpJiuJBgRn2nC3MTEVDvheiVpU1kitkg+VxcTrf7TxNR1Iy
	 cd9MUIwx2RVg8CF3nLjNFFcGj0oZySfX9SIrNrUI0iTUFPgXPRPbsO3q6wZYJsX9ZN
	 ISnsnvoFE2+wSynwae4XzG89G/hN37hurAcVJUSkhxLG7Aw60GG84pDi34y0hTGEKd
	 Kkdw5b/7t50kPRwxGXXqqZnAKyrDT9zi+HIGlxAvIa8JmGSOJWLc87/ayWlJoCWakg
	 vmNlRtZNhOCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC7CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212323368.1699.5355335187189642923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebcc71fa987eff1b51d5b629e5bcbf6f3727e7bf0b2b2735e795bddd42d7585
Date: Fri, 16 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792123233
