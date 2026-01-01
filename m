Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBE11EA65
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767305034; cv=none; b=DF4Au3myrHl3pYbEk+9r4JVbMWMdscmhlZqdHrT3GLTw2l9r8B49OZ5v+njttFIzEyNEFtatEhLJycU7D12V9OBnBF3iZhDIrcdJvVQ7r2SX+OycfiynCuCDaPF1RmNedqcrfeX/neT0vbJZdoX30myTzJRnEs2dL4MvJHyg3Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767305034; c=relaxed/simple;
	bh=zqWapfbQ7OThe7TJtMjPIbddQMnkJ3PcULiMqdnCevM=;
	h=To:Subject:From:Message-Id:Date; b=b5ZsccmJf2rxHZ/W6KbmnY3qh0az9nP6VxL4MjyPiG790sc1+uFWG/kW9zVjOfUkXxN4Y7Tyfm86RC+ZJklYi7RhNPbU8HnzNKDmXU8r8FqhjUXOJGlyRXeVRz1mepGBcGRxPis6G7B7UmBFLv+YgYHJ6Kon4SpFJJaaCN+MvAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nj5ZB/yn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nj5ZB/yn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3162C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767305033;
	bh=zqWapfbQ7OThe7TJtMjPIbddQMnkJ3PcULiMqdnCevM=;
	h=To:Subject:From:Date:From;
	b=nj5ZB/ynKFmRktv2PurrBiFBvMtIPGFTWMLQ62h7790deXD4FsZUSydE5cJv1pkDS
	 Bf51XdefQSwa7qrUTpmYJmAoBU1dvjeO/B90pOzMKnFMdw4/PJ5vxtpNTKk+ez3xhX
	 tdVNNfopLgZs0K3dQY0Li4emNuiuY95V4n/YsUleN55kBhfwivKWHsnqqmsMFxhsk3
	 nYg6FTHVLXuUAQDiQX4HCjiK67fTqu+oYgF4g0B7VY8nhGVeMWVAUdQKAzmLL9zMbv
	 9DVEvxnL32MpVMWLGqpsdm3COjW63pkz51mgV4D89KoJAqg5T8nWewwSCX+4r2d6Sy
	 5AaDXL4q9FyDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9BEEB57B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730503357.7741.2300397119925101075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843e41f19efe3853afb3866c216de1644983c34617e0e650301067cc49b3fcc8
Date: Thu, 01 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767305033
