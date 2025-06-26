Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A371A8F94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750928994; cv=none; b=DuzdxOJicyqEM3h7500U5uG7BIQxorJtKxw5sUqTv16Q7/6MRrVKu8ZgvhFCmo4FtH8YrKi11oevijL/7yGR7K+VPXEFFYgM46ZfUEDCRP19QcgjHnw+1mbkx69j/ouT+DEJmSD4eJZ89r4pROgaH70UxkM752hcAPYxV+yPedU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750928994; c=relaxed/simple;
	bh=eproWwfrRfpJo1btMVoDrhHNjiMOhUF+xcRz7fDIuFY=;
	h=To:Subject:From:Message-Id:Date; b=SeA16ysZY9IHr7iPpNh2ASdgpVIEc/CP+imwbrm5zWKaMOqvs576Ym1jNPuXOJkd7v74A5jCkvPOP3LnIT32Q0uYK920CO8H7UEdNWis4VmGO7dKAQ3iNBe35DJzHspZFERkggzysEKpYURTSjJFOOLgGMQszJCJDnJ51RRCI9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luv8mR4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luv8mR4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CD9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750928993;
	bh=eproWwfrRfpJo1btMVoDrhHNjiMOhUF+xcRz7fDIuFY=;
	h=To:Subject:From:Date:From;
	b=luv8mR4MVJJpkyxR1cGcoWec4MqpY0rGbFXClbmmFk3L+Iyi87Lrsefg1CkqFJw9L
	 ofEklK0u71CQfu9Z8bsD6nT1xBFCLyJ1Ke6L8nZNBAfuXl2ds3NlCC6JvXnpLWJmQZ
	 D46xb+9xhFw4nT5lQn8c3Lej/xw0LfYSZSGV4rwFcKg1XCXOkjwFOU8qoOy7NFwAv+
	 7uJqs4D7XCCDe0qNUvgPSxGFaDGnPrLHz7zznrBLzXaCulsecGAmdHHokAGlDZ5yNl
	 j3X1cRDxgz851Q3WMHEwgvaZwy4+rt2L0wCJep2F6srJWm8A+7bTi+4RW4ekh4MPPC
	 e66dtyjG3mZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB79C7EE39
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092899363.19047.10235947241568755016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5973565572874263854063b80bfbb790111a422e777117bd6f11dfa74db44d9d
Date: Thu, 26 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750928993
