Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31396175D47
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732873554; cv=none; b=nAZlLwW/GP5GGmXYr1vhaoFleWoRfmvPh2FNNKmGva5wu5S3bVTBeHSdk3Is3OAfhWNuyp4KVfls18P6btRP9XHYHu0Jfwgxcp1E2f49tYPBHO0IIGxG/homAW1ca300LtxLozzlFAGVQpOgsog9sQUBs95YWQo0fXXlRiLWskU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732873554; c=relaxed/simple;
	bh=qV1vca9mpcyLxtNoYc8Ghp/41IUZ8nmwAaakRCwX0UI=;
	h=To:Subject:From:Message-Id:Date; b=AsLaMLRVj7WVsTj5A8OkF6IomOEDCkoHzBj5bE0GW0QbQKIY8YSqPDgfLRrs8uY3ipoPNXRewh6cZiZvHkc0xiXXqZ5YPjLaZxxfP/vbbWV+ZEsyhDSNNX7eBiksUFv2OkqtWNdkSVKFzUc0MozTnsU6ARbYuXp3ynXtgteNHvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbGVkAB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbGVkAB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA460C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732873553;
	bh=qV1vca9mpcyLxtNoYc8Ghp/41IUZ8nmwAaakRCwX0UI=;
	h=To:Subject:From:Date:From;
	b=PbGVkAB1qjnz2ota9p6Bnj3oFvBc2HTQuKXqxDopUiMhQR9kc9/SWkn+KtLCCJ4Fk
	 MnyuvCFWROfdZlilqJ/dnnazFWBlxluRQ+76Vs+zE51D8BEzE3MPRAWXIcv4469AIe
	 PQ5G4pqxFVNPBRyXvuJ7CKjM3YPOcSF3MWxLuazPvCPe13vZE7+J7+Qy1FwRcFmJ/x
	 qSAaBNEyvfYLOYRrEPTV+Qe+Qf4Pb1XHbIil80fZ6Tg6v8KEHXtluUI6cFuZ5y0ai9
	 Fu4a94zrxXQ6CsuOxHlRHeH+bMvzZVRS44vi7AFaXxiYnTIGpmwdAuNAFFfvV81c1s
	 HBKRLyinGDzcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C4D6EBEE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287355359.24892.10434344712918360371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf4ad7e08349514bccf07c3d4cb06e609b866a25732a02e210cc0a67a951214
Date: Fri, 29 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732873553
