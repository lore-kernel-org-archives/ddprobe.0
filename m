Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0395D2FF173
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761298794; cv=none; b=DqRAeGiHKH25P/b1UTqMW1f7jMj5LceXvfXbfba+njWOmcmfTqyqTjKx59XWVmJT8ORQPM+aonv809Nsz7Q/GGAml6nDxkXt1dqX/yv4aBFBoxe3aneTcaaye5p2LACBFCSS0XWTBmqhMcU+uBbSJeXSyLe+s2BoK4S9JC/NvKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761298794; c=relaxed/simple;
	bh=LnF5XnmqmMKimdQ7VrB5a5EvhETaAmMN8h5Vr+EqNmY=;
	h=To:Subject:From:Message-Id:Date; b=kCUZppkh+DBNkYRDNGLU/baAzfz28MUG7YllmNCvAosgNoSkZ/NBo1dpDO6gB3UOUACz9mKj3aSDr3sN8R7/M1sR22CvwE6Ko4NXiajpzYs6S57kJY95NnrRb07C9fS0bGsjLyofNfDUQPvXWE+eqAeyc57nmtNNOrJPGcMQ5NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM39H0LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM39H0LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761298793;
	bh=LnF5XnmqmMKimdQ7VrB5a5EvhETaAmMN8h5Vr+EqNmY=;
	h=To:Subject:From:Date:From;
	b=RM39H0LMj1ZHYUD6RsGlGLL7OYZGRAWJogd6cKXhsubmOfFvt8I1Arw50ZDtoKfVm
	 JH2n3UL4YZbKzMiV6FFypin9bxgBy3abP7OWAFpJPbRFCQdSV+XdNK2wlkmgAg8f/D
	 fB9WwV8VpRY178Kfxxf28GeTMQYW/roZNw8KjzV4IQj7JPbNmprgvT7L17IpAWUXAq
	 ObmAwCCV88t+JC4qZaQC02ReNUaLawsVzGIijCGTS4CDcukYsvXYsR5a408PLODj1J
	 r/XiRFCKfppCTlE+k6a/HKtSrKx/T6ORhh81QauviTweYvKLcJin6QThrfwlBNFwlq
	 ojhzjRz3qjHIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188BCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129879358.6001.2704572518137809530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cee10b6cfe8b561807cc5e2955c3899e1dfeecac3e57afab3fc7e05e11aa70
Date: Fri, 24 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761298793
