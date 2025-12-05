Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6843433D6D4
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764949376; cv=none; b=QPnmoLV5Vm1JB99fq47aTXv1luxY/+1D3rloIKfXhO/CIQPRwQnhdB4HVgJFUcrp6Ed48snOS7X6fHDAMJviDE6U5nKTUkzUDH7yrhv+LhsgLN/NLkFWS3jdCHQag5IYdTDPPBgOzsAwegnz01ah0oJOMrMOi3Ahg7DNOpEHrs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764949376; c=relaxed/simple;
	bh=H+BKLPcAGmYvPb+vqv9IX4Cc1CkhQc+dXGqh8j5u3O8=;
	h=To:Subject:From:Message-Id:Date; b=iiBFZ6Iu2/gHcypXukZT+nqhl7gAU7GUCzIv1Bjq9W/GCJzf+yNmNM8/Azzjm8riXCCOL+fsD3Gtvh3aYGQLQP4eJivrFyIPH/oMplexYEJtGxvzFjWXOOoHMl/KN/xUo0yqOB0wLSISSnypXgPOh8iPrcMTcq0W5FJT2kbKP/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUjysbNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUjysbNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7A0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764949373;
	bh=H+BKLPcAGmYvPb+vqv9IX4Cc1CkhQc+dXGqh8j5u3O8=;
	h=To:Subject:From:Date:From;
	b=nUjysbNdjQg6ac40KQ6AYqXZkt7qdWfjo9SEsOE2+V5J5nnJJmAnpngNI5NXypi43
	 jwp4KlxSf6c6GsSp/9FfdIOpM+7mD5TFuitJykDWTcmqsHWr5o/Z+mog9iBq2adZ4b
	 oDRSx1AN7GRJhnyAOsToPXrXBw39gmDQGaOq5yI7X6t9DLmJDq3TxDWYRudqacFst5
	 /qKSXzntfDTcxJQYyxL9kv8mMw4HFlDA8dvePbu+BwEuSfbcL1e0VXmN6wmszhoz3v
	 /Zz4asbZ8bHzArFUR3OAFFPPsQFzOvu0PMpU25P/cp3J/jie57hdfH/8ZV17zkyQpo
	 dadqswgZ8hwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A9D32D9C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494937359.6587.14279630245297662631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124597cf9662799eb5009a11a508067a03fe54de245a03428198e38b3f4c09b1
Date: Fri, 05 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764949373
