Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFBC3F8715
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781704594; cv=none; b=lN7bbYmtVUpniykLt3DK5Tjr7OttZZrnSSDkfKmqt3GGbZKjGGgAVdiplx745t2OHP2bz0Q4hofBohMIVuqRGfNcSZftx0F0lEyMwrV98QuXSsMNq8WCp2k/h6fTXUHx9d4w9fUyFFCJljh1U5xRxI2ETBYYWH8WacsSRsB6nj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781704594; c=relaxed/simple;
	bh=VDk65VOAQt8pIowNi2mch/3TQqrU/fzq1P2V56xgKkg=;
	h=To:Subject:From:Message-Id:Date; b=H1ImiyLw9qPjPdP4CUvK2JOtGBWuF/Q2mwSjZmPdm57ufJD7dF/v6UmB2bB4EbRnoi7uLWNmAfTm7Ui3KnftLU/YdhqehKnjUj30vfXzYo3OlEezcSDf9R3rJNt5rUv7EgkK6nntsgrXoXetxuKP1Kvl+/ViIjozNYKs2tQzv4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TofMVK1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TofMVK1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96FDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781704593;
	bh=VDk65VOAQt8pIowNi2mch/3TQqrU/fzq1P2V56xgKkg=;
	h=To:Subject:From:Date:From;
	b=TofMVK1PXLCJhcmQUn5Ouh5IV+8htdkBkNMZkvo/cNtAcLvznO0FWpe/DXvBKqisI
	 kRnzy0JXddMXzYVvJm9BNxsjhA5vtQ2h99XXqcZS8bKyD6s6dmax5hEvhf9GzH+KKC
	 W9Jmc1FCxP83pCPryltgfS4J+1lIkpv0T/jgy9iOXFiSCn0UrmOXCfjtMf2gyayEUU
	 bQlvXsHi88idbfW7NqZFZaSdHwzlj6xNLawdvwVICkutnLBULRE5pZdtn4ZG88NUNN
	 KuXmkO8io3JGG04UfiTeKaaE3fNrmfsG+C6jFF14+mMVEluAirQ/9poUtFdhKuVJQC
	 6xwMVlwZtgWkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6A2CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170459375.19773.6492755566143590009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e9bf7da2fa98e165467435162bd0dd1df7ecc9670e1227bb87b6aad1eee77a
Date: Wed, 17 Jun 2026 13:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781704593
