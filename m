Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3864278F59
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759706994; cv=none; b=feK35RDaMh4hU8DhkR5oqtzWbUeLLxH4L/4c7R/44BYEq8izz02MMeorNwIDKgsAA3hOk1JSbG6llY5z/Tc/rCvG5vOULKP8F0Y7K4c5EiTJKpNSpCxnphUnEPyLPpZzCc6Pg3ncG9Rq/gL8k3pbTltzTUdwP/qUDKjXIZZPIYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759706994; c=relaxed/simple;
	bh=5sUQsamsMx9dcoMfHisjzbql1NxvI4Dhm+FQWQr9mPY=;
	h=To:Subject:From:Message-Id:Date; b=lvDiIan6gO3ORWhdMPxC437offOmK4Mu3VQK5hq5r26jcgkGyNlOm23w7PlMf95QMT7Fi8FvoJaFf2eOaAOmvFnKDfbwHAe0G5HANcfccdtspDNBVv9Ed0q+i1bNN0cU/MX/OdZM1sJA9NN7IVfb/ShkllKblb7uJ16rXhzS00I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwFnGv0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwFnGv0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DD1C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759706993;
	bh=5sUQsamsMx9dcoMfHisjzbql1NxvI4Dhm+FQWQr9mPY=;
	h=To:Subject:From:Date:From;
	b=BwFnGv0YX+y0xwIixzBEqUrmr0GWUZg/uWFwBNEA1HyiIaPZiOs3n2OT1MZAtCNex
	 ke1/v+HfHUELOstIeyo+pLz5gUqyCz4/x6d3dz6mEMxfxY5pd7IdCUVQk6y1eD0eWw
	 GojlgkLbtr3l13eAxIeUEB9KBlZ/h9Tnrv1C7COhBbZi6B2l1zBD1Yv6PKZ6fX2eM+
	 2yiypBPhvPQhfMkteXFXEEdBKXxx7mmm87sPShhuYhgxDA5acxBUSR39lsa8UOUgJ4
	 rx2qG9142gM44QALxcddtbhbyTznv0JmHOBT1G688zTFxtTXmiA8A5BJBZPtchElyg
	 ePQBtDwrj3c6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B69CCA470
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970699358.29507.11945697678526839244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d88412bdd815f0dc7e39e09edc1d17fe642398bcb40d1fd5cbc916314f25c80
Date: Sun, 05 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759706993
