Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD888C1E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718995943; cv=none; b=qu9X6HLq6o4K5vm4BIt3xJfFL+gS1Hv/S4s79b7DJzQQeN4zVFfFUzWuVa4wm83zCAxpvNaOV30ZELGDmsfsXIoYkcMrng+7lhJO3AZh3gBXget0C2tt6Js9ZrLYm4qfvQ7/AKH9JbWR8hl0xwOh+wOvtG1RObSs3J0PNU2lSvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718995943; c=relaxed/simple;
	bh=qtyorhMpzii8bjmu8nuiBGzOo026sKQYynoD5JBs2X0=;
	h=To:Subject:From:Message-Id:Date; b=GS8PmrIp4c0kCSXH6Zinv1NHe+A+6Qc2p6TJB1pNXSkH9smGtQQOjR81kjDEDeBUrLlOn6A2hBcwYkLjQzUxVBAh+kKGNIgRPufUa05i/J10W0A3Ud0fifhrvdMlSLy2CpEwphFMEyyegXgwZYDjeXWxdWk08xhCFaup0n3a1qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkl6v2nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkl6v2nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D677DC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718995942;
	bh=qtyorhMpzii8bjmu8nuiBGzOo026sKQYynoD5JBs2X0=;
	h=To:Subject:From:Date:From;
	b=bkl6v2nmY5iv7/34D9SB5/+18Ybcl3VvU0vjlrn/vDl/dwG56rr4fNJoN0fYAmWmD
	 6gRiPI6apLOjobyvSbszdrjf0ohJejwVrDS+Mg28RBD/HUyb0oiBAn4WRCNrqFKysZ
	 A6s0sPsYb9qD44Ff2hQohKgcxvNDpW3flQzME0goHXyiDVz+TnqEE8WFE0hbC8qag8
	 QdC6YpZI06empH5Y7mWSRLfOdZmfCKg3+D42jXthtDo40HpHkz8TfH1S0WO7TSgluM
	 zDw14z0MLYvInjS2UicabO21rk6zwc62+h0+c9s5eN5+FrZvNtFKBKjbtAz2R7NQPl
	 qtHHEUTUWutZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30BAC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899594277.8245.13808378272909003998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6623c2caa2d5efda656e29414a8f5cacf07dd55421e3f2519fce47e476063169
Date: Fri, 21 Jun 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718995942
