Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8AD9470
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714378943; cv=none; b=OdTHO/GodW3nfkhm+nrnivL5O3xP40lHEmaW2IKqMVWnu7jfOxDFyrH38Y410zFafSon3ovoWhc4ujRDkFFKykUJZYbKmFOMX6wJ3NPFC5DUyQjtClfDQD/1/6sqPsWNc/2X1A7RbGRoTYyRPxPoCadlyESYKWiz6umR1DqmP4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714378943; c=relaxed/simple;
	bh=CydvVYF0eoFCYz9n+WAJeD6EcayJMD9wb3O/BkRy3+s=;
	h=To:Subject:From:Message-Id:Date; b=XleV2JkYa/us5zKxKtEht6mqJE8PUD4jKCD5XyHrG8/+tRWvRxSSNUI0AFZLDqAWhqKGVc2jqxz7dGQcb3Vfj2MbyzSFjwaXfAz9RaOIGTX2l32AEXmQoIW/2oGDAFISp2ja8/cIluQ/pddWIx/8D15UdqHId2m4DBLZPobFcIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2GMTOpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2GMTOpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84F8C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714378942;
	bh=CydvVYF0eoFCYz9n+WAJeD6EcayJMD9wb3O/BkRy3+s=;
	h=To:Subject:From:Date:From;
	b=A2GMTOpILvC7jCo2Tg4I1j03f8B/vEZkM06wf/bHRNyh+ioD/335VyhXfLo9LHulx
	 JQb95k6syfA9sDxUXZ7hfWtAIG3cjXPi0SCZYljnfmkC6cesczhNPolXC4jNTcDRlG
	 5tGT6Z49X3mu4S8BVwvUjVsdOCx1DhLTCLqdIA/1kfisUlI7i7YR7+1XRWhChj4My4
	 UGfrdcN6YRW7HNAjeuaotLcJvGmP8WvzpQlizJHIpZGGwpYKE/X/mpHP73GeBFE3WE
	 9wfkdJLLGbipQE06n7OAg7gwJEhdz0O4Q3tGHM2NFbqriQGyOiLumuE8n1Yo6Q4bw6
	 ZMdEeLYScT5cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C688CC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437894280.5893.13490188757016734022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad19b479a0247a4341701f231669b7f63ae8dec7e12362081610509cd33f77e1
Date: Mon, 29 Apr 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714378942
