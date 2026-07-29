Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF8848D88C
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785332435; cv=none; b=cTkTn0j3xOBxYtbfpN459m4u8DO9V5KtvZ9SDcRCrw8pDYxqoRvjjEPRtsmA01NVDPdwSdPA5P5IXn8SPOMppsleIgO9JGDxjwoezi5Eiloh1+V2vd0fWWJw4HIdo0pf4O0NeEoTZfoRjDOClWopVvie2zDvPZqE2RQe9Nx5tcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785332435; c=relaxed/simple;
	bh=bD6CKO6UquyEHnD+CE1ErrTR839aukBlinUGeCGLVeQ=;
	h=To:Subject:From:Message-Id:Date; b=BWCU5WsWsTGcGZFcO7ZG4Skq6qvy01nw78yaQaly6jbONgA4Jhm4Mj6iRBsKfX0TonPlbCDv8nI2b3DYo/BVtNZ5baC+7McNQxZfKoljuu+RDr7GZt612Q2xZDwQEWSZtOrJUI7RumHcJBYu3U2nZQpHwnqAOGS7tEiwCjAYEbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFnhBUpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFnhBUpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC9BC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785332433;
	bh=bD6CKO6UquyEHnD+CE1ErrTR839aukBlinUGeCGLVeQ=;
	h=To:Subject:From:Date:From;
	b=fFnhBUpLE6BgNBP4+8I9Mnw/GTaef6WSMR8ScYyGlsXs6XSmrjkHyd7fJS8VQT/MQ
	 dDqxkiN8Vm0uhtwvMQTRbK6NqVhi3c9Dls9JfaB2xi8fgHrmdLtOVV6cyTFpJe8eTw
	 P5ocCpKT+qZeKzD1Cq0Xa/Sj6KRv+Ityz356+zSm8s4hP747XPTZcV4+IE96JA8wvA
	 0ha4zcuDOuj5oKBvQgAc6FO1TDRRE771AhUaS1xun73aMoXDB+49viswhCRZBeeIbd
	 C3t+1tLM3gIuH4BC+3FVa+Cj/xhRJjQsz2GfOyG0AFqqYrCECFgKSGWaMhG4yMrU1e
	 Q1xOEHmAz/rBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9642C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533243368.21540.4889765098575382785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321057d479787f4c7851732ad41d8dbcb0e7d404b005f2b0530e04593eec428d
Date: Wed, 29 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785332433
