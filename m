Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D961C8FBA
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759601994; cv=none; b=WYtPmkAINixo6ckNddJYL6ZgduoTS3KzlxSAzWJlAhkzkM8L3X/anWUYjduqtWKE2jAHnuucytfV0lEyW4B0uq6CMHR5K2ZYPwYtsadtGZxVPGJzYl/vsDmYz8J26aXx4u2fjDZK8k8SgIu1SXsQwtszI7ReNZ+rgurK38I690I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759601994; c=relaxed/simple;
	bh=OdttXM3j3aKyii28aiZD6LU1zUd7lTGLtQm1L60rgMQ=;
	h=To:Subject:From:Message-Id:Date; b=ZiMMALVXVRliFc2LvIMHNX4fgOceG/541qqficwH6AQn5FDRlciTofhHstO72uJP7RGsE4kq9YUeRCWNB8ew5a4Uv+u9UhCv2P/DUNplTa1ZP3iONAnFwNKeujY/asMgdXr/bKZ5CrE9+i0QjJx+UAZMA1dAoBZ/cXu006bRbRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB+skygV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB+skygV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28B7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759601993;
	bh=OdttXM3j3aKyii28aiZD6LU1zUd7lTGLtQm1L60rgMQ=;
	h=To:Subject:From:Date:From;
	b=GB+skygVGPaLZu5It3DhB5ktFUZv+5NwVred1kKh3gfZiTcD+uCPyFq8DL/4DD1Vy
	 hwA15+w8uF10H3sfprS+7bym9XhigWPPUROaSlZ9+SaVXWnk+qa1MO6I/NVQ258KS0
	 DyfPmuYK1Pv8v9llto+ZHfkT+lw9zpnnH0Dc0Txej3XRv3MX11vIXi9TwR5FlEimZX
	 q7STty8+p6KeEfw+IUn0D7/b+/0Tr6ORq2y2Dq6gXcH5CvyS5rxAXtUhP2k/IRdI+6
	 2JMgR9IbBHYFct0r+KlZTm4GCaNL6Krk/3fSSxhi/xOG3Szk5O3sv441Xm1I0dtcJI
	 MmxnqH7AUdqMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960199358.20105.16461015534345839843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b11584817bfb34fc4b2bf806bff1d51ba3b5b007eb046407911571e2e38d585
Date: Sat, 04 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759601993
