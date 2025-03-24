Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597FD1DF73D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742850594; cv=none; b=Xmqj2CJSmQdT/iPLHTQPksvOtppT+QioJdK5ppnaWzekCV0bY1xrGqQ2xl2R5GQGgnGBoBAsIZ7xnqFsiTQ5zSvdEia51S1x9ar2SXqEG6QcV/1H8Ukb/8TzCKcWk73EC2l2HFwz/s/RQCy+5+TJcoBR8RX7kgaWXt3Bgbv3OLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742850594; c=relaxed/simple;
	bh=+EaStf+qQpLXh0qcqZER0M7N0zDtMgQq2WBxMcFilsA=;
	h=To:Subject:From:Message-Id:Date; b=UnILl9sF10nXqyMlh4ejmoXGOtosaUC2pxtQ4fbb0kgZNy02JPQQ66UjprRpYvAiCm0qvg88QEXvdEt8sR9bVez342cZOMBRqqV5nqQDyw9hgBj/XA4n2CjOHzmtEYu1GtBKjNt9qIzdEkredoRh9y01gzr0vyvOtDaB1hhg+gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPefHtfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPefHtfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF5BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742850593;
	bh=+EaStf+qQpLXh0qcqZER0M7N0zDtMgQq2WBxMcFilsA=;
	h=To:Subject:From:Date:From;
	b=qPefHtfy+5QhbIX9r7yE2Prrxnrf/7NFckvSgQt6SyFwQ8BaBsCEWu9uJbL0njzxL
	 wVpDq1HTbjs/kM3f5O7zBjPES/JOPsm5IlzMVLDjXfetYs1rnhHNjET130hoq+h5rg
	 zJZF79kVqSk4HyLB053mEPeX5wgGicM7vztW4vwbHi/B591HDlFEGY809jB32lS5Pg
	 36EaIskx/ePVhFU1bT4pkPaceF8K8yyw9U5wKSRs8XfHodUEiOLxdT0auTolJUFUSg
	 /xH6L3GihYYKrT4YZke/he+z2uPrjUSlEnt1WFmPQbh6b88Fg7llDCMOwR5bJ5aRsl
	 UdXNrvbOdJVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF139C36005
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285059370.20066.551451794498480698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de2cfcfc5a1dc36ebb0d490052c27794c832bcfdf8a74d6031a0dcd38f59e47
Date: Mon, 24 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742850593
