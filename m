Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262AD296BBA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777820254; cv=none; b=ep/DCcye5h7Jbyikzxb00pJ6u5zvPQ0/4dF4mCn4GS5UJFU8ftMNPCXHgsJEK/8Shp8x0gZa75upD3jLeemS9PZe+fZeiFlSAgmVkohmzts6Tfg7ZCOvM+QW+RfV+GhLztYBvBd9RohER0sW4CO/zQlgaUH+dI32dPXiFHeFKcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777820254; c=relaxed/simple;
	bh=gKlEzIVftppBwfAC1IuURCSsNAIrKKHO/LOssWs+LXE=;
	h=To:Subject:From:Message-Id:Date; b=QLdDLxOjgOZ47kkWUwEFqQZgUOqh5qQnqT2OMFneIzwqCYbk41Xd9ac4zNvPmTEDiZ2ksdYKfAZkq0xn0F34HDKBJQzfPGrMSY9rjIV3WfqCScim154so7iy9nnWJSyyDbAXtDmHPChZOe/QK1E+OmagKbKLBVsHvZTeMz8YqXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKBCFidf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKBCFidf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC642C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777820253;
	bh=gKlEzIVftppBwfAC1IuURCSsNAIrKKHO/LOssWs+LXE=;
	h=To:Subject:From:Date:From;
	b=ZKBCFidfA3clj26sfbSTMwWpzbrIPIvTtc164UQxxSxJ3Yn9wf9D6XwrrFplZr86u
	 51KfuS02n74OhDemsLsNV2WCTVUvCEkI6hGQC7aY37qt1cK70gskVLbiI3Vj/JfCQ5
	 WuixYDsde4hzy+8XISs5BbbJzGr0dqDvJou0vwaHQFwi69swi3fjSaM4Ha5HCDpn4M
	 DCgYzGfNHaw6m/tbZ+b0ROyrh9cYD2WPSp8Kg+uZjhb0XrDOaLBE4QvJ3l2ANupVvD
	 1Y+k7Emv7mi+JtGmUwhWzUA1EwVWZ4ceBdt0G8q74VHQ8pmUiT864EpMzXPCGM+080
	 mXttGKinrlcKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9900CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782025368.14445.6472930951981823062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ad73e5318bbb7886b7bfb541ee4ce4fea781cb8da0bc7c53f8d16903523f82
Date: Sun, 03 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777820253
