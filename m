Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0D244661
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776605854; cv=none; b=cxuU4/4eBrqiH2ekolR2mImJpgPJGyGTYeAYuVT/x4vSB6lPYmqDKKwStcSFsA7zMlOfu7NxX3IHaHeCYSNOs0CuxuMIquHqsEW8ON/mI2FRv+iX/f7554XVabPcOC5J9njhjbtl10yPmt10ZMQPMIfFy+KvfhEGRPkeCikrKk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776605854; c=relaxed/simple;
	bh=0ZWKIuIGRGiH65gA566izT1W55KKDRq96hnzMJmcOfw=;
	h=To:Subject:From:Message-Id:Date; b=XiT63ce3Yk5g/LXyTdmYgphNLmvv1nw6C3wHw9PXi0XwBLirPe7SwVYrUXG3xE4hOujF9JjbOpGHRUF/DF3UZkHMPXncdjU7btks4w8ZHSwroKVeB6mtXrLWOkT20b0E7Q0zVsFm8dGTadazPJYamToBnJWlZsrxB1Vhvi56Hg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grZIpiKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grZIpiKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ED6C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776605853;
	bh=0ZWKIuIGRGiH65gA566izT1W55KKDRq96hnzMJmcOfw=;
	h=To:Subject:From:Date:From;
	b=grZIpiKTjzbB8UV6Ii1YsXQGsD/20bzc/IKs9dQOuoWhId+Fh/saFZqw67Qpntl/X
	 cSDQKOvHaQAxtFP5Tw2mduZUGB2eoc/tze5KODFZ9PvEpBNaVAIxdcpbq2VDPu5vfJ
	 gOMAVkn9EwVH7AhGgtfkr4EeD+jblmuGRBWU1vFoVq8Xmr+7SoL7fSyObS6RCwCg+C
	 L4zfWfGZf6ORXc9qTnerFhB3iS6ZNrrD1GqtkgX5G8WthSLwhF1xELzqtPH8UXSCPY
	 rK6Hj3K2YU9Ztt+OPIsnQnSUyP6BZ6NjvggcuVH3Im/+TBAIUv3nyS6cJ2Vzp/qx80
	 B+N3EIJ6IApqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF9EEA7190
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660585368.23789.17430764497605495053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 111c89a52c10714e31f0f9688e26e313cb1d269e929c86bbf1b772a0450e7d9b
Date: Sun, 19 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776605853
