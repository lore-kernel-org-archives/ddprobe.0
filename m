Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EA63B5F63
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789975234; cv=none; b=FOFqaMJk4/jjsXKRKgRXWWGyNrS9PHVb5G+FPrNiv6d9LPIIuUy6xwtCviW+AXvIhF42MjYj8ooxkmjp/QYuEE35TLVWXpzyiHZCG4FsDR369ao17ZG8IK7WD2BcZ9005DSLAquMPbF4pbeo9x3B2u5OU16rNHXsAlh0O1baUzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789975234; c=relaxed/simple;
	bh=uaBGX+lokfyoSUM67qPkisWegvQaZrC6kQvf+6jkKeA=;
	h=To:Subject:From:Message-Id:Date; b=JsUNVYBFn7UU2VUe6peZ8qxV8387KLxnq/ZT01wTnjUv1swAv1BpBJUeXVVtDjcC7RVNLeYRHT6rfEoj6J+Obq8G2r1TTm8/FUYdQize0XH9GG3DyDdn86VayF26EfYgpKqNn3fAKtJEyER1vHGsk49c30r1TfrpGx4mxj2FVe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B86MugKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B86MugKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D155CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789975233;
	bh=uaBGX+lokfyoSUM67qPkisWegvQaZrC6kQvf+6jkKeA=;
	h=To:Subject:From:Date:From;
	b=B86MugKSgCdVI3k3cfKsAg19Qw2uT7q/ta2oRWJiHTGTxAZVGoEW2HKzUUuffg8Rn
	 3lmnYjuxlahQ8mF2wqJzhDBcve/EJcQeH5UkV1Lm6ZM4ZUKj4SvAuaf7pX5L7VMYML
	 pZPxoty7uTmOy88bTBDAcpC64mxLUjhM1L6p4dHIQGUBzN54i8j1tA2qUihQRD0ij6
	 zK37yoAwvPbxpgHO7eOfJCbBuY1oeThCGOVSAVvntpEJtkHiqi8t6OvM/G5KxZqB2s
	 a7Lx6MRHZ10mf1UYqarZfKQ5WwmYfSoSA+r8vMekFtpo4CTr7gnEdulxMfkOPp77Xv
	 kdR+TRt1+umGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD54BC982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997523368.6819.13066190972220161226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75a4893796ae234d24d64aa938ac801396d23dc638ca153560d6d7511f68582
Date: Mon, 21 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789975233
