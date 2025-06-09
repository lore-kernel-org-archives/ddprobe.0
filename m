Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96956155A25
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749497994; cv=none; b=OUEWk0ZYevDPojMYhIk9CDsIMtRFda6cSqxilrhqDTY06Myr0ZvWREgWyUul2N7eGvCJxQ1kYLG3A8DlmecGVetmd7cs59q/+yfHR+CKRZjQ/zURPCz2pTM2EdKg2yMdU4iDzXsq7amAIRWeS2rz5cgWGMBmKC/O9U39vO2bW+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749497994; c=relaxed/simple;
	bh=iD9nTg+N/OumXKQuRC/DF6vZYGN/PZI3gXmFu3bwcpU=;
	h=To:Subject:From:Message-Id:Date; b=TtTP2lExGnma7sSgp8zMfv/xi7rl0jckaG3H80FKCU80BSGgRlT+Do9EdmMpggB69GO/WIcFDR1dyi09tmr6zCNjmf5HZLxKIT5CXMC2BVCnw47tsV93DphHBF/oL8FOFYdrebrcpWk+HDl//5L5JX+Vb5IV20dgzG3x/xf8s/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjYDiFwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjYDiFwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67D7C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749497993;
	bh=iD9nTg+N/OumXKQuRC/DF6vZYGN/PZI3gXmFu3bwcpU=;
	h=To:Subject:From:Date:From;
	b=EjYDiFwgLotHtjyyktEnUgi0HwcqshXEOmXfDnHIX28+bl7njg+dtmubWYGw2LM7+
	 Mz9SFO+PkacF4E/kwdF8Ud9rpv3itCO9c62ILKLPjFErIjRxioTfctvFBv/8LiF8KJ
	 ZgKr1ibajNKNe206JVrXooSIRuBhnxbUoEC9ucfS/DcKPTYX9GUL31UrwplyvvlkBS
	 /T/vtlhx02AFONOG6o2b+kmeLhRvUlt7xglgNnuIG6tUrn823MCX4kE8q8J8MAB5oD
	 02jL9FxC9vqMMsnGe9GTmss99Tvf/jXHScNKNxDbDMO4jDg2v+OXSLt/cVLg61xa++
	 Iw7ReHGB56VnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99651C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949799361.16179.1982086725555885274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99fdc30f6781a9d21dabe2588ae2d8e6ec7f170870e93b96806fa281c34fa96
Date: Mon, 09 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749497993
