Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C35330C37A
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766411034; cv=none; b=Muv/9wwQ2cAdr2tRXkxwp1JCLrlQEXjIbaWZhOPmrVG8XkXlNxobuvJHa7Tt3TvDvh6rEcURbXKbsM74ZuvlfR24pHFboUkk2f3TjfVDRWsnJ30o2sOp2FXXBmol/LeWzd+uKpFa2pE4QpihxSq8/p0WJuNt0eTX3yladJqiz2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766411034; c=relaxed/simple;
	bh=5bcKw/unR018Gf61VE9zXIPHqeHJUygx0cG9xsPI1YU=;
	h=To:Subject:From:Message-Id:Date; b=TVtkP2WbaKqXKuyStJQk1VEOXxatfquCj1MgOaFk8Ozow8rC+pdzJWaV1CcE+3GwsWK9t/ILTX1KRyA/lnzIoiFObHaZtGA4n7eUCoCgjGkN7Ow0wlM60Mb5suBnHRzqlPK8RHzBeIXFV8FMro3AyoAiznhS36rHQlpVUomZqpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0r8aH1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0r8aH1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FAC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766411033;
	bh=5bcKw/unR018Gf61VE9zXIPHqeHJUygx0cG9xsPI1YU=;
	h=To:Subject:From:Date:From;
	b=C0r8aH1j83daED3QNqnOgkkJK5Ny5BMYRVtjYpAeNeUN3i3M0mekUI3aAeN47b9Lv
	 v9MSjOvtemQGPyhE+foDtDzBSoyBzKdxwAE31oIcyZ1TFqPojpZ79q0yExI9NrUqch
	 M3W6lIezzTeTaktZeyaIwNyrs9FC+zK2PKU5bY1ZdBQ9sNtoCDdW0ENF8JSzv/msCk
	 1ChAV72SwoPLfGS/M6LDkDqhHvAs+6zESRuCrKz40B8xH4BDRegL1FWNZEAqQprt3e
	 qtA2m9NnEQvff3mClz+fRw5c5JYo3k6jGJHrx3IUaIGS0e+3eCKY+8AP7GLekgXK5Y
	 B26WtRcJsmNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235FE674B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641103357.14563.367136301069699613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f64d87a2ff9dc3d1fc7bf82e98d90b8056b9f3e7889b165c82f8e7bcd66c483b
Date: Mon, 22 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766411033
