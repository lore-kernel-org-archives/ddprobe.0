Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3907E17548
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734844554; cv=none; b=FgZ5tuYUz9KR8MwAF85DYe9GghR01DKZyNaFoT70DQvRofmW2LkrImofQce8KQNFkwiHgc34CmwJ/+1jekFSxfG5Cb/wsqqUBF2IGfwSy+PTEBKm+N9g3lah0ynl4EL7kiKNWLg/PAL9QxzcPTratIehfYgYVI+NGZxqWfcLirc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734844554; c=relaxed/simple;
	bh=AfQHtgeQ66nHXbyj0GkkQs13JpHIg+G9MILGKiWqDiQ=;
	h=To:Subject:From:Message-Id:Date; b=PY1E9vg5m4tOMS66BZEblVtrH10bECeUuyMNKhUErZRdU1lmkvztkjfh3gYzN4SH00n9GKbPofKL1YONpJagE526aC46vTXxbrLlhmxOEseH9coTYK0A6BFDzkydxWavsHKvcYM09MMBINxtBZliUY28uuocYih+Vxqh+KAHGEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZv7+Wwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZv7+Wwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE621C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734844553;
	bh=AfQHtgeQ66nHXbyj0GkkQs13JpHIg+G9MILGKiWqDiQ=;
	h=To:Subject:From:Date:From;
	b=PZv7+WwteqKRJewHLfoFJJ2fIonzK836xtWELS5S3OqcVTOMBpwifHHGOVhyktVpP
	 w4JN8YBnFx1ApsoTpTIlcu38wX9jcvzyVUgozGlQtAW03sbUz/WLJR/p2kOsJL6JX8
	 OfXeEMwOIR1oYYKVgh1LWbMPFyro7K0dWur+Iqqafp0rTSGsA9EKVN7agkr2lY30PW
	 SF7i9In0c6GinxptPMEdnhJUSFuQE4myHA+Horn5Azm4+jciw5b1EV8kvKcYVvz0Dq
	 7dl6ZFmSxQlDTqH0FvzjTlO8bBxnVC6vAb+5Mqsu7dIuRHdMBT6Lx8L0hTltcIikkJ
	 zt4zfeJ4/nThA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A034E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484455362.29456.14833879560962329008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656d435ea23583daa63f2a4f4fd479867dc80913b8e689c1cac1999979a31e50
Date: Sun, 22 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734844553
