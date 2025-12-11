Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103633148B6
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765474374; cv=none; b=FJi4Kn9tX3L+ZuCk9T5qNLr08crEgBxILPfL+NSugaPNwqLz//PaKB9DfCe8fKfOVyzBYy/j7x0DstFraQP/Wkj7lDbpD8qlgmjjjaOAvBmFtyKmPIV0Po/SVfULTJ8EmoctLp8bKWH+Y2MAOcqceFwVWDpKbUYfm7+xGQipSzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765474374; c=relaxed/simple;
	bh=C/vmvGJpTklWi96BguAhJBYULMVAZdR95iAPCir4T6g=;
	h=To:Subject:From:Message-Id:Date; b=A3fBg4Ok9GyIjsWnxyrXyGN2QwHm+4kVLh/TLAAUDw65K1EBpfk7/7QSZQyDxNDe+AVfqcAhNqfRKxqpJEBD1/LDFpbB3ni6q6S9ufrloWpN0orVzZWnmTnWzcnsEepXCWszkuH8pTwkcZrWzF63wbdpCwniiMfT9y/p8/+wxbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRyJ0M2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRyJ0M2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A474BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765474373;
	bh=C/vmvGJpTklWi96BguAhJBYULMVAZdR95iAPCir4T6g=;
	h=To:Subject:From:Date:From;
	b=VRyJ0M2sZfbyfroD6tIPeIKBZB8wG5Bqo5xpJATXlydLZq48lFHzddzKdp1K9Cjen
	 Km/EePqDGlyL9HWPuCLV15IRdItS61tBfj2y+FkKEEJiFITpWieV1X8+hpY8myg8Wl
	 56jzMHqZ2718zPYLqXOehn2aM70Fym/g5w9tWQxGVyx7VJs9WYKbGninkHZcx0J49j
	 02DrlJqCPmk7xcZzCL3ApVgqACDD+du2fgUsF/x966N+Bpegz9I6fZaOMzUp8ozaUE
	 NS879ClypvwW5ArGrvxDRTF6Ff6NF+LLUiPoxPg0ZMCij90Q4yW1kKa+qLasinJkyX
	 vb/nDb1O9LGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D1D41D6B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547437358.31809.14247928706882342417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272cadfa46530770d5908777666a84c8b8b121e6e491432e6853b63fdf897278
Date: Thu, 11 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765474373
