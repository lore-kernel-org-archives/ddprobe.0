Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8414A2E35
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781711194; cv=none; b=ifj8MvbU63sdQmYjGz4UCZpNQUQXU7+C2ndnS6GUK5RaEej5Ikg1bCECxehTGi5mJ+8SIRH5KeEFAo3kItrF0Cm9QGZ/LUtenJ+bSZttKi2DzrTxBfM2itwbhVmRJyRQ0adPrHit3grMPAiFlmFmSlOoVPzyjK8tYLQzhxAMBSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781711194; c=relaxed/simple;
	bh=Fmc1DaBRy4gSSLr0F8hVeBxNmHeXhOoIA/Te+N2vaLA=;
	h=To:Subject:From:Message-Id:Date; b=G7PT9GRzj32G2icT1uc1Zdpst90F4IRtAzlmSfqypsGEFP6IAIs23T7nOwKOmc0q8Xt3F+VqN7+B2vbHh1+SC6HUGxxs2swaV8FuaRsU+XP3M1CSME+5Z6EHgK7BRDDcxZBdRYDV6OO//TvgOiQCpPaOZENblrvNC5h9LVZz37I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL4pDUtd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL4pDUtd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C60C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781711193;
	bh=Fmc1DaBRy4gSSLr0F8hVeBxNmHeXhOoIA/Te+N2vaLA=;
	h=To:Subject:From:Date:From;
	b=dL4pDUtd+DkUEyGn/kYWEax8FPvvAKEFzNpweyztgrusm+bakaOfuXFiUrfbWKQIq
	 vQC7HLfrByuweD9BANwTchVHzhCrzFemS/8BQBIRKrps1SSHzUoMByWxj6RwxBStX3
	 ntsSHNIYzY0XuywDTiAcpduiERLU0SPQQxO2W0w/IsacG/7fqClwWvMm8zO788o2bS
	 UrNRY5/eehU5jUdS1L/BJn5fT9VWQt7wM1BFTuYNs7H5Jnozzn2JN6O2D/Tl8z7qhi
	 fkkrynf0Qq3Y8MRP58hlmp9qRLhGX4Bd5nC83irL8y3y78gOyii7VNqrP7K5Gjg0mF
	 nu6jJ1vh1F3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A73CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171119372.17137.2652901734885182633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df408fda6a4d5c8ed4477a48061aed3488c223728aa51d5d48f8e7a274a16791
Date: Wed, 17 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781711193
