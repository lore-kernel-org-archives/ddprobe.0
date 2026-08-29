Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7D41E260C
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787986234; cv=none; b=AIHzbCdxYucmicSvsFP+MtUMZ6LxHoGfHbLW6epsedBKfOfldOfK5GLdiC4zoL1jfeb+PjKTi+qtFCdxDqMiZdMOaU7YbJZgWtQkqdhvhr3HyVUs8oHA7rRvI+QfkeW/SbT4LvPzpL5meEHtv4S67s4DwB28Quip51AvOQlI/P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787986234; c=relaxed/simple;
	bh=p+K7RBTBemmbtdJFzCOWWIa8ZrqHJ9LtYW+EvPf4jB8=;
	h=To:Subject:From:Message-Id:Date; b=bcNracNZMKcoxeX1Hch9XTGWhE64Tgxtff37TbS5FagisnyQWSJ5oawmOD17P85+Ml7CIrygNVt8k4R29yjhHf8xr4+pLbiEHnufgaQ0oBZdVMe1pmTWBvhcTYqgupHnYY8wfggSTBVANI5XJwIc3+yGpVDAzpYZHVr+ahtm+YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8mn1Bo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8mn1Bo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82BBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787986233;
	bh=p+K7RBTBemmbtdJFzCOWWIa8ZrqHJ9LtYW+EvPf4jB8=;
	h=To:Subject:From:Date:From;
	b=n8mn1Bo0JFNhvlNaSMpSsKt2AmSKPjFZoA8d+9NIvG2oJhowOvNA+0v81O11coFM/
	 +L7Wfm/qbNYc2+gHhKdMXT3NuqL2wB+l9xg001IXSFc7MUnA6ZQEzRNI3McUeO085r
	 1RbRgN59SOx4to2MebaI2GuxPxSVGqBpVDWQZ3IPhSgpo+pyBZHYAbGOApV21hKpbs
	 7HlxButLyZuuocyf++biKtphoo5Y1RoDocJEX593THaTstV4Ru4oeBzmVhZUMbptAO
	 qIuhavbQpXRP5W5MjURHpKrwfCokXI9XxcD5rpzEonGFBLWflkY5ONk5hWRZq5OmwH
	 j2zag1gaJMjsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE37C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798623368.7936.4734412559638479355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1c8092ab4ba311384e86cfcc5ef32bfc92a57016b1b41f3190d0a9c00e98b2
Date: Sat, 29 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787986233
