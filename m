Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0A037F8D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790506834; cv=none; b=Hzoc4s5qKQBT/nt3fiG/Ls0nrT4cylaZo1EWHzkcEtMXYfoXN67geOA1n23eEPSu2GoytzNDz3pey0rGGfsrTZE5QNZ3ldn6Njvi4mgHeQ3EXTIxUhHZQ8ojVMkCv8BxY67yYhjPOLPATcM2r5fzPeeXWp7Ysu+k5nGeGfNdmsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790506834; c=relaxed/simple;
	bh=/1jMlewG4ycBf8Two1odrXPnEpbpdXQ2zQH/NUCwHu0=;
	h=To:Subject:From:Message-Id:Date; b=F3MFHHaveCEtOF1T74UXU9Co6rhTQEmG4/aBPQCUnOrojlO9ycqv38ShLeb6tFkP8mdjyjzF74FnmoeX+QpxXCWTQRus4cs4X6kerq8NkWNl9y9iJOS/w0KfUqsz9xiyoehWfeg9HdpKNVaeSKKndG6V4ELD7PUf2MgASLevJtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYP9rJEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYP9rJEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE43DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790506833;
	bh=/1jMlewG4ycBf8Two1odrXPnEpbpdXQ2zQH/NUCwHu0=;
	h=To:Subject:From:Date:From;
	b=aYP9rJEX+EoCAwme5pYdx/p3B5+DV1He11BDiatKSRhrCH4FDAAtZIKfvRM0QVmXw
	 KPpzSlY5dDJUF0C0QaRs8SsRo+Bw+4rvxMlCpe4nN/bea101NPWHin5chlJGJZh8Dl
	 YUhHen5KghSbMfqMOxmVHw2D1d6bc8A5wucdSSkmDDAd4Y0qyXW5IkRMR3rXJL+GG+
	 wzfSUUNMgn98YabNFEKvlTHSMe98DgaPsD3vYIjtq73LzKjB8fRDuJt66cGcoOU9Ps
	 UKRsAOvlL69kg+tD40L0kjZoOkUfDihfX62Zm0bkRcJSIqMmzgMTFWTOMXz543UZ78
	 sE7U3kAIoKd9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC56C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050683369.2346.15944419243031572019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc2c3cfb036f37f45cfc7e19a0d4eb5b255f8a04ce0c182f5670433ff0d7166
Date: Sun, 27 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790506833
