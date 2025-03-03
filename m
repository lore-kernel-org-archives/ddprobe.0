Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB881C84A0
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741022334; cv=none; b=V2brbfHH2CI9exS+agNte8toKnvmDmMeVOCsZtOY+Y8nwnsLcLgMe6kmoDpDPit4wk4ON7Yk3FDuGo5u6mnlIzXjIRrCjoNb2nfV1iMfjxFPfanABuYJcpwqj5RUhW3zCpjIb+hZcr4miDT7xIkBdmr+AwBIiljM68ukjOnWOic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741022334; c=relaxed/simple;
	bh=SkpHsoTTxs8jemVYbTvokO3JoXx3bfNn6tPx9zP1SaY=;
	h=To:Subject:From:Message-Id:Date; b=fSYSaADhVfvQ5sAlnH0SZllhH6CTtW8jpGPnzVcfU5h2yHd95T0Xr98ycBpaIg/5O5BNugjQYMwyMrYbMUHdwVpcuaxxwcRZCAM7Erfw9rcCIZG/vrnw3xsM53djP9LoHeysxmL1V+6/P1CJuxVEe4Qgo6vDy6sXXEiCoNpmbtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BggXdnKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BggXdnKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA5C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741022333;
	bh=SkpHsoTTxs8jemVYbTvokO3JoXx3bfNn6tPx9zP1SaY=;
	h=To:Subject:From:Date:From;
	b=BggXdnKb4gxvzTEuXutWWEqSBW+BZnpt6Dor9oftnGjKSG44S9gmH/2RHhByasJna
	 C2NZjHKfofxmARYtIAXEEvZHGi494yw4r/C4LJRqsxpybXX5QDL3s9o4mB6zr6oQ/g
	 Zs8pls0toFvUk4X9v6RkhptIfge9OQFVGIxvTMt8ZWQo+f2rRo1CS/G7VNABIiwfOe
	 8Q8XOh/i+vUx07VAW2PdKbwQ5gd9adgQTceMuwgiYJ9p49V+5p8+rlVnCM8l9/lmiG
	 c7tkWVLSmqaWVDCLmhC8bwNCNXixp5T9h58IsqYnBI9wOQaVKZa0pXjwNEiRY41ECu
	 HpKpwllES2WnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C5C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102233359.10962.3016518844031221497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ec70a58da9f63292367ffefd0ad66990ccecfce0f6ec9bde13b3b183f92af3
Date: Mon, 03 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741022333
