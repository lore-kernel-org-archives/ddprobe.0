Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276AC128816
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764601374; cv=none; b=kyev6lup7MxfwU/guUlu97uJ+tve/6u2K9hQbCbOZDnhvA8To4TIypky/EVgthxCFKjW/9QivhqXm5/E1lbMr9j7b9pC8MyNwi/FBhqLIfIgl3wj01a6pZn4aSk5RnngrGb8v4EhD2N//qgPXkKq+8t6YC9wK2JBbpr+cxjxC/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764601374; c=relaxed/simple;
	bh=rj27zpluvucmtK+e5D/eXELxpCV6I+DlYunkznOrKm4=;
	h=To:Subject:From:Message-Id:Date; b=TTukgVuRRynOiudl+XH8xn5td6sj3kBbzRfw1y+g5IYRbiCzJHPUFP08gZRxZazyjWccin8t9yQaQoKgUkZoVJIDLkVrBtjSERrhgVPxCfPgCGj9eIOfZyvIXhiw37Ss1kZZZbqyjB7fhSSWAnqVkELm5Wto2SjGMLGbYKmDDXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EySVWF2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EySVWF2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD95C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764601373;
	bh=rj27zpluvucmtK+e5D/eXELxpCV6I+DlYunkznOrKm4=;
	h=To:Subject:From:Date:From;
	b=EySVWF2YqXdnfOi/fnkGB4vrQNtmbAX4bAlZFTNhIvof5D9ZlImUczJRXSUGLlQuQ
	 fM2ECPbq6w+FHqbYznJEphJvFmVz2FS1edPi1WcMs+pEArWMNgmckxpISSEMYs+VsX
	 aJYUxi+Wh6+M5l2LknmRhecLCcS6BN2mFc57L/5lrjp/r2sC8m8GcnhKNWD220gR5l
	 fw83Nmsyc2gTvf3p11leitSnzE0OFzqdDDOjWBoxh9BCNlfetlrnJpUVnttEZey3E/
	 w0wnpw78NstUZBT+E65tQOPNb+1bxb3D9Lmr5bcQGyEvjPytTKkj9ApnQ01hc6el/A
	 uanh5BddTFdXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA83D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460137360.26856.9501173007124895785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0657e8ae893f681a1d5cf2de8c2f330295ffd6b4623a2968d1706c298aca7cee
Date: Mon, 01 Dec 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764601373
