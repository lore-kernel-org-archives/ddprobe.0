Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AFD38F92F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784874634; cv=none; b=UUa9L1773MOvfAXSVnbFoykA2xuvI8y/+0jDQEE/vo6IojCaZIWIqhD0L2HGir437R2ZIUsm/QDfiJ5smNVb0GtQSIqAZL0rIA6LJOH6efajX/R+wR9u/0wkxkK2CS6J+UVdw6rEMpASJ7VEb03Nc7FHm/pUsXiiz9xMNySB5a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784874634; c=relaxed/simple;
	bh=uMBJZ62k6PM2MFOSOy2v6YI28Y0qVXtDrs9VODqsQO4=;
	h=To:Subject:From:Message-Id:Date; b=L3ovIQmCEJj8pxMqQfN+RNdABVbrgGHg55o4rfmICOIIzIn08DPz4054v4qXRdI+BOFOGEofAO4znXjYl0brUvB5m1lTCNP7f1Vx4lPcBNMeWKi4YfpdeXWvolsSDBG0nRblZgugt+s5AZuazKCpRSjyD5rT2Guc5Zyjoboe96k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc9j2qZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc9j2qZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDA4C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784874633;
	bh=uMBJZ62k6PM2MFOSOy2v6YI28Y0qVXtDrs9VODqsQO4=;
	h=To:Subject:From:Date:From;
	b=Xc9j2qZoy/aTXGTk4nhBkgoLea2a2NroNqFQ8eZJHRWZ0rKOtnUYQ+xL62us1fuVO
	 i8HnqZ4KX7B6EhWYV7BC8Exkc5rPT0z9tVOsGw3jaA9IcFboq8uZdRtmTR5qHw485h
	 50H+1njn8nEz4sADaXOgT3/Klb5wibeniMfgdVh1Bq5OaUaKCHUHY5C0RthLb18l+I
	 1newt2LpUS+0M/vnfPCw+7nD2eW1o1EVcARD6yHQKrdI+S7OGnwAB9P7oQz6/DgrX+
	 1aN3qg4LykktgWuRllgdBUP0B8tJThTIDh3cfhB/olfN2qXa0Knh8tu/x8FvX1+cT3
	 SpvMBQPh3gNAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA612C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487463369.32422.16057517279924512025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef5a8c6bb6f980b3cd6f49aeff467ffed8f29def5f017aba6e43971826eeb63
Date: Fri, 24 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784874633
