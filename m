Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D7B204F87
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729068955; cv=none; b=EeDI4gruh4VMW+YD6GoGlQyRAX3vjJhWkPQpDAlPOnEoMr0lnvvdiXquH1hIDD5qIEI/L6fxiAO2tssKd5/iAhppJG1hrmXP6YZCdZS7phjokdIMOR9K3Rh1r3z7upDkowGHSH7p/KvQ3TUU4olGVQf+PDHuV4BdxObQpDOb6vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729068955; c=relaxed/simple;
	bh=uYvHlfbngEsxpEJIcp0a0NVmP/M0I5oS3+8u7p/hiUE=;
	h=To:Subject:From:Message-Id:Date; b=epBfmB7GgYs4Lh8dIRNjClSr1CwclLE8pIXbi/1RFjMwTJnU5EFVDc9oBYGjiAV7e6Xr1kcuOEgLR5W4cm3DiCQLExN9IydXJYFbPyUFhsmcEMy4iqhxfqritHr6ArnQ3f0OezXuxKaG4nq3oBDPRfsRISWaYaUMw1ocoOnnejQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enSU0t7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enSU0t7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E5CC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729068954;
	bh=uYvHlfbngEsxpEJIcp0a0NVmP/M0I5oS3+8u7p/hiUE=;
	h=To:Subject:From:Date:From;
	b=enSU0t7/ydygaZuz2+a4Tpsr00/GkL8Z5LrndiaVOGwwPQMFcMcqflH6WypKnzfxl
	 Oo8CyVYK1dRyD1IU/A0+crB65CCTPhqUqeC8GlK1ZWEMCdgZW1MCrzahEtL9eq0k0S
	 w+ywRJmlydmAX0J6pogPLIt9z3RrsW8lJZW4NAO0vxRVsO9HZhlTlitltKt/wKJjSG
	 ioQ5Ftm/NxmTAIGfX7LSmyM72ma3ER499sTvQp9+Kcqh+6+wJCNzyXu6Axfb6n5v8b
	 Ke4iT0ur95IyBUNun8L2IZxAThyoX9EcPbV5wFKvb7uI10IB4a339BekfVaJC6o4cY
	 3wJwi9nnbPDFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E40D1AD30
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906895361.7039.5696169703436898512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b2a5498799128bc3320754b253a0a50beb32c8912bc4d9656dae02cff2a001
Date: Wed, 16 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729068953
