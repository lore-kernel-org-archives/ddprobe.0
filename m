Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557C719DF53
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732403754; cv=none; b=Ex1/QHDyS4ntS1JXjl7JSNw9UQPdrngJIlY7GKnhmOIDPE82X2MvYC4DATLME1UO5GWgEEVMmhzR5YkBo2+VywyWvCWv1kDIs/cXWk+rO4Bd4OcIt1k0CL3RxCfmzaonUEsM/2YhOOIypy9cppmRyBJlPkW/XHT3KEasVz7OiBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732403754; c=relaxed/simple;
	bh=6RdsR5oJkaZNhzmXpA5sKU4hh8mtIWr0YX2Ns8X3FSM=;
	h=To:Subject:From:Message-Id:Date; b=ueoGwxcm7qHCCUYtfl5sYpo+i4mzJc6/AveJz4f4IxI4H26Nip0AzITda950YmE3RC3ik3m+hCvJQDFIbXkqZ2eSx5CUMODF+8JNnPLokAVy/TsXuisu/wOUqGOfkH0IB01HiCRZDtEN4lAJyC0qfUBlV06l1YbOv4TaBJBRSUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfuasKtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfuasKtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43BAC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732403753;
	bh=6RdsR5oJkaZNhzmXpA5sKU4hh8mtIWr0YX2Ns8X3FSM=;
	h=To:Subject:From:Date:From;
	b=rfuasKtA2MSkm4/U7QbzkbS5mgGlqwfTNHJycGd3IPn8O5T0z7ZYAD3M+tg3obL2T
	 qNUK5rdnPC66RLtxnSBj3ZTncqWjW1aIoReKZ0fa5m4+dtgxL2/QIorbCD1flopbzR
	 BbKXJWq3a/+5iaEDhrdZxUjhkmVOQi3pB26eSENb3DjIR0qlMqMVO64u/j0hFqG/ek
	 ETAxcw3IDl0vpkymUEpSegOnYjcUet2FyWC054h3gG/2A5gWkt2PqNd1RzgMJnRyXB
	 HtCLRpUGMN8Ky5FucuPcgrfIM9kuKFpdEqlM5MdzMKnGyMRxboqEvscgzmNUNddE31
	 q9UTpFHc7NK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8CEE6688F
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240375364.5689.5202473463855235082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b8addbff14a1f4e3a51dd833e533a8fd20a84215ccbf5646153f50cf09e9a6
Date: Sat, 23 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732403753
