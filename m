Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6725776
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766877834; cv=none; b=ZA70QZoKaR/O1lJbmVS6T5kwACzdAfi2HX4s1TofH/PWMNvPdLJbYt0zGhDYF9I3PHxQM7yEWKoKhmZyCXy50YjZOZRoTL518/FheDEFBkdL8F2FZK0VynIO97nUpcA79/l+N9mI5PzKNmbOmVScETrnF0eWAPpv6WWGI+/0TjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766877834; c=relaxed/simple;
	bh=pABKphP8zXpoToajWAV5i+g3xrUWt57j/kuL5G7SVpI=;
	h=To:Subject:From:Message-Id:Date; b=UaurQ0Ja2hXXLHW/ftibVWnqX6G+8JnrviJ952ViLwBZR4b2f3VfQTPITnKTTAbLxObIaSVjUI1bpCx8/fDi4s3WMAtpbq7yqJijChHuJCO7QVZBoVfVwMs3PYbAgF9MaIm77BiTzPAOYCgrJktZ7/zbGgwcF9Jy4Uu/EjvhRI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sihf1nzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sihf1nzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06B0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766877833;
	bh=pABKphP8zXpoToajWAV5i+g3xrUWt57j/kuL5G7SVpI=;
	h=To:Subject:From:Date:From;
	b=sihf1nzN/tDXFqvcqdJglBuNEYy4d3cHik6ttc6jGYbLu/5oG7tLseo7Ni01NAeiE
	 DINQT/QsxMMilkFWQ4eZwZmlfF8UwjmVZEqjlgiEtp7Z9kYuY4mNaAaJhOu33IVUh4
	 wvcYQvANHKwJBpdg48fvdJJl7zIjN365pp0rQgzZ4jsG6FfcMnSTg1LjkeSRLPXg2o
	 Ij/pYbNE8+ej8/tVfhMphltRZjI1nprCblK830f3Pc840UilPEpphOUe41gbtyMsIh
	 K9DSO2en8TiSSJeeyDc0yqUAmTNAl7WUyApc6XOFT0skk22xzDaNTmEqvaqV3Oo2zX
	 CAeVxfMGn+qsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F921E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687783358.25328.3323848376816377184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd205ae88ac60b06d7c67f7ba3441a4121c5133d74b3d4a2d7e1e3785718dcc
Date: Sat, 27 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766877833
