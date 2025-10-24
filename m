Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD932F99A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761296995; cv=none; b=etY+Gp7bdEe7Z7EG2aWRchMaVPRWVUXA5to3Jlr8b+Ead/jovpoXO3b5O9RsGlvOgAeR12gwK7bMxfa+MH8lqiS2wdtJtlPLo9vTUj5JdE5DMlErxyXpol3bxQHHghWaShjbvGXxmHc99JnJ3zqMnky9w1cYUKaFh9RNMn/SQfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761296995; c=relaxed/simple;
	bh=UGf2lcVSYDkWM5IruP8+LtsLB7SJ/eZt7g9upFj/YWA=;
	h=To:Subject:From:Message-Id:Date; b=fFuwVro4Gn/yJhpwCj69wxJdxRqJDNeXhvZWH6KUYnhfO6vG8OLc+zPDyjuneAwfbnlk0avQeiB7Rnm6EH5kX5EpdSumSvJcSM2+CtlMiZRi8AbkkPCOSI/APCHFPNkAjoAeIvjVJuhTw6575e12hxJFVMcR8CVQ5GK9dbQsbps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX1M2QAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX1M2QAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F41C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761296994;
	bh=UGf2lcVSYDkWM5IruP8+LtsLB7SJ/eZt7g9upFj/YWA=;
	h=To:Subject:From:Date:From;
	b=dX1M2QAmelKo10QX9x5Fo5Wb/E5i5Cl/L9aACd9MP/KOP8DJVLObUmVi1U4DDnKOU
	 byem6xMunPg2iESQPnJupEaNBEtXKW6gxoviPxvrq8Wi68ANNdY7LHhYsve8LTN7F4
	 lzq2wZ7kZWrX5Ig6DAh8R9ffpP9xFRZtiv97Y6Jes0GhB0iAIA2prYwoJuUk0+koZj
	 IcmKcQiFwYJtLk//j0eeuWjcGRJpsWtuBM0Z2Uiej7dEyLXYQmI9r1I24dzi7qLx8m
	 LmSt1LAhLb+uIz16U5nt4PV00gW/7eZtY6sUf0JrUv+B9YZ4wTWe5Zl5a9ikMppgxn
	 xfrau5fVHrc/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F687CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129699358.5900.12055461271973227264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58321fec787f1c673ce8fa2e5daa2df7a8115ba0042a9050458f806b2e2668db
Date: Fri, 24 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761296993
