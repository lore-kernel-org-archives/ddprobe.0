Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFE5272E56
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787613634; cv=none; b=lpkJjvwpvKD9MsC2gbFu6iygt8B97LIUbS7cr/nqEHb7XkJr1PdkCvy8/5AtrtohXEMdFyl094pDlEWtWiL+N5E7RGORWcq6zX+NihjPWT8ohOujKu12HXAsKP8PPwZHSSZKCGht4eDkn5LxotBDRKUgWZtU6gQ26KheoRJdDSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787613634; c=relaxed/simple;
	bh=mfMd12KDELrsyaMpcWZ/K1ksumUcY5BDUjgHPHWtHkA=;
	h=To:Subject:From:Message-Id:Date; b=Lw/vuvYU5SndYmXCF8mMFS74H2vz7kXQ0R96Z+vaODKKsuPzKGibqWK81ODZyhwrQN1882vmoQIE3LYK2or/7mY8yo8km6FkxN1WnrO4E5l+R1De8bsof5dq/bEa0ug3zcznRswEIR3SEU/YKjNPeTgBsdGjPNHu5z+Llh+E66w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivMpRRJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivMpRRJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35CBC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787613633;
	bh=mfMd12KDELrsyaMpcWZ/K1ksumUcY5BDUjgHPHWtHkA=;
	h=To:Subject:From:Date:From;
	b=ivMpRRJ56/QTNa6D7QMsl0JJnm5EANC904OMdaDCm+D5lOhfr/3+qyKNrLst0pL4J
	 475v0b8uCrd9V9HPBs6EvgGFR4swLCLMOJJ2EX7DgXBIj1GdN5a9laUudIL5KS1z62
	 sEAofD2N5GjNeF88vcR3t+M9KR2YiMUWxIHifCz3rpUeBrxcLobmG7YkPIf3S/IOt0
	 cwnCmmkYkQ88MKQ/Hi87ITbJx3iNCsjcgj1W4sXz8p/GL8g2cF0Z/vGyQQkwt4Gr85
	 WMtfEFGKJw95wCIn/NkiOELu14E6t4K5ZSg4PkNJY0U+FiZWr1oaztUKDOgyzb0JJv
	 8Sy085n9Nm7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B066CC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761363368.9253.16384678309748262752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e44c03050ec544a74fe86a177e07acb8c3c88ea354ff028601325b050ba4a6
Date: Mon, 24 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787613633
