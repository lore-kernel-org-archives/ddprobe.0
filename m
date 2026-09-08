Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4448710F2
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788826234; cv=none; b=Obp8lZziaHcdRodlOwI23fikyNBWTquH7NqZds0ZisKV1MqWYIztOjX/ZXfyKSBryarIPfPh5CRsdPRzvZaFEoC34PbzJIKzcJYZmY1B8qAx/E7r8iqQ6Y4L89YppUKuBIH4cnwkenWX8qdPQ5vBza2b8lIrfpm9m6e5bCiGmaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788826234; c=relaxed/simple;
	bh=GxjkBHss9PRyJvuTMPRuU7ZRknyNXk2FMKJPCNNHnkI=;
	h=To:Subject:From:Message-Id:Date; b=js67iNnCUGB8D4suSF6+lHcdO9Cj59Zhf0fIMIeqEuTttRvFwdb/tyE1kbz4Rf2ePhBBonikctB1btC2rn3/WUgaYoZbcVe13M3h2KUzJrxParF06tLo2O/fhL8tfdTTI98LMHOozVjB3qSvWX1X979TCiBpRFlYu8n4JJ0kXIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otC+/RvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otC+/RvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF48AC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788826233;
	bh=GxjkBHss9PRyJvuTMPRuU7ZRknyNXk2FMKJPCNNHnkI=;
	h=To:Subject:From:Date:From;
	b=otC+/RvGtEbtyavSLL6xFJkVxTzp/T7YXSe1Vp1gWgySZ1bkO3mOpiOf//IzeSZHq
	 7W25HYrL/QaPQWJIVS6lBcw6L22gNy0P486z9bZvj+B+WfNCf8OykkJ0WA9iZz1arI
	 SQwxxEIuq8n3ANsoD3nBRt5F8LmOpddFkFOLojfF2X2o0HKL8lB8T6/WuU2bx0j4Cm
	 TErfbxK49HqnL8GxhRX4EB91kSpTS6rTg+721PtLtt+VhbwK2zF7SRlbb50l9WPieb
	 kU+cvPJROwDFjZ+tH9+kavUEIrHj7iFWgPl/vBHm38D9IPka8lCBPxTOo/mRf2aGAC
	 Q31Hr1hSUNJFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA75AC79F9E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882623372.10089.7052274085364642379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cdfef0fcfb554fc622fdad4ae2c254279363f56164c0e7698e9834c05d1b20
Date: Tue, 08 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788826233
