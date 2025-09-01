Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F90260563
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756794; cv=none; b=t8VbqUBcFVmiTjLoMK42dUQMaWd48DjKFD3Tq2ba8xxo+hFCVIkUeBcJg6rKPTlc2CpvbgKaLc07iTGfV0iC4C3dixAKyMYFnOFSyfdZvMfCZnzUGbQu/Vj+vivdMb8srrILoBQEki088H7qaJFzwUZZH2yN4vmh61ss+ZQ9Mc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756794; c=relaxed/simple;
	bh=iVQawRL6GYZkT+oC8KV1q1JzMpnPFzDvNMF8igf5zHY=;
	h=To:Subject:From:Message-Id:Date; b=OSXE2UJd0WDyLW7OSlQC3NM3lMW9nhvAVCr5RQRyZDmqWJVbThs+K4OT5Y7n8FPNDX4ykJW8XRfsaCCVoFmqrChT07N2h+O4sml0joidPLwwC2yB+P3Rd6qxQF4s86wV/Wf9p5CE6mkXav3OUJeyZUoThhdqSIDdQgoLwD/k4fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AShA43Tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AShA43Tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756756793;
	bh=iVQawRL6GYZkT+oC8KV1q1JzMpnPFzDvNMF8igf5zHY=;
	h=To:Subject:From:Date:From;
	b=AShA43Tr9dby74gNBYiBv64AdCCqekupRxA+GIKYwApsAMGqWNrKlYIMd3x/gZCF0
	 QhdK3ki4EjvBtA1L/5x/j6vb7I5dfP1pr3VQyuU3mIxwInmBFySyMWyevG13I0WDno
	 yy74z/KyadTt7WvmA8gSYN/vc8p3DbH1geOqq5LEGRsU6bcpc5L6tkaaIH5KrW3Qqq
	 84VK3u3dHs/n4EgF/1t3eEp91byjVEOoN6eaCTJ3HEM0E3w4q0d0AOjl4CIRfqjTUw
	 6lLrQoVISahr/aCDGZt1tmQl8pNKJf4/pNe+8399PP1Y3WxkvSDblkyz/FiatOmMPQ
	 0kRuDAmEHbAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90241CA1005
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675679358.21225.2553919898024839281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c571cc5e58d639b87237ed876ea3abd7c65ab1c41d94992c8e36aa6bcf95b7
Date: Mon, 01 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756756793
