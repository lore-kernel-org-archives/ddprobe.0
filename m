Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5755817F377
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721210723; cv=none; b=QAlde6N+tT0xg3emdy2rIdH4uJ/qzuu5l4/CEUjVOvtoOqzLofz99ACv8dA59tuF+dA/B0q9zErB6o029tQ3u08BUHmANgUmHIAEJ2rYcfgNBG/ZZrHqb9RagGBHbT2NWyUBc0hvK5rnjyc3R//4/PAFG25x9owneYmSc91QAnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721210723; c=relaxed/simple;
	bh=RjxEbQw3QzDMsYp1dwu3zLMF3h+6cDxVzESCJQNW7V0=;
	h=To:Subject:From:Message-Id:Date; b=kDoDHfCQF5ArKzmMHSaAo79GbuhGIUoxxfoxbsaHfa3NNGeyU08RqCb4s4ltfGrPSvqTIxwAniEFwMJITC5ZgLXDakPPNCRGikKQjWP+5sccLLwCFcQpEh14nIhzAGGDlLQF2p6YcH8lzuHaUmAafRe2ww18uUUZLT9ZFTg//w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Abk6V5ov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Abk6V5ov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D810AC32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721210722;
	bh=RjxEbQw3QzDMsYp1dwu3zLMF3h+6cDxVzESCJQNW7V0=;
	h=To:Subject:From:Date:From;
	b=Abk6V5ovqKsI5/wSmhJKrx6sQUnzNs0NdLc0lUC0UgwmIe+fB8M+DYCpbCYuI4ENd
	 dGofktNaLemAA/GJhSwkm5JtMRKjr3YpH20icEuf9qWo7+GRqkRdazypusgYRWHvga
	 Nx3QIirWO0X7PIMxz3PRhpZzg5anpadVhPuiI/Sa7sZ9DURLS47DvBjLpiJWhsbJ7Y
	 48d+FfE+bPNeDaQabH2HiJuOGsnpGCkT/PQ3r8oGgEOznBFUpzoHE9X3oY5HIdcObr
	 tzy3wouIeKr/TMCU8QBIC29AiDZVH2lPN4wsFiYRlp6VUpNlSVfKQmY6lCKT+H9U7r
	 k0t3fttySCyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4055C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121072279.7198.4000097137681717207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50865099ec1cbdd34bce4765e430903509a1065ba33de6d23f03c265edc75953
Date: Wed, 17 Jul 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721210722
