Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19C0550DD5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788897034; cv=none; b=UOz6FuSxKlUcxwAjIWep5BNqJYpvLMIBZHR35yPfOeXKIOHzeeBX0y2k2qrBZDhkkj2XIcr1ovvvZBgdkiJRxONuOFlfn89ifoK9i0eIcjWoLUS9Z2Xu5VBeMYtiyiUL4D1eRe4BopBqdNNWf93AYwEQpfIA+qS1D6GuZQsdkNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788897034; c=relaxed/simple;
	bh=uffH1wzjBXYqznJ1fYLE00MDqkTwWBlsLjLVCG861VU=;
	h=To:Subject:From:Message-Id:Date; b=MwQurX0J8udTXcGQq/uni5pjQvDXwwQjPiiMhYtJ+9vDe2e8dM8ykMPUWlpO9SpL9GXDuJMnhCsHOAL2mcMtOOiqeczf7o+FhcnUwhMXAWx3v88fHQV/4pvwgJS8dtfaVcKJJ5Cs2PuG0NbjZWkDIlbcsAbE1X9uP885jQy3Ryg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taTnEqJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taTnEqJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E43C4C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788897033;
	bh=uffH1wzjBXYqznJ1fYLE00MDqkTwWBlsLjLVCG861VU=;
	h=To:Subject:From:Date:From;
	b=taTnEqJG0JC4EAkHNgV8wklxSICp41f9xCxvZN2QzCDMvgxcBTkCXPNTziI8m9aIa
	 hzPZfaFlIFTf/sbUDhXjnzkh/FemFCFFP3L5QHoCTTXkyWvo6hw0nM6RBFz/LHKoDi
	 qoNBUhkmIgzdqcgwr5epHhsSkpbhm+uwgHM7x/zxgh+qq+n3Gmn5OCp1+7off8MRJA
	 X3Tc1m2RDkHDObpzAa5zbN8Hk+Gr1fxx86laL77UIN9n2/bNotepflBEP+zPIvm6VQ
	 opEK1RjRiD6OKcJnA6VjWBysODerSe6YgEQbBIMMCjGtFCQXLIuQv58jTt//JFE/QH
	 K6ptBOhz84cog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE6DC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889703376.32610.10306497860217831510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd66ed1e8b85818541a5bcea9267d687e1fbbdb18b1245725818ba036ac680ad
Date: Tue, 08 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788897033
