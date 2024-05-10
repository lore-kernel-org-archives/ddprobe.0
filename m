Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528B612AAC0
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715341343; cv=none; b=Px/wYgLmhzxJJd8ZDW23OGY15+uso13f8DDN49gKFSSMSiyD6+mdLnbGZYzshEu07N+SWi942lpG/cGc31PJ1kXxXYdZ8SOar+t2L0uAB/nejCYp4RzX+tY2W2b00XO+RmhpWdBbeZyuz+z2qcM6pawAIMKsMJhVhGrsaGKFukY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715341343; c=relaxed/simple;
	bh=IruVKkH1znvwihhGMUvLD3vQfBFXeUjRmG1BSV8Yfps=;
	h=To:Subject:From:Message-Id:Date; b=pvPTATW0QbZwuIEg6SKWj5HceOo6mq7Yjx8K5Asr07zxGLNMJ2h9PbF1V/a7XMg/Caa14DFsyMKIeyopEdANq1s4uSJ1k6YnlS46mzzqdYfSdM4CpBQ8Ja4tmEcnllP/caIJN+WX0JvAZ5pOcQ/mHv57WuKlIbF+Bo7W4zl2n9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2zUhehN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2zUhehN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB63FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715341342;
	bh=IruVKkH1znvwihhGMUvLD3vQfBFXeUjRmG1BSV8Yfps=;
	h=To:Subject:From:Date:From;
	b=s2zUhehNC2hM10ZiTI6pV4aBdc1DAQUAVM69u/MTbB3zenWkfq75EGtWXci/0bSnJ
	 XVpKxabibpBxe7R9UqwTnPmwPr3h7OiyiKXfFqS/8JW0fOfWdCleFFHHw53qdV1Se9
	 CrcMWxmOCxvHToT4OYYxM4Ky3w2zy3niANMeJQcXhfZCUwLvR4n+Me791TikzkWUCV
	 P47redlLlWBdUGvZ8K1dgNVLbaYctE/t65+yBgh2vNHMcCY5mGZYv7cSbjs/ry0Av4
	 oUITxX6nxmfuRtw190xXJtA1gTIfgXaoKYk7CQ9Oj93cm+E3eamTzhzcPwtkcboIA8
	 uaAzWYYsmIQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8ABC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534134275.11224.3826519463933405414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f751bd5ffdd1857431479c3e059de4a6e1fbf7ec3feed98fc17b8bf9f3c87d6e
Date: Fri, 10 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715341342
