Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161652594B0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736298954; cv=none; b=SEHS9h2Ol2I57ZpSSd31o4w/p99/YNsI5/Z9mTOckMYTcTEsn2NVuyhPT7gjaZxIVG7JOtCRYhjTsFjNyxLzPHo9T4OlxAnituBqVQ+V62JKu9ABAu1QgBefkKz3ad65dtKX3bmEGTEO2H8DhnUsB9KoD6G7z+un533TyI+DHck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736298954; c=relaxed/simple;
	bh=P09Kt3WuZs1RH6EXWCK5XjjLQpXJ2ypEF9bJ6NQvf6c=;
	h=To:Subject:From:Message-Id:Date; b=NdYxFWKvq5kQJ74HjQ21jEvgXqLZyl1sqRYMBfsVTUS/MvJkV5LXw7W5WGmSZjO6mnKs+cPlu/5tVSl6DqCjQOTwkPwVE77+u2fh2NrzSJ0Z+n8HeClN+a8Q+pkOhgONF4cHTzifL9rf3gcQsDiaw+grs3X0/myI6tmy6/LepDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIngWoVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIngWoVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB765C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736298953;
	bh=P09Kt3WuZs1RH6EXWCK5XjjLQpXJ2ypEF9bJ6NQvf6c=;
	h=To:Subject:From:Date:From;
	b=JIngWoVfYyM9tBimaT+LqnJrBZMOpqATNsJQ2CTboZYVUBL7UVQxF63Mc6du4Ev5+
	 zjhnrE7Tc37wLuMo7Vx0+nmjzq3wajtY6+qPXfPCAPYeuGm/Hkb5b8TrP0xFq5Plrk
	 pKY2r1TK3UTwIs/bnmPGb4jhcYDRyzKdGHE24641uMuxITZpyzZrYV7kbhBIOVZGvO
	 Flh9dF8mUkQ9AVEVtG5zNoEUgFZNAx+74wRGJfIY6iEjjIxbyGOuJB6BBa8HzXkOlH
	 JVTNRNRFAhNAP9eRuELuGn0UmR17pYPMUfAWzsyDLNyzNRI53cCpkTpgDFLH/NL2WV
	 4DgIANsP9gtgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988B5E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173629895359.25589.14087581176993651358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81c8bc96f8ad491dbc06f5fd3c604c8ff3959ee0f75de3ae8d9403432024aa62
Date: Wed, 08 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736298953
