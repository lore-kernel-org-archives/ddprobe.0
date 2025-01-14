Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE4F233539
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736826354; cv=none; b=cSnFeb1Usjd7A5QFeWZ9hQVuOGGZzoXHAORmua3ti6sOuX+5cy51tD+fs/JngWOq70sFDIHxtMgKRaqDFi2KIl5F7jxPHugam/qJwAl17/bYaU1Mnx3ksaRoytJH6CL3r7WOl6QQ/p43kKoxAqSuVT6dgz6cgcv6Mxqbt6KCzfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736826354; c=relaxed/simple;
	bh=uQdSSR9BNmcwfRwRxwaB8OucNdIQT+8mdY7UpxxIHes=;
	h=To:Subject:From:Message-Id:Date; b=N/2Pb47mLsAB+4QU9FAr3wdEts8IuD6gNPucuOsiYlXiA1tAXpUv1nPL3L9cSWux+kJO8AmZMvCCoRJ0GmFpkx8BJx4kNg8sBWYI1ct2f3iUF3vbRqYFZ4ruWbmT2K4QvGmKKY0XEZQ8zZlmIf+TCPr7tznOA69k5dS2GXP9FSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZJ6bZpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZJ6bZpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A472FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736826353;
	bh=uQdSSR9BNmcwfRwRxwaB8OucNdIQT+8mdY7UpxxIHes=;
	h=To:Subject:From:Date:From;
	b=hZJ6bZpdSBIvEB2WldHeKCCY4HM8JoDggD8001mZUlm7vjAJyCpJkaBH/NlX28xvt
	 uPyTLi6byDXr+0wqjAcZMsIT3228k9DRhqYtQkaSxhVdvnnFWGBCVQ74YUELd3hFW5
	 w+FXnzvLVIzb433lj7J8rLAO7ek6za2T4I/0HHylQdmY504KBX6QaqsDmThAhMgosM
	 L2NxcPU5G5ejQTlfMqS06Y5x8RfmPEdPocjr5646ouzCdk53JMOUrDEYfs8VPLgnZd
	 PRQWhPQ9QRvj3E8cAO9PzlAK//4q2TKI98UqWE1ea/whBFKnS2ZprLWAiupYxIf/LG
	 B+NXpjXGTgcEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D23C02184
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682635359.31106.12563575681172790952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cf9d87bba54d64c314ff9c39a3e970e54e7953fd1e55f71097a72361f8a725
Date: Tue, 14 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736826353
