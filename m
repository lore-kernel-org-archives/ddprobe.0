Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD893093CF
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787200234; cv=none; b=JanKkqiWIr3enTfus8/rmzKfHIonjEXAbCoxiWd9Ab5DwvcfFs0XQnUpHcxQdDo/PZQ4jX0PPHsaDh4NRs2fWJ7/nUzckqct31RL/Ldt4z5Yj/oV7J3qjnBAOuaYhEJGXHHnuqDjuReyYeC0iAB8axUU5m12VThs01shzbCB/o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787200234; c=relaxed/simple;
	bh=HuezOH6Qbt6IE2QzVQkRV7DSoZzze0jTsuB6gIbhJK4=;
	h=To:Subject:From:Message-Id:Date; b=Gj4fBBjay84eSKKL70lqqbJuML0A+wJ3c2qur10liTKjonzJkL7NF1dYQMDX/je1V6mrzaef6jfj/KdAhfkAvWJhzF9ObpZQMCt3/MB2AndtuKItcgNUi7mqy5p6/iQnA+3b/0vpmUrmH+/rkUpq49AORK3OMR7Er99zGzISzKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U557ZCpg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U557ZCpg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72D0C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787200233;
	bh=HuezOH6Qbt6IE2QzVQkRV7DSoZzze0jTsuB6gIbhJK4=;
	h=To:Subject:From:Date:From;
	b=U557ZCpgQWztoix0S+cyy2TdXUUhXexUC6RLVZhPvd8lZBOZsQHQxf9+W/ddtScfO
	 mu2w9Bwacd8lyxwLrRDCg+A3GNb5cGZ9TYVHOLVmiNHSiIgZIOBrNEhvdVxbHcM3KP
	 rhSBVw1pAlRPlLtpjIFlSrb0jKxJ+S2Dqvj9D/TFHCzzVfk+axPOE/Hgfba92Br7Nf
	 rg3nTJynFbfxb8lkaDR0Wzk2gQX+WTCP1f0ldpaIX4YculERotAjsjoinfAI95IYzx
	 pFETtxNWNqktN8pAIKD4zLitRyTp2hw8/yK2A6wrhF1bVk0bwtpuOrcug/0aKzjnRG
	 hNG9RTMHta7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC25CC5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720023369.28938.6972569366047266377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d21bafdf7e337fe7904fccdbc0f523fbe689576cf782a76c7ef61cbf1edea54
Date: Thu, 20 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787200233
