Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC931946AA
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727101554; cv=none; b=NFp1XFtnjYIJyLyGqmevsEG0StPpx0X+msoI0gPq6u5T/CcxJ7LBjQHmxOBRCneVaACxBHM82oLTYzfGkLKkAfv0gZ8nIRNaR0EQyCdIAsT+K7DclLnzUEX2FBD7bIagFUzvQcGCAiUCjsPk6O4j6Q8TFczz4/K523M8GodQXp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727101554; c=relaxed/simple;
	bh=JJilXQPDY1IRTpY/tMQHPOFer5qcS4wqdNHJAwFbe0Q=;
	h=To:Subject:From:Message-Id:Date; b=ZfPFNFJlHXlHDfRFdJR/JhABymRJMklG/gKdaItSr6rrNiBC0XTzryfuRdT4hYiuJhURTY6IW3CratpswmDq2QR0WiiSPYRhCXraF7uaqp1JGqcWbE2FybwUomlVycFWXKtbUSk6B4puqLCIXW2BkpjZkBgVY9wPWja12uuSNVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxErB1Lh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxErB1Lh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC017C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727101553;
	bh=JJilXQPDY1IRTpY/tMQHPOFer5qcS4wqdNHJAwFbe0Q=;
	h=To:Subject:From:Date:From;
	b=RxErB1LhGCB8vgE8hg3GAOgAezQIsQ4VVhLfdxGeiFDXEazvtv16YPY8foi5vxJa+
	 oz/bIyvhauHyu0Aqma6ya45fQKbIuyKY4YDiiznsZv1tVl+nmtpyeHwtwdoNbpYWTL
	 zdmhbshEt5nKwq061+JDBxoR8bWjGcL5eOd8ISSGA/Nmti/+dsAW8UGpRCc7o+FOp/
	 PTMo+pgZtAk6hTr83o6gC/fKX0RnSe6FNjhL7upMeWylYW+zGrcRwvL/73Lkaler+5
	 YhwiIJMHZo7oYn4vwJDmn++V1NaKzsH4nxBHFKis/ntuboI2QdmusGWZwkxiVcnIcR
	 UMbwIG36EH7hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9615ECF9C70
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710155360.16982.17229871812933531642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bd71b1b68e21c6a5dc2550c04df611a04f0578acf6bfe7f110a59bb0348241
Date: Mon, 23 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727101553
