Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2E77E76D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726347354; cv=none; b=bgE7pl78bVSxq16BxKCbKMybJSPIiWH3t11gvyBNcgEtjIrk3WJx05b1FD6BRvHhkZfBhdWLvQln/mrsCqLAhgJ0/02E03ZD7y5FrGyGtCC+vBDgXHVpkdGRHCIDB23UP98vH3hR717NPClEFH/tq0DbbkLNeot0Gr95B50YArs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726347354; c=relaxed/simple;
	bh=u8KaPFAwliNJD465f+COSh9WwXrokavw0c5aNP3Df7w=;
	h=To:Subject:From:Message-Id:Date; b=muuAZhXOlpdaHtt3mI0n3LnoL1VoCz03TalKkR9Y+r1R6miHG8rjBWpN1F6hyp+yDRqrkJ851ATPmq56SeSzjSQmQr/ws0+Jk8vbWldp5KmjHljXWIwRxSv3AiEJVt+n0Mx0tHlbl7roDBE06UHO57tGmzkJ/QJLmGPBfIzIzjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP3gpfUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP3gpfUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FDC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726347353;
	bh=u8KaPFAwliNJD465f+COSh9WwXrokavw0c5aNP3Df7w=;
	h=To:Subject:From:Date:From;
	b=sP3gpfUDPKmI90YOblaHnmbD0mk8cgZduwC/HRo+h4/rlxMP1CiOFyaKbHUzVv1yl
	 bAIL9XjBt80vlakeomA1Okxcz+iuOUsFnS8pw5ZDRbSplDHCZvQo5zeMoaN5ewdzvn
	 jyJf8ghMQkmdvBBl+qTAOp3qx+jPyVWo2rtwo7NU+CJEy0Aq+ZDYMu9RVKc3tZxahk
	 UNjz0y6/BFSBuwEqkjdpeUzAajIz2HUSvDc3sr2Us0RjQtOsGfq1nLbaE+nlwfosj+
	 N0QSNsqZqQ185MhryxmkeI4S35CrhxmuGW3E5FnY+fw4PYkNzVUj3pkD5LJ+eJc2fi
	 Z5OIAykzK4E7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949EFC021BB
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172634735357.28368.13907013791854955099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8802f9d2c78d1dd1d0ae971a1d8b6c83fd6514f2fed9a221cd18d4ad2e30a5
Date: Sat, 14 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726347353
