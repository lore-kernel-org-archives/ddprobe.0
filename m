Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B3BF3164B4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785190834; cv=none; b=FN2InVHd8rahOtv4dqMJObU9ePlI/QGpDL5S+QdgeZvKZ0sYaEqFxdmA+9PiAb7CwDQGKd26bo94ld2HE57XSdqfde7pRiR+JpsSDv92Lvokzg+TrH9Lfq/ye5IwhcAgEzNM+xJydZwE5ctqBassszbp9w//GEmiY3JaSeXAaZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785190834; c=relaxed/simple;
	bh=Zve5ttpGd9xI6BQPQXU4jBHoxOYrL7jUV2lNNc5bs2o=;
	h=To:Subject:From:Message-Id:Date; b=GE3t0wFzlsBD39bwMv6AingDRpfenlZzlIyqy0Ry1HRx6W0hImwK/jr1aBbN/04MFvZoCGOTg9Zwxa7QQuFgQmu/gobqsQ/hcjP1VhjbGVp7ZSuERReIsQaiyUPyi/2mDFuHJbFnR9AlvLDIhmLmU3qeMywTlqKcFAm7ytTEjzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbm1nbKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbm1nbKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A99C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785190833;
	bh=Zve5ttpGd9xI6BQPQXU4jBHoxOYrL7jUV2lNNc5bs2o=;
	h=To:Subject:From:Date:From;
	b=nbm1nbKaiJF0F+Vx74qhxg92yUm12+XdWEvR+/Z7SGKsJXZyMd0+OvsuCLp6z89bS
	 Ucx0W6rZNIcu4vPxe6g7IdLnzRlWATkMZvWg+muF6v3glfPaLonlZsrVXcdLZhF0fh
	 AmOUNO8CniE9i23BU8j7batRhn0Cj1p17+EpR/fByxgLdJlRP0qCCbvneQpdx9aofk
	 HrGbI01dwhQxc34eSPAVRXhC27iFON/hCUcmoQKI8XZ1pgldJBAhusQipZVdaix7Wc
	 ngMvISlKJwv8odY31U5MxBPJGUnJcG50L/4MHzJWYKdFHnz/pE+qLFsqKgJ/8sSF9p
	 NuGb2gloNvtFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE598C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519083374.24711.2165525560344639086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5ad968a56d993d9acb8fa8145a8f8afa92c04e64a8b5c18b6dc83884ea10de
Date: Mon, 27 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785190833
