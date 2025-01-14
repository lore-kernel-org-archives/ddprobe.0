Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5012B39ACC
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736816754; cv=none; b=D7nKammJCrQto5lrJHeoisEiL15F15PLFLPgqHp700N/YXdKAE+l/jXBSALupW6S5IhV2Yn0C2kN2yyfzuvodGr0Qvwak2YaDN8WxHykn9qLqhCf1dfexdnOmCuZ8XSQiK+GAQ6qaRldT6BAE9LurHa06kX+ZYjx0ItZ++2iBJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736816754; c=relaxed/simple;
	bh=mDIzHwgesvlo0PCOT0e1HSniO1ZAdcOHzpO9r/ctJ80=;
	h=To:Subject:From:Message-Id:Date; b=KmQCgCnDerLCHL8d7PKBTRPGFe5oq7te2GH/peVCeKwKmq6XWgZjSPtKc62QGJXfyjww2HqLWKgJtTzGR7wIw9nEG6YsKnTtuvEYHcYWeehb5OWKiJVMtLLzsI821ACwvyvhgLUSjX1J2m2zAE1ZYAeT55a9y9MlUrjP6i4u7SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjDRVDTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjDRVDTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1A7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736816753;
	bh=mDIzHwgesvlo0PCOT0e1HSniO1ZAdcOHzpO9r/ctJ80=;
	h=To:Subject:From:Date:From;
	b=IjDRVDTSit68MU38vfzO35GnEAJng+W8zlSFTcpNozcySd0lsnMT0bQA5D9asY9C5
	 3kBY5DSFolCVjCqpNiw98C4IAaaETuCm7la6yxW6SLuk5Q6azIAL+Lr4JNl9za3PmL
	 TeH1QGNQNduUeQctJbjGK5XoCfA4X+aaO6nWTXnINK2UzYOZm9beB02+joKLRSLDlp
	 st12fQZfG8s5wB31/QLv9TpOIjRyCcuRxgH+ggR2Ysdb2KsRH857ACLm3qw0qhp9Qc
	 JnHc39pL9vtSEBz5lklPC6EAa+Ts5q0UXnQertgCqkoIeSQbyX1vks395x7KSAtDlL
	 +P0oKHJw//Fzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E64C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681675361.4912.7357098416985243450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a50f81f9170f244426a5219e2311a26cb162806e75e8304c4e036a72609fb5
Date: Tue, 14 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736816753
