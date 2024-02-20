Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4C5466C
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708405097; cv=none; b=M5sIvhMnrhLRlrQyE8jR3phVhhPO8dOKAVAvOMcSiFnRmakN8cqDIPRJEC9+xN75NJj6HBgfE8zdysIm0b3qsMra7VT5GKiBIRX3uBFm0RDGSjC5dP9Fh6to58QMN0LEZLyEiCpi340gJ9pcvDtgttHsCKZm1ixHNXXANslDMSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708405097; c=relaxed/simple;
	bh=8dWH3peiWgSWOasgxmmD6vQch5RVq81pbZQl/pJ/tAs=;
	h=To:Subject:From:Message-Id:Date; b=GfnGIM6tBSIT4+lNFDB7oRK8hAB9F6yci+hn2n43j6tTUxZh2jdoHNa2hJBReIc0ElRgG4wDROztAzHcERmr+iTVa9+/5A5agjahSp6fR/J1Rla6pTTJAMsStPN2fai092cUrPGc4eegPmuZ+QJBJZFwtAZK/phce05bbguFZ50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozXMy6jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozXMy6jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8273EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708405096;
	bh=8dWH3peiWgSWOasgxmmD6vQch5RVq81pbZQl/pJ/tAs=;
	h=To:Subject:From:Date:From;
	b=ozXMy6jbgeVGrbqRW+WJ1uz6QIXj/GhIB5D8udN15q4NRgpHZqrmLU80Uuqsvwktj
	 iUSTvF5Rfd1rEEFH3xm4gOoRKA/t/PSrhdHWX6aZhbzbAsiIt9nxuvRqkI4u6xk1Qi
	 szRz6FbOK6MnR8TesC7VPCoz62cvTl4oE90avFrMiF7AmeBbjt99KRDA7jTTmZJyP+
	 Tg+qoI+rMfUTLkiBh8J+7qD7+z3x1eCN4EHABK74Lu6bT8cTuRRMOUJqMKmtWD0FEM
	 JRQfUWql07W2GKy0AERqZPsWxpHDBm+E8gGVOYfef/0z5639t+ecd2YK/EjbY8n3AJ
	 d0+eNZeat0m1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6511BC48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170840509640.29576.3587525771272672217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfa8c157d0612a8bcf94e416f33be2e72b945603ecbf3ef0e8264b9b4322d86
Date: Tue, 20 Feb 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708405096
