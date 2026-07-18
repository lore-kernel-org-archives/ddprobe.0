Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E4F2EA154
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784408314; cv=none; b=I6s2WwapUVox6BqjMwFKmVT2nR3pocXyu5Vr/b+xz7+qVcYE73XYbFHIV2hnCIaA59BWYnl2JgR9U3CyBwNQJSy5l2bjbdr2Vt5OysS/I/mQVDELE8UW+iCmRyUO3JSmbef5+xJkMsNVYl5wkLF5fqRV0NK70WaVAKvebIvRgIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784408314; c=relaxed/simple;
	bh=M8CK49Llws/q+50bw1KSLEzwHzB/pgWHqXilgwX+Zug=;
	h=To:Subject:From:Message-Id:Date; b=BzfHHNnceUYLRMyR1rfKejXKkTvHxUavVpoAX5fpF7rrdYi5wqoasuAYR0m7n5FCXzhMnZuKOD+z6oRUATd+jMEaLxPzH1doSae0mMLoMwysXFOgC3r/C6x/hGYJdwK5tQUdou71Ynku+v/j8YdBsfvcpl4VrnIfSGrOR0PXoMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHS3oSPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHS3oSPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2224C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784408313;
	bh=M8CK49Llws/q+50bw1KSLEzwHzB/pgWHqXilgwX+Zug=;
	h=To:Subject:From:Date:From;
	b=uHS3oSPBG+87Fkjk0/8KOb5Owq9rJO90NhGGsOSDFo68aSZCF/fPDzfXNKE7N9Yo1
	 0THPPrhwN7GwDphRCNX7yhhTdLZ37J0h+YBhX4SWkaKYVZB+Lnx9fZB5KyLc564nnH
	 /I5hwHd69BaBAZ4oSlCBmpjGOHprFsHbI06Xv6k8Ir1CKPrmV0Ef/W7kEq7/qoLhm2
	 Zc9Vsbo/D3exVJnn6jkWJf1J2RSyU5RspkcMdz6VYv4FqsUggckbLIUO4TboHQ5u4j
	 6HmT8M9n+sS2IxQhK0YZkeKLGSvk6aqaxdQz9xQFybSYU3z0jCMEkc/ihys9AqmkbS
	 ErTchWHZFxBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC888C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440831368.23091.3467037701829014867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5124f72c06454c49bb0ed43e59925efd83871c7c368cbc0b31d6e17d6d188761
Date: Sat, 18 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784408313
