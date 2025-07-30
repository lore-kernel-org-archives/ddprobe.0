Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A05622068F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753911594; cv=none; b=ZJ0IFRcmojic9R+1VGTCdDQfh8RBxkvS6HRPtFp0Iu7H3nd2bL7XN2WCKo/ysRZqF4yM6cYVn7IexiN3YrFM3Egu3Hwokim99e2JnuykA2jpztbdS8Qk4mGgf4ktUlJ8RqPuvsc4Fc4vjUFhmxKIcJjRw8NN0OJrUwUll/eAWMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753911594; c=relaxed/simple;
	bh=uH24DIF71feisoFUIvm0xfQU3aD0sneNtoLme8qQ2vA=;
	h=To:Subject:From:Message-Id:Date; b=K0Gzhb3gZr0NSMxeiU6uxUS5AkxUB04I9N5wRqllrV/xKzHSsJtAO9K8LYm9ey5EuqwNqb/nEtjVDbEHbizlQVx7Fvc+rkFE5SVs45RdlQNHZzdd5JUnfTAI9kiKpXhAJ5Ou6W62TlkVDOPriK4hIZ+4ZX/G+4OxY86DUEORIgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2y4Xajz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2y4Xajz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9256C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753911593;
	bh=uH24DIF71feisoFUIvm0xfQU3aD0sneNtoLme8qQ2vA=;
	h=To:Subject:From:Date:From;
	b=g2y4XajzUzZ8lma6WmIcZVImN4xyuZeKpGID25Y11ztYqPPd5GGTFc8b68pYyajnL
	 7GLiuwoFiykZEhyDyscTXnCqlGTFrOHv46A1nYyfqkEFKizL4OnXJ02uSTYsMgVm1V
	 YB/vIR41R8ZyyQ7wpXBcn0rdQ1pzclyAgTEIzMQyWS4mB7uEP0R5JE+MFzBubzkKvd
	 pJWopP++IKsQZwwXxghbuUZt40hn5/SBHI/hqwXeLxZkvxII4U1p8t2PdEuvl4o0mi
	 1En7VWY6no0cBhb068/hXWwwMELCnU203RLJkrlcT8q6C9Vg2FZ+z48BTe7W4/lGJv
	 V6E1+49yDAGzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F02C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391159360.26339.14053697763390580420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b6268aae3e4e56ed2f074389398fbc6f5081a387196b3d51eed15ec48d322c
Date: Wed, 30 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753911593
