Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7EEAC7
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746508794; cv=none; b=mR48GgZFLlgkIvPFIFIPQhSJQVXfqdnT4mXbWmRV+w7NTaf7NAtkzomtTmN6ZFrvJHbVmQMOaSIm62TG7LPwdKdLDvTqYf8+M2O2KfIeh4FI/MmnNwPF64NPp/kfBLZVMjvogKKgtIlnB2yk24DLuBH/upnwXjCxNtQ91Lq8k3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746508794; c=relaxed/simple;
	bh=vB+zEVCLRypoO6wJiLDvZnhh1+DT7kwyj3YS1g4hCqo=;
	h=To:Subject:From:Message-Id:Date; b=awOttaOuV7J8Ptzj4kkIuC8EJ5VpyuXmuTOLQ5hu8EKb1iGsURF1EnCziAW9/e4PXW48c+fNtlx087WdILzQn0clSFTLdWNcMeWismmMUFl+asaEugVHki9CqDvATiM/N7/Kxg3wdsjkoDRKhz7btaxmivcNBw/QiJBzoVRdqQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyGbbj3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyGbbj3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746508793;
	bh=vB+zEVCLRypoO6wJiLDvZnhh1+DT7kwyj3YS1g4hCqo=;
	h=To:Subject:From:Date:From;
	b=UyGbbj3d+LuIsppGH5HjKLu6wZg+oPyyljJOgqGphDNHfSfqmZZ32eE+kf5kJNHAR
	 h86KsbKiWpTR3HDiWQk8KbFZeIgDNXbLEDtQSjXIzHcQFlzC/0gXkouyl1xd2bTWun
	 mxmmi/tzkVPkh8CGwx+Zpl11ZgdocaYcgM1Ej/u4YwuaPj8or885KMSNUNQqnoMfsI
	 z8FwhTMv50JR4TwLWXAxRSXaO+08MMyHMav71y0qBd9giwse5V5pmNgwqOQ7/Y+6nJ
	 9zfpYVykA0G6siLVSLV4Jqbpr5v2O1N+RD5DIpchH1yOXjZduvcdSDB3vjJaMq2wvc
	 rmQgim/mO4N2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA38C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650879357.26753.16115477697129177720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e25cec63ba9b5134873b1c29da2e1ad7c9a80a61622c71f64ddb16348d9b6d
Date: Tue, 06 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746508793
