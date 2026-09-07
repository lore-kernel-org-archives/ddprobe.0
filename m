Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634592E7375
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788754834; cv=none; b=pAertIgCjjSAvGTHgbKwbW1EtHCbZO7LLkTcfUpJp0HGo7+RiJ9N/ogYVXE808WFZREkNCz4P4lm0iMAUjQiVRQf6fNnrDeJrJZAcHDOTvgQ2K9et4N0obp3RokyVfSQb8yKCG5D9MiZPQ5VfNFHJsJzg9A4NUHsMNMvyPNY7i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788754834; c=relaxed/simple;
	bh=QBuxmVM7Lz5VB5UnaiG7XYTutQn8lqWHlAccG3smR8A=;
	h=To:Subject:From:Message-Id:Date; b=k4xWk/v8e3YLuwWWqvlbyilm9sG+Ivmo2ToGeSlrgyPVyam68zkoS11XDpckbgo1QwvoZ03wQM9lUVn6eXTPYiPYZAccATBf97DQ8spsTGw982y623nXhXJFak4x373xO+lktsiTmjC2T/A8G9xRmNAF8L/YGcLFTFzSGLU/ix0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFDN54Al; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFDN54Al"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAEACC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788754834;
	bh=QBuxmVM7Lz5VB5UnaiG7XYTutQn8lqWHlAccG3smR8A=;
	h=To:Subject:From:Date:From;
	b=mFDN54AlH4gFl3jWZJV7GehDq4jbjr4YLrsgofdQiZqQC2gWyOUIrWqM+BqUBo8Ll
	 MIxKUBRdB44uZcslTxg1/GLC3PZZtMwYS+59+wApyY3tcz0Uv+q8ZhZaOwPpyzPgG0
	 KDn1aygIMRyosjIUMtVYUgVl7ghCbzDrNWI4tXWElWGDjVmq1SnU8eQhdqJcJyResc
	 Kh2AHlqTgDKGsSQAMcyAGw+3RD7fQibsz1/Oez7knxAD7zkIp3D/aY0Vums7tKeZU6
	 8pITNZsXgWyMFqPRLyOAIWHSFmbKzQrMCuY4eB4du6LhpQf0k9kIW3BKDjVw4NePws
	 zzvG7neOS7iTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C044DC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875483375.9771.2018242746063654477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e146b4963fa77160876f988bed564569522400bf45cbb3993eb0499220e0c110
Date: Mon, 07 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788754833
