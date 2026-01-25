Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031B722D4DD
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769358234; cv=none; b=nHX5h1vubxufJaM4o1vx73dyhGIY64LKqtPmVQGlDrpLnqUTd5Bc7Si+kgwZD9HBJcqjqO1NvstxraXY+zvZ1jqXchjGlzhg9B4/rW8Dx/gpkjslthZtyMsA2pljvsEVJnGWuc5KQo1IU0Rx/3YuMjF6X5SCNeKMdK5a5mfRMRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769358234; c=relaxed/simple;
	bh=/SFWYSfejbUSERn1OK/xhfLRQNuhDdCvIniY+t+69Qo=;
	h=To:Subject:From:Message-Id:Date; b=DmatN7H5c4u0nFFZbD6uwho3mmMikXDCpLQNZRvAjFzeoKlT+DXz0vXck21TZm9FBSt3tV6hn7U0v1ZTjBvdOfXW+QUXRH4/iavctCWPw982YU5QasBk2jhKi2dHErLXkm1eN/1x0ccA9e8ZNv9UFUSiw7sNxbWiU86X3UkMTX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iv+BvWjF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iv+BvWjF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8DCC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769358233;
	bh=/SFWYSfejbUSERn1OK/xhfLRQNuhDdCvIniY+t+69Qo=;
	h=To:Subject:From:Date:From;
	b=iv+BvWjFKXEJlTBAoAhGR2rAsQMdwqpCfonHdJB78oGur8xqnGVgICH4R+ULXkV/U
	 BWxd11FumvSdUdCr+RPiMi1m31iG8e9cx1uFMUOB1LiEwPx1Le6gZgsNx38+edbITB
	 3+phw6eaZYhWKiJ76MwDPeTnupydXjcN7OPnSDALN1B/1cXZLqlRLYAQiyIegcRTpC
	 MRG/qVatrSxzHKQ1JxGUVHxd7Mp94gSVd4A+vARAk4DKQ4By3U4++XTEU5MvPzzfnY
	 yXgPLn7aI8ne/jL4bUr/v6OASqe+UW05b7rCtOceBM7wxanqUyURhSsR5OPVTlAAo0
	 t0bmULMoyMcGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F467E63CAA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176935823357.18252.18170673487410530602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75022b80cd1a4ebb16d3e7ff7b12d745dc226a68b4806f29610d8cb65c46192f
Date: Sun, 25 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769358233
