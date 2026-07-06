Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AED53E51E8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783379914; cv=none; b=LI6L9b1/TZWikxTrtw5Z8/q/6A+P0aekDayXa4WFuxZCnz1SFJMkRAeEBrTJKnZftDNX3bKf6B98Hnmcpb6QgP38ZDSZC1OBcCmVRtS4Z6lOVkpFqvOq7Uf7914Fazo7q4RBLUVeydGU+H/P1SdnQ5FWQ9sBeCfXpcdAWBCziR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783379914; c=relaxed/simple;
	bh=aM3Zh1nKL5hSHYEdv8oGaQ/bdYWwRv8SZF2Lhj3MA3s=;
	h=To:Subject:From:Message-Id:Date; b=Z8NaPhDo5m9kqVa5va70BlhoVaaxDZb9gBiD1+jsPA1F+9s9SV4L8tODkTuIcE+CHGEZ0CsG1ab6IRhevAqs7qnbVbcFWKivoGrKH+0bLsA7cUPn3uLJ+U9COjN3oMyCOHFj7qO75IDo/2Sk8seQzY7YVSQMCvAJIPn191/rGjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWpAv2ZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWpAv2ZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB1FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783379913;
	bh=aM3Zh1nKL5hSHYEdv8oGaQ/bdYWwRv8SZF2Lhj3MA3s=;
	h=To:Subject:From:Date:From;
	b=pWpAv2ZSSr5OTM0jr5ihgfrTz/WpZzCKCLdRQdlocmwn1ypZojBhFxgu1fbHGbSaU
	 CkvCjQ5QbPlRxPVHp2dWGoOVIIxLB/ZZVE7XocQjWTY29Hm8JJGOMEG2akHsXai94I
	 +zC9ziXiKBVJcW1tSRZx8K6lU105iZlXcCijpIYl9D7lVoUW19AOBULMke7lG3pHWh
	 kIA8JnAeykdzJrmUFBCfFqzEY//U6FCK0aBGeOprb8IwsWkcOps3/QomJLTqEBNXEC
	 cs2GfMUaEm2TfWVPJfHAtDeUbnnv+e4GF9EZV9K9ZxKjJfML/cQS87j+EDUEej5iBE
	 ZJCOrre6NaAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81B5C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337991368.24476.16548816833720754601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784a126ea5b9d74718d3bf09410bb5ee2f65f3c822a8a79b810897197e74e239
Date: Mon, 06 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783379913
