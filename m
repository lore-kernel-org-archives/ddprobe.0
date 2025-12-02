Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E22288F7
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764676374; cv=none; b=Hml2/BejD7hMyAHm7o3Yx28frhXczt5+e03U8u7Yonu8LYlXyPntYsr8NxXWzS/xZVK2cd5DTXigS4CedyfrxeeUy5sOkJG55fiQRlTtYY7RR3b8efmo4pH4l0KEjUH5fRdkEhm4UfQzQpTTleVvFNwMFYBCXrB/fQEX+VOYsOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764676374; c=relaxed/simple;
	bh=fRTbcMxHQA+caSnESM8ENthwz4UZjbmLrNfoazAlKpA=;
	h=To:Subject:From:Message-Id:Date; b=jsD9gSv+t80M8jMFqCjPAV46ajNn5xzeNUzY7EkZ3bRQfdDZ3HQCT6rIX6nJYR8yBDGM6m7B6SU8AhJ5hvXQycnSyWD7qsKPt3pTDSw38LloyHCgs8haFOatGgwxBxoYJ0kawUc78vjJUhYzro8yTy81hL/6hol34CGxmHTpz20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbCzwUux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbCzwUux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE12C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764676373;
	bh=fRTbcMxHQA+caSnESM8ENthwz4UZjbmLrNfoazAlKpA=;
	h=To:Subject:From:Date:From;
	b=NbCzwUux8KemDgu7WAc61ZaQUCbFom+oz5WwUv7Uo52nH7sY7fw1ncAng0vF1SRyz
	 bnXeU0suWmau7W6nrIGwn3xmdIRNDkdQjsuDnWi+GxJZ2qyYfOaJekekIX401yNsIY
	 OxISUoYGQyuqAlgcsx/rPxS4kH5Jl5RzE5WvBdeavJx0BDVtgzRN9JDWMW/JMJfoiy
	 wmnfyienyRKzvGsGexQUFeum9jUM56Js1oW5G359C6GT7zIeZQ92wwNENeInqVvXwa
	 Rxr9nv+JEAOyW2lZccGLVdTshIMYpdUnTLP8ESdgP76MesO++y8YcenI5lB6QvXkZ5
	 Pkwmq24pafBqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD16CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467637362.15640.12412984602907756869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09428fab7e14926fe9bdd0fdd976175bf96a5c5123e51dae9a39bd2ca6159545
Date: Tue, 02 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764676373
