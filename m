Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F482C15AC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777409854; cv=none; b=G1y63vdkhJJsMeJoo2IG5Bs0lA0C+T/5bUVy2mh2kFN3nxSkxrCc5dHrNjKpPW+mPe1Rgqb4lEC3P3343dA39TRChTnS1mgCbJDSO5DSsd3nObsMl9qm9Ye5RuGTx8O8DQePRj/OMibJRjI/DU4CIcsdZWg6qpMDDLIaccb7+Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777409854; c=relaxed/simple;
	bh=eiOX7QvnDxekp3ykKj9Q7VAJ29Kmzqyc0oseONkFYdw=;
	h=To:Subject:From:Message-Id:Date; b=CCqCD35so08ebHCNPloQKROl7Ad0O5p4gFhyz6od6gV1/5IwXa6b34iQllgft7F/ZTgAT+syqB41lGTQ5DW+dxiFOOpmLwAbTRs+iLZ2dG7794Vvrcm0WOzfuz/3A75CoRU+WEKG+Nym+/gEjYlFbxcLz6TdwH4O/4B00Bfs7u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/ODcO5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/ODcO5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB84FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777409853;
	bh=eiOX7QvnDxekp3ykKj9Q7VAJ29Kmzqyc0oseONkFYdw=;
	h=To:Subject:From:Date:From;
	b=t/ODcO5R/Uy+s51RzJkMIwJAIvUeBmCOvUJj0AShA9slmj9lIuVj2ur0uSgQRDMX2
	 Ei/08/7UZEh5TlebWruGqD6P8WNFA2gPRgPajb88rH6owPmpMVBjJYtTb/5ay2lcZB
	 poN4wzbaeY1eWmWNpEbuPbyxwXOYRFSClvUmAYEjoF+1aeQNd7BemoiD4zq0hQlxt5
	 hGjCo7f2i0ZGJ55uTYEXPh+0/n38j3q7oc9LsE5zpYriUyGoFwW9PMlsOoHAFT4W9f
	 rWSgoSYOVRgnJbOV9cx44e51vEiZU02QxgZeLJemWUtQ+dfM69ps+Ud5L6ZlIBywjE
	 /+w13fHRwJZaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC520FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740985368.20704.13892635581375296454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5dc23e6cae16cab22e339712df2cbb7a10d61aa49c4ea80c58b1b810f87273
Date: Tue, 28 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777409853
