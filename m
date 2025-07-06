Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E351FBCB2
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751801994; cv=none; b=S5yTqvhhSO7/jTzcSPxSI7MiNwphWTbxHpWBbMZxu+zy8bua3ETa59EJjw4R1k04D5w3oPwK8uzXiom7JbPYip6RRKGolpqW0xTlQU1enPw/dP4s6Q4rmoxtxHrC5NN12Rtv4oUKTVJkOR0Q9WMyqdGJyYB56hKzjjVxDt+35OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751801994; c=relaxed/simple;
	bh=E7MwqK4QTvEBHi0ZoTtZmz88b4fYtmZ8/fpZxiStztA=;
	h=To:Subject:From:Message-Id:Date; b=HwrWH4mwYXnOaTr5R6zq9bd91Mi3emGGXsgvortki7SA2Mo4NNZP0e5AH2okvkHTUU4KxFH960OSsaZN/RqdgGNDvtxpzzaGYcfleL2KGEeRxZqU7BdspbM4wB8EmghWuLxA2RQfbPVfY/Ravyrqsbe/iNiXyBo7rB99OmIVwcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1cpWGmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1cpWGmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4BDC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751801993;
	bh=E7MwqK4QTvEBHi0ZoTtZmz88b4fYtmZ8/fpZxiStztA=;
	h=To:Subject:From:Date:From;
	b=n1cpWGmklmxF0r3xPJMcC2EfVy+oIQdMpGQqpxYQ2Po0ae2We1zofxk/z6erHEbTk
	 ksoH0mIBczgSTyESMbhJd5PeAk/CYNanLbZ6CDn69Ayuut8EP4HcCrKyCH65neI3pb
	 7cRP2IVzvLSOke0cV2o4U6XHbC5H9mZCLjclZdTYeEvy6i8O8MTgINwjrEjs15TS2a
	 07tkWGhdoB22jno09Gxj63peqnQ0T6Z7lFZF/it65/a4fUlyfoGsrEcxAEJ7H1uCyV
	 5TzJOtMhbjT7DoktswdkKHLSkOeb6gVR+y0fAGTX01dP2dcJdePPJvuIK9knlMUu5c
	 7m9dn/VOtopJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25EC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180199357.30082.5532041041996749968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b7500a46f4abfc63c6e90e3b3f45d197491c1f7788119b84237dc1c14d289f
Date: Sun, 06 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751801993
