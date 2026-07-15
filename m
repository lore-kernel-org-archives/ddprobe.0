Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5637D30ACEE
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119714; cv=none; b=ZLeri/pVouXiHZzjllEYCyejGJbkY1MiCKnVLJvBW9+s5X/w1tkLst9LUpTQsdnTNfQgqRhUdh8UiUsoak0Dq5azJ+3G6+1224R4zc26txhcpu79SSAAHafshvwP/Prz3H1pnGmjlhh2PC4EcR2ulScAQG7xRC1k7WzhhSzMGXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119714; c=relaxed/simple;
	bh=ctIYIAcwMmZ11oVrKSWgvKNvpqvxNIkK4/O1f6pMWio=;
	h=To:Subject:From:Message-Id:Date; b=sKXaLp9EQM5vYSHZtgNPBkZ0bTR/Y/hZ6DMNI2qXF7NjCffN2JADOtbuMh61EawgdN6khK4nRe/+9BjDAOeH3rToXxWdyNdIBs4RUM6UmqC0ilINtfLfaGM8KjuiiNVVBg17Bq1doJh5SjjgrocCL5MT/FwM3q0+b8WXI0+fQ/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mltFQDvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mltFQDvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5176C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784119713;
	bh=ctIYIAcwMmZ11oVrKSWgvKNvpqvxNIkK4/O1f6pMWio=;
	h=To:Subject:From:Date:From;
	b=mltFQDvgB1UW4OPBzua58cJxRyccZXWkMoUn5zO8xPHa0/STkcNpKc5uE+hdr+qc2
	 3zlY2arIBDhMcVdy5IgsWfXduydanMAmap1DX8a5pxzUZqn0Wt8UVMUq1tEjDc4iQh
	 twymSo8KXfi0V6wG25Q2w4+1XD9aegKPj1TLnVLvcVzozKqJOWpq7X3WDnCXLBhtV8
	 SNLJ/3S8Q5QxJmRCLzpRlvNLAAhci5KJUXofnUWuXbyCJUy4M0oXz6Yp2RHgb2l3k1
	 CBWBI+PQ/LRUiaH9Wa4oDLjYkEQM8o5ZyyVBu0HZkRIuQxS2XlBDa2rN+4PMsomKE9
	 71wEFzqtPPlRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DE4C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411971371.22481.4551723568345396785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba6e6d2beb023981e5d58c8a80a44e6fa83b912c865fa2e7660599c5ecf47f5
Date: Wed, 15 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784119713
