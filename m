Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321383451C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780340674; cv=none; b=nIxwKg8Yp4eVV6QCRmOCKlOnIzMxCpU9fpNzHnp5KHEhMh+uicVb0zB0tyvToftE8bsqWb6WNYhDKcUXXYhlxSwkLW9U2JUT7vuedBN+2fxfvF1dGAhDbzd93WdWtg77lijCg9mApcMt+PriInHIdvmA+lJ7cz+TdQIeXpg7j5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780340674; c=relaxed/simple;
	bh=uuNYVqR5HDBkylgS7erH+4YeDDTvmnsSz82FOz1uO18=;
	h=To:Subject:From:Message-Id:Date; b=lw0yjxKeArK/Kp9vVLfb07+Ss6CVWK60VM8sgzefCoTFiAnlJ3xpEzoNWLefTNdP7MhaeTiXQjZYstJUalOKhSE8YCnKl1Mz3L8f4zDjlwGu+kDh4Mu9smNkQsSmxBqruxzuS635PB+DjlG40z6IzQ+ok9tT4OydeM64RqgXrys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7XFU7ED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7XFU7ED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4FFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780340673;
	bh=uuNYVqR5HDBkylgS7erH+4YeDDTvmnsSz82FOz1uO18=;
	h=To:Subject:From:Date:From;
	b=P7XFU7EDFU8VqyUSCPExny58QY2sKE5PnAM8+KYmPDWX9wRgj/Z017xDUcwGWO0Sj
	 PAxD0zw31fn4QdhfRjorVU2C/jIEykdQuDZO9tcKDbKqGhzAVfosxdi/hEDrhG/J2e
	 G/DIZgVvj/qkHPDSkOhXesPlw/XHXCj3FkYGpsDJb3rJB8am2uAE3BZSKnB+s0tt4N
	 DD0FW/cthof4BpFNmOBaooZ4qLjezWOkbmm2qRTaZPPYWNfZ28todg+LbRRcE/x3T3
	 aGZXXARExKp8n7IPIqrdPPorG62BtHB6FmBSfymvt2Y3hVoGOlrltpjMaNnHLx3i15
	 /6FjCEDEZRAig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0A0CD6E60
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034067370.7088.6205296812254473338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc698be26d275f1e94501969cfde8f13570927c58451dcbc6d190f18579f4c19
Date: Mon, 01 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780340673
