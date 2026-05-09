Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7DA2F8EAB
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778340454; cv=none; b=iYDYvC46HQAqEcaVn+KzO/52NJmBkzsKb0bOPOzl7PTrIYzd7vCY69QdaMUtRM9oIg/SdCftrZSQ1GatLMlGyi0uf4s4ThqX4yah9XZxHzp5MOMy+QsZRPCOLoGYcoFuQwSbMfF8/B4eS3STjk/M34NGK8CTZcM5UFkZmCqPGMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778340454; c=relaxed/simple;
	bh=iSw4hQFIEXLG4MbDuI88BFmfjagUWgHvt+LV5xjEtGY=;
	h=To:Subject:From:Message-Id:Date; b=hwK5TEVsRgwxacOBfdjpdeWbehWphXGt1uPck673qDEU6UtXx37PFSTydif0p6sLWsyYSlPt1hrSuW+rNG/jmBV7UmhA7/t1LCU8aP8N5uzy2+J0KSYLXTDhy/tGLPobVJhLEgUqZ6OzWiLYCXNWR/mybd21Ak9bdDyrGfrPQQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4656wzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4656wzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 113A8C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778340454;
	bh=iSw4hQFIEXLG4MbDuI88BFmfjagUWgHvt+LV5xjEtGY=;
	h=To:Subject:From:Date:From;
	b=J4656wzR8o8NBa3ecWKttywLk98CEwMky60ADJc00gGUVRVEe8w1IQRV6IkNpcvOP
	 PyvFQ5DDfv6KY2gn5cK1ulkoYh2t8v+ereh3Jo6WTPGuERm7L4Nx/zSSpWoc6REy5L
	 pUgGd7FOnCV7Qe80PYBCYt/3QnEu/r4V/xEESWHAt3q7RVzLrRqGqqnOquEALem9/q
	 wtIsgx8jcDAs4kIIoM76Fqru8vUjPYwXuwI32UByB1Cdwv0PNCrpX9zPQVu7J1L/sX
	 0pX5u8DhEd483PMzgiT9cKK/wiUgZY+aJMR+UnTM+GpUBiHAZxzBdNDid6uHOIVjQ+
	 E7Jyd9gRw8UYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA84CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834045380.18193.1835133157510736040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3818b7cb0bf01d78bc85eedbbaac0f93a1e1d27994c606b47cbc08ee73c0811b
Date: Sat, 09 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778340453
