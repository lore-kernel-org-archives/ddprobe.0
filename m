Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355771C07C3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737618354; cv=none; b=l2SXW5KY1/O+/0pHTERsiQxfOzxfWsMzFyUWisPF4XaxCtVRN0EyTpvOjPHvVT0rZ5fb2GQA/2mZJdtVub9pZh1nWhgdRCxOjnF/6FpUxEolbY8LTlsMCpb65dPyqj2bZ4cL9tZ/Vmz2tO1WbmIqT8nfzXuq6/hUMRDFRXoFLa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737618354; c=relaxed/simple;
	bh=dT0xvFzV5wwDMMKivEcCex8Ax9PL0Dbc8k+IO00B8pM=;
	h=To:Subject:From:Message-Id:Date; b=RwyJqA6v8HIYrRyW1K6PmFvLAxdHVg3puRjjrU40uOFuy3jo20AignSNbIDjhJOCZP5gD4nQ3KPPx/HCH8NGbVgn3HxbopijqNF5IPeIwsqRnPCLG6v5V4K/bSP3r28lyHlNraaaQho642xR+mLHDPJ/FHtIJdRJznfK6WMhxQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpP77GLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpP77GLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC02FC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737618353;
	bh=dT0xvFzV5wwDMMKivEcCex8Ax9PL0Dbc8k+IO00B8pM=;
	h=To:Subject:From:Date:From;
	b=WpP77GLSJJzcZrp1dJTiTFqzij2t7/Cupw9+eMWLfFA2dC4bEOD1qVtyBPmwXA/Ll
	 aHTnldms/4JsQ+MtSNqsWY62FO6flxg+lLBn+zvAvM6gxXsFdb0H+4oHY5A92RbJGi
	 omCi6T+GrkRw5xYPK5TccZalJw6Z6g47xxCn09BLbxHnpc9vnqpK/ad2gPSsAlsZap
	 /wewQ3/NjjFNypD+z9EdKTlk/cS/JFMMPEUQa0h4MW17ISCUeO1l7U/YrRHsyqpUGK
	 +zMzPNTyC6Gca10D3y58hXTEYyqlpaaYuDSHSiLVkbK3D/O5ffAWuyxaD7bl284UxZ
	 wPYektlcT/Gzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C843C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173761835363.27270.57568593682839060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9026fe10424120729a0e752033da592961f17595a922d68ff024084e64bfcc2c
Date: Thu, 23 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737618353
