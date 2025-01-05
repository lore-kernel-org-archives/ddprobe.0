Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7491876
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736062554; cv=none; b=sS5em4wO6Bx3yW3zPaVKpqi071td+h3Jf2Jj1HngI8kPKsg3/q0LSACzCC97ywCVzoNj1sztGBUzatYoL+2g0LbxDaEvBQjK7dvU4ptb4e1ZaRkAznrF1xigIeH8gngzjale5YogAjo6k/6t/K9X1iXvCeq5Fj1ykgmRxwWMTZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736062554; c=relaxed/simple;
	bh=xQqHyYOHSWUSNkj/Erpr1N4N2sE3x3EiHcGTJT2P5uM=;
	h=To:Subject:From:Message-Id:Date; b=NypHlYBCS6XkzxluzdJNGKCLBE0SJQ3hLYrUCSfIYPyuTpwMPqSQs0lvstqTfCS5+mCVTXgLY541rWfCwGfY8Tr/DJwGTLbbGjSq1N6bzHHMMRMddcLad7x4r8AoBmXF2BRMzMja+BefGUC/Ma3MB/F1QhwguAf66J8P9WG7XNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAN1k7A9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAN1k7A9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B0EC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736062553;
	bh=xQqHyYOHSWUSNkj/Erpr1N4N2sE3x3EiHcGTJT2P5uM=;
	h=To:Subject:From:Date:From;
	b=SAN1k7A98bzOsw4iqTm7eIO80TCrFG3xWpUIWRYiQoOHen7a8ANsZIUQYgLZQfwdX
	 y1qmaeA8TfV63tzWAFUvryrr7YKXAGm+Q2PcMsxByXAParRzcUi5GnMjsz7GkSbY+W
	 D2Vj2xbFwP9bmxNNXpfkcEdsJE5DKbRfXnY6ZuPNdUnUyF3EHmCmZh7CSng3AsHais
	 YzoNj3rXXnHt1eKXpaHRcGvnG8myDvDkSjs09iMcKzPhazh9nXmWP/CjnizlZhRfRb
	 WVy6ujavtjV7Syw0CIjit65A1CMPSXc7bEMljPEsPo8GhjgoEavPvBb1W/v9KZ0r+Q
	 nLBpu+k221R8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2896E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606255362.23498.5223321774973159793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcce05420d020e3ae64697f8bfb7bc9e90c678335e55d1f7c5503c07d7a318cb
Date: Sun, 05 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736062553
