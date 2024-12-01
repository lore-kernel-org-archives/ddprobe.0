Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B611D79B1
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733083554; cv=none; b=kZEnbUWmn91GVdoGLhgx6NwW+5Ke6/M/FPyxDHp8pvIa2aYTLBzg8Htwbihci8cgzpDJluyu3tOtRnIMFNQ2T+WZ6vZl6IVc32DE7+t8AdrylCg8Wkkcn2/RvbBNUe3kNUbjnIGIBXChDbVK0Csa6DbgAiz6qx8JEtjzsKRnhBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733083554; c=relaxed/simple;
	bh=I3P2EzG6UGxf6qt9J4xzLXMe/GqIehju5eIrx7AntUY=;
	h=To:Subject:From:Message-Id:Date; b=Ud1GzmDVc3zXBFFWXXwioEvyv1ELGPkjNG4Dcfma4f1isRW2IwkaJazR3gi3UT52WKbl+hpYhW5qZzQtuJsyG5DTXGq40qmACJmo04VLv7DaStOHhmV/XvO7ARICtMWeOrmbiCNoVF+XAueSw8sMtjUYOUODbbN3MGmKvUyhexE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jy7N5A6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy7N5A6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29CAC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733083553;
	bh=I3P2EzG6UGxf6qt9J4xzLXMe/GqIehju5eIrx7AntUY=;
	h=To:Subject:From:Date:From;
	b=jy7N5A6j4ms2ksLu+jVwxEYJ2ljy9yTvg/8bc0eIkITnGh2+ygT0iK8RtUaSvaIpT
	 h4c4B8fvXoXc/R1UbSUHUDZ1T5inT84PfPAAXs6A6dbhoBun2+W3FrSMg/wn7MZanv
	 pITsXBUwuH5bD5qcj2JhaAA3Mp23dIMojujZ2oKBVbEbchikJMnoUIsYi7a3bbSXxQ
	 jDne2yxAVCp6nZdpw39Hp1LwTGxDBP2Eesi8QsOCwZcsJwISkCPgDxnWK5c2zPR0ub
	 45dfrY/cBj8erclq2Jn2U0+nMgO/TRruVRHGzVxzkV5RdSg4SjhqUNn3E2VZC7dZpw
	 pHyM3VmNAfgOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02CED49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308355364.15282.16657705057277234041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7a2b9a24d2209a359615bf9211bdfa9de0f6eb99f514f26d5cfafa344efadd
Date: Sun, 01 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733083553
