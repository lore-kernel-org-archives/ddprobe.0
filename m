Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2FA2AD2F
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757054394; cv=none; b=LJTiU/k26Vt2lo5cmYK5diDdamiqFpaexMYETza9BWYog+eV7O8Yp7gjDWZZk1rhLbczrChCEQ0f4uABfk/DH9KRlL8+uUU6qitA6gURn4FJraqLPkvj8rQ7IrX965QEr75U6kiN8qIUSvwXGw8+7nFlc2g2Ph2ERmLC4sS3XyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757054394; c=relaxed/simple;
	bh=xmNeGuNEFwNKbnkEHzGoHQGjPuQEOLoZt2fqK8CvBtM=;
	h=To:Subject:From:Message-Id:Date; b=EiieDxGuWmyvSzw+WzC3PZN+BkjXW98vzXriAY3+hvKMGUaoICSL1ugs477OSy8fmtyzdCf2p/3NUCRuwOZ+b1Cuuo3IIi5QxX0OObRQsPVN1yRUe0Y10eA4z4C4TLgZUcvDRtAv4MQtLgzUeO/J2hBXnO4yVAiTsII9mmuFy9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RISii3rB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RISii3rB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4676C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757054393;
	bh=xmNeGuNEFwNKbnkEHzGoHQGjPuQEOLoZt2fqK8CvBtM=;
	h=To:Subject:From:Date:From;
	b=RISii3rBkmuu7gbKDyAbm31pq2YeP/lKuQmIlngayjUFNqv+HP3ISCxDOB0RmWB+K
	 8YCZVcGtJs1TSCgeXcOdstduYIEsBiBbjVEQpVSOxb9hhNSlm7vApFXulXUfc0OxKA
	 RaidMp1QtkCJ3n/z788tdIMiG29w7Srdus4sDmzO9aREihL0cLfjUzsSOVKKCLL9B9
	 ktV3OMcTXYsKgiQvsjYTnOqsPLq3vhjKJunmx0GXwERr+Vpx3uoHnOK5Z59iLU5DdM
	 C/3cRSuMlDriOK6NqiOCWGjPMBDgdRO60vEdH43s111oVm9mKx2tDqGXrj1ayzdKnz
	 BpI6oTYkBENqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D6CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705439358.13508.8977469632051489719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfaff375d2e8c6545e49f3051d39bc16a46ac68944d55c898893e896fd2a4ba
Date: Fri, 05 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757054393
