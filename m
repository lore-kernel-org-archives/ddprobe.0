Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A595935966
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791462034; cv=none; b=qfWoInjc4moBU+b+ECOv/qbhdiJ/sQalZKGZ1aU4diy0ZFBLx+Lp+DpSxci9ljFvsX84qZjTqQTGlect+ftNLLiqOqDXQIxZ3CaFqjoBZQr4N5q4mGm4u9SWBm4N0HZ0S625/uOq5R7nFQvIKYTLMKjfCRyrS13u0N7jtAal+oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791462034; c=relaxed/simple;
	bh=OPCQKb0HdrK8H7Au6YXmnISNN9jqkooovm4C6D1771g=;
	h=To:Subject:From:Message-Id:Date; b=Puyhv5Z4N6yS/ghSZ8YDdmX6rDrVId3qBCIgH87Jtpu2Wa6zg1AeyfqZPOQaSU59Y17MtBxNdpOBc8YueEW4cb33uN6AXtAOPDKBeteEY309Xgl7R42oEJK0D/IQQQbd2sPO2dp254xtKu1//TI3MQOVLkcNNk9jw2GAnBKokJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQSrRh04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQSrRh04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2E3C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791462033;
	bh=OPCQKb0HdrK8H7Au6YXmnISNN9jqkooovm4C6D1771g=;
	h=To:Subject:From:Date:From;
	b=uQSrRh04h23bKNVHoGfEMmh6wAYx5dz3iQlzDSv87IBoAWUglJA7bmmCkl+bUqVxP
	 2JaKZVOP1TYccJ/qG6v8LPMeo0X6Qz0KmozNrBajHuh4A9RTqTevchLCvWvUvnpVMn
	 Y3crKWmZBH+ZSTtbF+OLwtePugq5Nnpha3ecXbp9B62QU5t7nqwZSaEDmdMuwJ7/Zn
	 2IDafRzOy4D5MYmdlCH8SX1k0kBQS75FNkxzoVtv5edLYfnowVqanj78JtHvKTlpPS
	 4aDASmP5JO+FcrZjQnboV51NMFDryoIgovKUAVs4S38OlItuSw2DliEZfaXiieJCHG
	 jvRpvvVgvE7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7482CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146203373.5811.642926001117302998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b38ab7a4744bc65cf7e5f4bc1b9b7dfcaffa31e12fe664c58173fc00821fe10
Date: Thu, 08 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791462033
