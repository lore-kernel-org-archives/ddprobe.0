Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A77D3C0D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717309523; cv=none; b=ruQqjB2tdqwnItvIJ3gUfsrl5wYMOQzpSiUb7ywc2H1l5OnFKaBgENUJ8EqemNdqWlTUoFH7f1mzjELavnlNVg2lnX+0hBL8lVFiCDNFIazcRMXDX1Q9f452dobTrZiga3mJwzOmOgrddf5EIWhGlLYrCvxPLPO3sRUI8Gg+HII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717309523; c=relaxed/simple;
	bh=zrpUqjzhXYld5Sk5FQTBArcolNPaZyHSYRZgm6Znw8s=;
	h=To:Subject:From:Message-Id:Date; b=i4xxYEQ+M3MKVad4O4lh7qfs8NlfIsawDAYUwyhDk2KbrlYLlFgw4O6xVCmrKJt29NN6P7gosNmEQPRlqMEIjKKBa78eBofewV4Q7B3FMaNVJ3RXkF6exsu9+MFfKgGbeNPz5dROsm0rvo1wIJBKLk/Rlesuu1r7xZUhH6QuEVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDZz37Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDZz37Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA174C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717309522;
	bh=zrpUqjzhXYld5Sk5FQTBArcolNPaZyHSYRZgm6Znw8s=;
	h=To:Subject:From:Date:From;
	b=aDZz37PcDLqRGfMBqxa/e3VzJyRIUGH9duvTE5AnM5qivXCPhBupamlpVsbV4A0K6
	 vXchOFtfVDbTUIPTsgSmOKF9TdqdnKe21PAnBFIYwnAUVBChMnq/atxUlZE1uwzUPl
	 z7FhDdgcOLvwJopn9doUjHETtkx7WCi2x9rvqsnS4+KjdavAjpo6gixKjVedIlJrBc
	 32ctaYzWGCzFOPb3o6gZ0iB6xA6gsAnTF0D9T/e8fcHhI4IvmWP3SqhbkeJYWancYZ
	 Gp47VaSHWEI0cWe4Bo5A0TFaZcYma7Rjn9dqMnl/0t9k4RxpmKR/JZ56uuNw06yX4i
	 jUXoMUwoyLBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1031C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 06:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730952276.626.2910510628147055593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2a0cb50a4bcf84b9d7b09ec7124b90db38c25741bb4be34d177bf420987fc2
Date: Sun, 02 Jun 2024 06:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717309522
