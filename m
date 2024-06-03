Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BBF631
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717379123; cv=none; b=tNEW044NHDLRGouYm3joZK9WOJJKvbhK+fqatKphIB4Xk2TfW/l8E2CakbtXWiRubRXiUdvA5HDGRzjMeUvOyBLrHm8Jl8Hwo4ID4/40ChSAV1xnBcRr4bqqAvVdZw0JsnTDCqpoflIJTq9lcd6j/KcBQEPgG29pwpdZgt6cqAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717379123; c=relaxed/simple;
	bh=Vn34cA+kwOPHmeIXlFPBriiKwsf+p8QxNn43znQdxhg=;
	h=To:Subject:From:Message-Id:Date; b=Lg97LgFRMaqS+wfMGxVHz/xghgdnoKcjfkWs1buuSVpjJt4C0p35A3zN4iCRorML2uN+7oPu5eQkN+HLI3cSZOl2rAAZcO5JIbPhHT1vEDu9mheNpaePB18uYlBCoOKTtsnxAxsHrGWwaY2ag/92DSoMaFpo4GFIcxtI78OUNos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CphibLUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CphibLUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ADFC2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717379122;
	bh=Vn34cA+kwOPHmeIXlFPBriiKwsf+p8QxNn43znQdxhg=;
	h=To:Subject:From:Date:From;
	b=CphibLUlVhaFCSv5XSm9bQeBYDtHEFHg/+J8GF2wYup+e88VAqmgXGdjENyUrjTNN
	 dBG1mCE1QMJTEpMdoUnzuKBabp2W1wh7hfICFzN8q9jgsCawOxKKYwhND+yChGTpPF
	 i8cBlHt2JeW9VV1h3GAJOPCUjVhoQWdJKWtW5MyZ0Z9HQJCHdN7YgMNc8ezVixjilK
	 s1mtm/FWqGXEaNxoGSfRfhc/XE+/4oetrTMTZjUgHT7LCsXsci6Hlu0/pZzU7ruGfO
	 qahyChBwpvbFKjcodxeXMHgcMBcv9a68XWZ3I2cy3D3DT10Shxtp2lfSAP9K8BGg/R
	 lZRj6W+GejnMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34CBC25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 01:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171737912277.2277.18005647121639273727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc195252506ee23cfe016284a49af6d4aa13b11cecd892ad438f1d9a457619db
Date: Mon, 03 Jun 2024 01:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717379122
