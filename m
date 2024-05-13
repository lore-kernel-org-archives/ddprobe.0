Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D7852F6A
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 19:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715628743; cv=none; b=miRNXXxWR1/nlduAOiN0BEuJWT5InhHTm3S5Zzaw5rwP4da/o4y9EBVxg+k5YWSLHKYeIBdA5xX/VCRIISSimEA98ONAfbzDGFV7EZviQDYk/E01Yw1pPQYCbRatSL5YywtrgU6IsHAkmjgOjM0L2o7p3VxlE5Fn+6STmv/RuxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715628743; c=relaxed/simple;
	bh=9jqmyS4CsCQwxJprm9fgn1956no+QkK6eUmAYOngDeU=;
	h=To:Subject:From:Message-Id:Date; b=gIcY0nnMjouHrWhHbWc8DvfoM5pZuKvb8WcuFIRoCE2IaSHENScS6eTuJQqoB8ooRdeN2DvmW9Uqx6fAABlqGI4z5y4iTaIjplINirOW5Ddh03GmJNgzVWnr4xH8netS3baNZKdx1ZAeud2lAAKDMpvufBUrqwwVFXDgZTBX71c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+sU53IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+sU53IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F22C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715628742;
	bh=9jqmyS4CsCQwxJprm9fgn1956no+QkK6eUmAYOngDeU=;
	h=To:Subject:From:Date:From;
	b=g+sU53IHeF/Pm080srUOSnVRVUH4/+EsuukCdGy4voM6JaS791NgR5B72zQOccVGC
	 sOQf1T84TPh8w1knzn2tId9ZZVxBYWrgy/xRbdy5lcfOYkdQYZUDtqB1ikWSg7YSOU
	 GU0F0p7kySKlcElhzOMPOJ78q/dEUpZOZ5DR5JTb69x3CS89cH30p5WXUK6ELCxfea
	 3O6sIwoSjSQmZS0W6nb1FOQ0sYSMbnDC/Z/hxyE8Idsqq+XBh7shvhxs3W4XxgVgVi
	 Xv5RQY0iWm4/BijbqJy9nAcNuTX0xTkYfgjrzWBihHt1M1dHlkaebEfCrRFM7ySkNx
	 cSgDfOSJzUkdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12A5C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562874277.1275.6977451326827151716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a422b30928f79a02b32d12c25a3d1cd9a49119f4632e2e6da6c5ee89736d1ea
Date: Mon, 13 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715628742
