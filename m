Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E5720C004
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754979594; cv=none; b=bCJ5IDnyAenwuLad/ub5Q15YJX2y4u6WULOiRrcQE9MeUUPi5XqhNNNEFxuVrqB9bJcu2xZPA5lyu7w9nqmS032gS8M7wSBapl7EPd9xSAPsYSNRDXggR9rkLGmrc7N8U/c60EU4BwiAO4NuI4F321sTl45n0tOc7Hsjb3hHyEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754979594; c=relaxed/simple;
	bh=WGLlhIQWYZCb6vO4WxbbMLaIoVYYCmuPjrgX2hvSNCY=;
	h=To:Subject:From:Message-Id:Date; b=LhzozOn3oIXmVJZisvrMSe0d/Ayejq9XSbvKadv5LEkJxbTBqbrRtbY97OQqk65kPIgpHydSKkSEA+GATmuP1Ylpflziq+Hjdo/QmHNhNkS7EuGLSwRNEcnGpsrM6KsRihzr7MnSTYamgoEeVEPUY1CqAvIhGWeDD982rD0qJc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZnaEaJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZnaEaJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7CDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754979593;
	bh=WGLlhIQWYZCb6vO4WxbbMLaIoVYYCmuPjrgX2hvSNCY=;
	h=To:Subject:From:Date:From;
	b=rZnaEaJF3paX5qll/ohUYjnrA24mZEHWmuI1sdiB04ag5GR70vHrAExZwaQIumg4w
	 aXD9LaN3d909mh7+NIj6vWSbaVPmASEdobdIasQR50cTk4qVaY9DL1mNcSyLwD1r2w
	 OA4b52H1zi90Orw6B5Xluc7RCnMwQAAHYKJ5jpqVbiSpgbKLxD7Zyrpd8749+UoJLW
	 kgEaGwJdvags0VYyePvXhkeFZODVkbZYAwOYAssaEX/V8MXKQQ9uXLTuJZ9cLz1Jri
	 LHcIcq8+HA5wL1ihzhyREWZLb09DZgX0THBBkFDnUweQbNO1HX+Dx5ScWUdr95610K
	 jA3sR7RMisUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E99ACA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497959363.16052.4445664971054039120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b81e4eb861f6931632a62921020b071c881dfd83ba9a9743fb5305aab4b4981
Date: Tue, 12 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754979593
