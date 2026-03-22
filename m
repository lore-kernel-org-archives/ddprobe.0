Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B0E366550
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774195494; cv=none; b=rdrvSYoBBRpgvWvfRlf/5tuxru9+itSYOm+jG1NwNwwMH9lteZd/oaicib+9+0/FCxiMylfPPFALki+IG/gW4nz4j46YhQc86EqI7od+FlNeeHst1eteUFDc2TZZqnGP621tnkikx/+Ta0tlB30b58TJmqgYKx2AB+xdGgoPO40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774195494; c=relaxed/simple;
	bh=OCoDigPYQap3WthLBUjsk607y2KXI2ndojxI0oY5mcA=;
	h=To:Subject:From:Message-Id:Date; b=Bb7mSLNraSbaRd/dpnKdBrtxM0l5fOlNyPSXxF1Y+zi3jRF79ny3EJ63hw/651SJukTOHxeI08uWmuRxRgzF5xyV2jV3j7cvMmClXvpLc8fKw5N4cejZfrnx56+Zt2vOe+pPzknlJ0c9wCV+wozL79nVSus4SyUsEZ6MsqfIEjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oTY7osp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTY7osp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93A0C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774195493;
	bh=OCoDigPYQap3WthLBUjsk607y2KXI2ndojxI0oY5mcA=;
	h=To:Subject:From:Date:From;
	b=oTY7osp0IBHvRUu+rRgwK1JSj91Ls5b6gGpadacgptUD5P4fLdOnS4mkuRj0VSLQ0
	 9/mTgYfzzaHsccr3fqjSCC57VvTI8xFnuAiAMW6a1vrVsJUwwNajtWqF9JaGA+R5Lm
	 AdF4lve6OmnEiRKs/Pnsnt8DPGFT9aRU9hOax5+MyCDcYH5pSfE2sT/3Sk3C5f3Iu5
	 sMOt8uam8MnGwBJFKbvwctpgRdpWW/sJqLNeVmO+fUjl2ZfJcsiKgiqd8jpSqBPAXD
	 ziOQTuG4e3QJSlkQGyD3KKWwT9zDJAvEc5/vePXrh6Rrj73tjmQTJd0/TbOuKSlU2j
	 qoWLJm5PO250w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DF0FC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419549358.5081.9227871185383801609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0470406e9180afe2f050f3554a9957450f06c2c7b87a1cc695dbc0cc72f153bb
Date: Sun, 22 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774195493
