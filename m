Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6FB79CD
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768522434; cv=none; b=E7HMHVUirlo+ZH+K7IKTcfPgRJhkUnA/PHaNtm2jr5McbPG026teiFQN5VGUCVX5q1H20esENE2fhKIf+glHQrYRCVykFT+l9HUWGeplTYx5sSfUzdzks6UJ6+KCDumgQlKOdlZj0CFkyzyfYQJKSY4ZGzDt1hUqyn5P0KJ5fbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768522434; c=relaxed/simple;
	bh=N9cIX9a/+ftZDjrwlneL2gGerU5kQCAwTvKdMk2/qo0=;
	h=To:Subject:From:Message-Id:Date; b=BRHufO24tY/NbFDWf87cqDOMNuUcO8LOIwxT5c2UQbNws19YutcuhaPVh3Nr+V2MOlDRSz+N7YTpYZ9OdMERCqYuoefmif52RfqBJTpU49K373zNASsIQca8tssKzFTw4kvnVVcAZd0+IyKKpgd1QzU+VS/NWc3e/di6tFofnak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+2JSoZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+2JSoZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C53C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768522433;
	bh=N9cIX9a/+ftZDjrwlneL2gGerU5kQCAwTvKdMk2/qo0=;
	h=To:Subject:From:Date:From;
	b=c+2JSoZzd0BgwiRGCtrWeknNbMgIC9++kdrg0ufHqs8y+0dtD4zSMgSGh17p0/i10
	 Sb60dGcqsIg476EvtPXOEtE4UlifimGFdImrCF8Mkrn4JjxTryvd+KZj+1HFDZxa52
	 cKzwiXEaqsCH//ANGnhUqQBTMmJgzEw2UEyqPT25E/hMVJcUYT8HFdJsZb1QOfceQ7
	 r0eXGEdc4KzrZqzvKs1WRSfFIWDKJTVOiUrFrVB0nXDKRnfVvAUv+nmjRpT4Yqpn4Z
	 B/H1Zfsuj2k5CGnnNXEv9r1r3e0dcvyVgIqw9AARLy88NKAFsMfV7jN5Mo/sUqmIGI
	 MErkfDrniky5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD3D47CAB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852243357.9588.7851624073824944487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fa27da5acaf04c7a1433c8fcfa1ba4bc4b0cf93d7009f0b2328265844a774a
Date: Fri, 16 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768522433
