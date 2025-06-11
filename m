Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266BD2C3267
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749638994; cv=none; b=Vn27crzhLJHuFqFlvnuKZPEB9RlrPJ/jEDlYM9NcTymLh6y3V0jtGCFflNpdEdi3GqeDjhu6PXmJgG9BCgApLRwkjqTzTKeyDgUzm23NWqESXVHhdLNKG/3XYvzdXNuukajAZcP+G9KrnCRfjRzbtw1QzJJGo+M5CqbfwgA9seA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749638994; c=relaxed/simple;
	bh=NbvZZMaexoRVX6PcqIWmuB9QKbN78/Sbo1IZ6Ef0kK8=;
	h=To:Subject:From:Message-Id:Date; b=pN/Nq8s+EkG2qCDD92XFIevy/CzPzpMRyz56SKe37f0/xx5/bxF4juQatnsCBhtJZKlCrbDhcag2K/xxHxBpHQBxbu1TuwQWof6X3YpIb9DeGWLyZgWM5bZ8GrT9PM7x6u/LEI55i+5nLgq2L0bekGDVIj1aeX97Nfbf9L3Gv9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xd8OwDHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xd8OwDHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B517AC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749638993;
	bh=NbvZZMaexoRVX6PcqIWmuB9QKbN78/Sbo1IZ6Ef0kK8=;
	h=To:Subject:From:Date:From;
	b=Xd8OwDHqOJTKLqZnyyuE1uMlMnOxno/Mme4Bu4UXHzR5im8A2l56pE/Pi+LoBhinY
	 wSTqnMAUjXI5jbV8S+k67niX2hCtOaiJ1ElBEL/gUNJwB80VUHLZoyKr5KuswL0m7I
	 mXs5xX4aaqZDCzoiSPy0TqiURzHLekkIolsqIcGvoVUa0HQxWdSvGNaZWej9v+nGgD
	 18SuJtqD1yP5Uh1GiOG4Zgl5SggqNkpqZqVz7S616XgZwR/yBXmueDYXI4KXkcgNrH
	 w/3a3o2RELImq8YsXYj2eRZWxA5eiXdhVNZlrh7Xqj2ygXq6p30FNP95GKBnKVhFUA
	 pZW+wDIMW/h/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B4C71134
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963899360.26027.7659034032525996483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096d8e670370224c9f3210ac45a6971e2bad0d0f39b209ca2a0f653507314f02
Date: Wed, 11 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749638993
