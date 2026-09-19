Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAE3357D09
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789815034; cv=none; b=gTdDRBtXuIzMtox6KfeSvlQeWsXjyAiuKnxKFYPbZP9qAM6B6hOuQPhkEQ/96Tu95VXzShDG+yQAWDQbxP/1p/dRzu+EuNDNto4ii4GsnXTUMA0Ga3KMZ6usiHuKnRbFvh03xdbm+j4ETYcTMAjS76oF6hD8MIzjuMjsJJAS2zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789815034; c=relaxed/simple;
	bh=lxQ2AIbTT4e47zBhgnnBHFdAHxPimmkb4talY5ivpss=;
	h=To:Subject:From:Message-Id:Date; b=Rw2wiWgXveEH7W9ryBVhoyXWnit5n0SGr6kK9g9aCNMZIvu8T7HPZ58ryPDydP3zciTALOF41CnH9DkwM/cgGi2RG+GJOGaV2CfpMKH9vYaYtAJN2j1+4Tlny0bTAQ4IwCu6iTupaM4cGP/48lCkWibyMag4pr/mY2hee2EUzsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osCSgRB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osCSgRB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B39C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789815033;
	bh=lxQ2AIbTT4e47zBhgnnBHFdAHxPimmkb4talY5ivpss=;
	h=To:Subject:From:Date:From;
	b=osCSgRB+Lu044pAvjhTPDvJXENVwHNzl9d17Cnx2wmS7//7FjZgXIDijoG0MLppuM
	 qZUEjSGdI7H55B9hB/usAjY+VVZkP0FpgUxCTzZi9znySRI0Z5Ui5hh7F4CwJTk8qC
	 ZHj9zr1sxw8bqoOuZ0TWFXAnC8Z5A7JyWGK1CTTfBELoEF6xcnLG8ORGNOtAnfXbJ/
	 8OH1e4NKqJhvMhAMhdvbv4sSJQE8QeDI0BUgX48ZszpoqUBlG4EETz9xrFjSJJNnqA
	 xOzje3f794KYjW/Cra8BK/6BkIYKCkroYHdnoENNk6sqhoZDs6mkxCZ/l07opv0twB
	 dy/qewV9lsPqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC9C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981503368.29055.15218819188507792410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d2b1a49d35219f6786cb29f7549441e95ced4d1337ce6138eac6731bccd7f2
Date: Sat, 19 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789815033
