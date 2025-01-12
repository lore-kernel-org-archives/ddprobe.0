Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B6C1B78F3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736698554; cv=none; b=JyZdTdvYqAK8CoEPxil3doVUXk9ilYzU4RfLSSiBMg9Kveou15P2TSsAFlQaHP1RWQmxVX2YVlIXFOZV14zrQgFWllIdolIjrW+k1QWOCCB6M3jZIyH1+pBtemzgjXFOUWmM3xUwqymRSqzEmNTKjUoGmtZtVbl+Q1fCRFTdvAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736698554; c=relaxed/simple;
	bh=HN8tBcRSjbqB2llN9iWXbFGtGPCmHuk6FL+C537RW4g=;
	h=To:Subject:From:Message-Id:Date; b=GF3I1WSPbBr20ak88DbAiARmH0dzV3W525WWjQlL3Qs4qZ/JcdJXvPt10aMrI3t/dW3jlT3mWL4tcQenTxvASpnDQuokN+Ocxnb85Km54udUTRREbzZ0RfpNeu61X5fBRw1VXvR3EnXVZSbqOnfLBEmcmc2eYwwQ/qKsTNYCy3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQj884Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQj884Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA161C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736698553;
	bh=HN8tBcRSjbqB2llN9iWXbFGtGPCmHuk6FL+C537RW4g=;
	h=To:Subject:From:Date:From;
	b=dQj884QoNYmsUfr/LuYyN8oxnC9yRMEDdg1si1ynYI8MrwMlqQD/vKcoToKVH5amD
	 Mb0fYQhVKUCn/4Lq0koteTDXOTqteub7FwZsxRtR43PmemEJPIIogvje28MpnzmLFe
	 fY2AefdGJuqW3FL991L6J1ruldy5hZfq+/1Nlp++h1hks2qqtaB+yaaF5V8hGtpzKR
	 fCH293I0PAb4Ix8Ialom12gDC0dAevNiyI+9LXilEj8az7vFWp9+0+OEkL5juuJff/
	 1OMc2fHs4MhCv6VjzypWm9WEyNb/U/Qa4Dh282dyz2BXj/l4fnn/NpD+pKZHReDwBj
	 nBiWC+QUIsUEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A0E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669855360.30456.3084201537142376490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860cbdf21e96bea273fd04fb57851bea61cc2b0185fa19df8b15c315a8fc0c17
Date: Sun, 12 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736698553
