Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C5B28373
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743144594; cv=none; b=cgrc2ty4MY7dopCaOnFXjuRSuWt77ZFSuoj2AwKEb9kjeUWSAISOZ/W50Jdbyu3lprJQ2jfgV3w4vqPMXDsSVHyGvHstFR3Zpz9UtzpFzuNDgkJ4bIHbMyy8cXKv5PPzcCGY9pTmTV+d+udXQoDEjkoHpxNARLr8J4mPQdtuCec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743144594; c=relaxed/simple;
	bh=lYvTz/sPyHk4D/QDIk2oufornHsF8bmV2liUnfP8Zck=;
	h=To:Subject:From:Message-Id:Date; b=KZDGFztiEPbUYrubRsoiJrMSeCABOH1pP+pCFSVe6K42dUxUk8KdyHOwWCgTAUN740vqG3vgq1Hc7yy5iYnT+mtRgMJuLVxdO8SQcJTe20InIgytUXngJMvXFlLeBJV59Ic3K8U6v9agsYsnOGNHWY3kadI2DoMmPI5g0QgSPZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aU+Ra+pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aU+Ra+pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A818BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743144593;
	bh=lYvTz/sPyHk4D/QDIk2oufornHsF8bmV2liUnfP8Zck=;
	h=To:Subject:From:Date:From;
	b=aU+Ra+pqWJ7WFVNw4bzXpgtKWpHBK87tv+VD3TH78fhYui30zBDlnA0nRemPdIdoo
	 DnaU7tsziGZrJ9Y3n5LeHS9FTtJ/8xtTPyPUVQzstRBHUWaa8i04Ff01Br5E2XvKK0
	 d1xU5QxnT5Qpw1RwOzNnKChmq8F1cQHSac0JQUyj5EE13hrChN+h8UfmMnXXB6j/yc
	 Rc6mdDMtqQyK+8YKYalxnp7OBaWZPYy/4miGaWShwJWjrKmlOaL9xc2vBdHdfuy4XE
	 pwhYe6k0/1iUeA88lfe3WFBA1Vuemvx4L6oSU5Urycgx72r7XKqrDC+AUEwUTTn+xU
	 cJN5WIPHMxYWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F2BC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314459360.23149.7990080971220432675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff146e0f914c382208db83ec5d4e64996151d82d3a858cafb2455e849f4193d
Date: Fri, 28 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743144593
