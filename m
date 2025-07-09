Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC72028DB56
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752058193; cv=none; b=T6GFsYa1hoU12xzraVUB7E6wzPadb0bR/wevwGExKt4zsU3XbSBHyXg/bloWlSLS4aQ5LSDZ6gjGP3/s80OoTKKrG+8mJqQ5P1jO9HNBv2G6GNpddruUFJb9lNCy+0Og0C/BnM52JsJ+HJponAOnuCgmKSq2C3aJxSpzm0XAbfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752058193; c=relaxed/simple;
	bh=aEbgCfabjEGTP1ua6hJ0EjT9mx8vxtdrfejbftOByxk=;
	h=To:Subject:From:Message-Id:Date; b=Vj+xZ07iBxzyJ74tQG+oiIN4kAqfhwcUiFjBAf5qQRxhGuRcLIw+n1R2h78ZY8RySbzEHEaBNeHX3XKJOuzyhGQV60fkwG0kDPPT/3wZJG1PvwmkH8CXZFeTFPYY8YWsK84ZS8Otq+FxkKMV+qkU70F9+v77Rwux4tE0h8Dea4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf8hgk2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf8hgk2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D685C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752058193;
	bh=aEbgCfabjEGTP1ua6hJ0EjT9mx8vxtdrfejbftOByxk=;
	h=To:Subject:From:Date:From;
	b=Jf8hgk2EZsy6aSmQMKy3Fh4PLzwFemHHHpfNZXTpxkwn5uxRQQ96x0ZgpfI+7M0aZ
	 moKAma+HRxaTKG/HFmBxUP1wjC15m8n+kGWK64cNCoBFnwGhwJzsusVQsSVNAdZ4i1
	 rrgrCEiRXOoryOLK+rtDLfEngAhevMEd6iP/ABdFi+Yzsa/zxc/At+Bj13oOxp9aT9
	 GWLJJ/03kGVUnKZc8eXe3+caDH/vhAkHK2KWBLnHtvKwffjktf7//jSZC/KI+iaxP1
	 2DsjZPJj7kx22LeG2QHnr2yMCLPlRk2ZE3QXUpsc8a21JF/yWGynmbF8G9HcJlJAzN
	 ONchZGVnfIIOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D7C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205819357.2755.2942068168137328372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572befc54d7acf143f275c337e02dd226dac1de6019469c04fff637ba66ef193
Date: Wed, 09 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752058193
