Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5302137E301
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787430634; cv=none; b=AoERK0cT3BEtfY4wIrJ+8uD1zA6IgACugt27MCIlDpjvictGj7dRAv1oZiPk6yce4UZFUsEa0i3nbxJ9WwDSyJq4Eiz+jBmGKE/tDmxbB79aDlTD+cVRHRB4uOAVcmvUQS/QYtCu3BjNbdduj0h3EljTu1GQIIU0bwKagNDeoOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787430634; c=relaxed/simple;
	bh=IIrSdPaH53jbFDKhGRgZTnIByayEHtc0bcuirCia82Y=;
	h=To:Subject:From:Message-Id:Date; b=c+vfO2DwWAVSxh+GEo9aiKmaUY+3OHIDQMTnNnFepg5sCG29qSDZLuWO87a2H/tMjLq1aAuFo//dOsjWZIryD1HppeCvi4MbQVLrziDNo4E5QtnK6RQ8hZj2a+bSzwMGuBiSGRin7kfitg6PR2ybzNx+0yxph7Sez2C/N7gwDV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTXi8h52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTXi8h52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E94C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787430633;
	bh=IIrSdPaH53jbFDKhGRgZTnIByayEHtc0bcuirCia82Y=;
	h=To:Subject:From:Date:From;
	b=gTXi8h52l2lbK05ym53A4wouHvtmqNnzAprDZ6my30G35QqdG5JbY8t/Qa/QCAUSA
	 /OrJ+AMg4/xkevnsma8fjGI6t0YUwmr8ZPb3xNWvlIutC7khy1BdoWKE1UE96zwFD9
	 OUPNR1B2SsRNsBXqSF8Y2zboOVbBaLGL1sZI3kzeZyk0OMuvF5mCOT+gQnwc2OxQoJ
	 mCfK8YcjH+XQX+XVh+mukNKzXBSvQGjBQFqd5GmPvi+JKfuAaNa//lSdFf9gcnUxD5
	 iiocVAHfxLPuMNMn+u8MBy3lWy/Sw7GzMUp3GYHXc9lrymJPVyZcUr281AtcbzJb4W
	 qsvcy1neZ8t0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18B2C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743063369.26102.5940589386769189643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ddb16fca98101beec60e11db2d57e99a2cb722ad98cb469348c150e59abb5d
Date: Sat, 22 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787430633
