Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7587F3C6A2B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781352394; cv=none; b=FKfX6acoxOg8242kIypwrjkTEJ+OzHtsb1jjjU02gSbwYNAgpS3z+pmF0Pr9sak4rbmRGsA1Y3PWgx81rKM4XoplQmXv3X7CYKURHiWAAn7+7T/7Df5t8wNCwHCgJWKw2FTLNqWF5IX+ax88QbUo/JD1V9cNRhSNGLQgT6X9XRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781352394; c=relaxed/simple;
	bh=6vzbXsZJBpOOZRN9LW0EtRXoRLUI9Tn9j5U7Li/vOd8=;
	h=To:Subject:From:Message-Id:Date; b=aR0hgcG81Bu/J05MCrCdqdTtwVHrCSG1RltrgWjc/6IBbk8YoAMd+nscaUdTnrSzUPsxmnzdT9Snvg679idYMP0yKeQ/g1LsfviNFyB14NDPxSVONIb2PMLoGxyIbkvj28mJGDhQALy9Cj2fRor2gSD/igCkPTPTORIEdqJzC1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kATV35WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kATV35WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB61C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781352393;
	bh=6vzbXsZJBpOOZRN9LW0EtRXoRLUI9Tn9j5U7Li/vOd8=;
	h=To:Subject:From:Date:From;
	b=kATV35WMB1oQOiCfPjT9tL2dNLn7U2PA+8Kl2ZjKwDvbZQPZQ5AgGQHpRT6H4CIPt
	 1d6Pk2wSbhAwfdgmPXtolOeRZAeeAK9jjyU/qvMEXpUVGX3HgnjdhI/yLndjFvE5KP
	 utntH7iwTMl5bpg5qiGtAq9wtW4zUJrq5gfegF5mj/k3gNBK4ph9cvBx/qw5KO2uyd
	 6h1E2aVMWmXHVXHiOY2Lg+mf7ssRAPHwRweBb1u35LYVCoQN53+ERn0q8lnc9FSwcc
	 lllYAlmg7JPvg5Funciqdq2tv//jP0lu6U4xvZPScr+VxZk9HiolXLj5BPHasrS1eb
	 ihPOb7mwNa4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC8BCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135239369.22615.7881759533425523785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a601d3816706980b9ca4ecfa63e4656597a87d74ad939ae3cb77a8c8606ee6cc
Date: Sat, 13 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781352393
