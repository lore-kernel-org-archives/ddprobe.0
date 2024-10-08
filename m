Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA5C184551
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728426955; cv=none; b=ufaL5g6pDVA4jAJ5g15rMlh5f0w+nKWunygpRDSfdmZGx0XvRbxDFlI8U4qSn0w6UvS505mMrzIqe5Y5bJePoc5QdQRAJB3Y5giBmFrymYFO7cqR1HGEQ5W/h5bAPOyU5PTW1vJsw/MGuXREmCyapFGDRu3XyQl5RgJCBFU+Q+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728426955; c=relaxed/simple;
	bh=DXRpPuJWzi/Io/ZTSGTD5/WbZlfq9tmtgae/qVxJtD4=;
	h=To:Subject:From:Message-Id:Date; b=MQnE5nOWP6H6iBWJGhRk2cfDt9de7X7TLCs3Zyaao49ga8CBxWph2woUjIrjJKMhvu0lLa1fPQhvCPZP32+ouo9ENitlmNhTCUK0h6RpE2S8Zx0zA047jZB2u2KpMtgQWpUYdJia81EgEtWQ/2PPfpLF//WAw8YVKMywOKgRaqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mez0LcQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mez0LcQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5AC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728426954;
	bh=DXRpPuJWzi/Io/ZTSGTD5/WbZlfq9tmtgae/qVxJtD4=;
	h=To:Subject:From:Date:From;
	b=Mez0LcQa4/rvEvCmtbEhFly1Ambixxo+2cLSW4UT1kdhZYeYAMpnH8NKg7ZrD5nTo
	 OnFXnw2g9HvqwV5Z5G/ttt4OpAwkMsHjB113aWRi+hpc5dfnrNxdDRYwQkaKtxseQr
	 hvV5LLP7V139X29VJdVTbKZExrHpLMpD4er5WskaSoYc5Gzuelcwe8g5sr9Ifl2syZ
	 zmLkMO2MX5srot6z40nDH16U1EvMJzOYpGmr9yZpCPrqCNz6fD2cQ9Y08DbkWL9FiS
	 l72z350iT3sD/am4jeFP99eF+7xOVv1AJGubIse3gU9tihKZAsxOckOBBEUJ0xsgHo
	 wE5gsqfoc+TiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E29CF042A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842695360.12366.3042595005954015487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c77fe3a638f7590d18c2a40bb148fd2b73977efea30490c050a90dcd6b586d
Date: Tue, 08 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728426953
