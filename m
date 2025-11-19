Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFE51A2C04
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763512914; cv=none; b=i6hbIslsvHIG7V7AmxrJ27u0DrDDGQI4OPyPz3GLvUO/5eizLXh7AxESr46Hyly9aDz4QC8Op+erO4pDZlKGtlATg6xPleX3GldeOHIMQMAO7xPr/vfuUb3o0hTC+YtM+IXM9xYYhfMgViKOR2SHP8wTevSM0AcpjMIzFvPEAmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763512914; c=relaxed/simple;
	bh=RMoX33Z2ukvvjgVDYth1C4KA8GDDiRbi6dm9p61mzK0=;
	h=To:Subject:From:Message-Id:Date; b=jsvP82cqnk7ani2Hswv4C2IyWYWS/6P4ruc2pOsw2pOrtjHqcOOi9aDBUcvJ+gR7DCZBb4cpOwejp4iOWlSOJodwPWUNm+HpGI0h7pIuW4uHpddVH+RwmBaHG1rKQRBA9d+cEkIz1/idr5t7XloLnKn7I16Q/EIgpgv+IPaFAnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAZoDKfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAZoDKfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9445C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763512913;
	bh=RMoX33Z2ukvvjgVDYth1C4KA8GDDiRbi6dm9p61mzK0=;
	h=To:Subject:From:Date:From;
	b=oAZoDKfYI4mKqs4GcoKIKo2qP8AsFX9xtwtHsN1rSXLF/p3YaVGCeFo/ajBE+GH9a
	 WErW60dcjAXvPLap/PG70MTzWlKc1Gv6zmBPF56jDIZRlDNLkrr1Xd61F3WL7SMp0p
	 YMikBhY43AlTrP5vkQNFEBNEItRoZ/vyfDRBV5L+GKBpvdmu/lOcRgIfqnFXJ6sa6/
	 TvnHwzy2Lnc+wCnmxfPu8s/OWdNzEAQg7LO6HkZVoDkkdFYrw1Sp1IEc2zFvtvc9yX
	 XGShKH/Z4CRBtAkkDI6UMMQIqHTUPw8kTiln0mk5Tx6ZbxtpTwCmq4tblmSoXle4wN
	 2gHqw1Or8p7bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B139CF2566
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351291359.2345.16068597130021882858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9353ad6e3bede5d997fd17c66234902b2943e42b4c65394e705caf6830389cfb
Date: Wed, 19 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763512913
