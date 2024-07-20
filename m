Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D929322E
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721514354; cv=none; b=CsOvuWNpn/C9qzd1t9IdnyKubWqxFrIlBdpQB9r3kFu46uS6g0bE9Bht99OVL5GwJ0CCex3QuSJImWLPdxZk4XfCxJ6LhmqdnxNBTRTo0SjIvgCPJqGCvijgShxIgY9pw7tbBB807vEp1aGVoxZZ6weIbdqLzpo52EVe21p8o1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721514354; c=relaxed/simple;
	bh=DhJStNj2Nyd3YfN2VlpSWwA9yBkCDGbMExQT1i+a/4Y=;
	h=To:Subject:From:Message-Id:Date; b=GvYFsytIEpwAaknSWmxaipSpogJxCFrdWtRiWHF0l4GELKsNwWGophpxe5OxKqvilDwVqPCbhLo8OmU5z0HlIWtnutRkUB8LpaD11w9CzpkIXg2LPgFr+MJwkkQ3R2r/wMePCZhjEgtQkX0zpaAgWWSmebeN1CqOVm78LdUmOkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goVfmWej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goVfmWej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8BCC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721514353;
	bh=DhJStNj2Nyd3YfN2VlpSWwA9yBkCDGbMExQT1i+a/4Y=;
	h=To:Subject:From:Date:From;
	b=goVfmWejs1CQqmcIAAwwCOFZhe2EKfVij1Ve4jo7kj0eV0KFt3emS2YJkkr3q/aK6
	 wYq6nYiILQj/qtdlsxOwyUiqGyOLAgsDXnkVGFnJp3hwF/sJEUDs3lPqpYHWH/n3aU
	 XnOy7m8OA0nUKEhCQIemhgR15oFeLzvS1iSOiqCdzXBdXuMSrnRvzJUx3MeI+RN4nj
	 ta4VKEBO/C2h6rtXkN1Ii8c4idOu445FLMmRFxcaIBln7/6Q7LfZlRlch3fvw4OlRa
	 k7tcigZXRlVzvK5F8II/U7W1s+Yh6CFnOER+ls/s4E+fpparMtMChY28bQRZzlH0uq
	 exiyGte98XMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A01D6C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151435361.1373.7152163116851622905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43a2f894f43ec1a24273f1bdefa45a4ab98dbfd579e870f5981131a1f4f9bd6
Date: Sat, 20 Jul 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721514353
