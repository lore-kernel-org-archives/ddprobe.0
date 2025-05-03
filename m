Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D441748D
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746272994; cv=none; b=Zn2ch+HbmygJ9DQ646uWqVlr17iAZN35R6jOE2t2cC6sIjaLkpdUomVPq6BU8X44Koh0PN89TV2E4IjbcBYowU8Cv98Gi3kPXqIiODJQ67td6ji4wV8uyut7rK+uOCLJce+78BeoVsGKaWdmwU/d5j39NUn0IlLIjZNk4+dMWfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746272994; c=relaxed/simple;
	bh=z6gcr0gQ0wcFIEzinxeW6/eyY8RrrQ5g6i+Gc+RY0Mw=;
	h=To:Subject:From:Message-Id:Date; b=tasv1omo7nXU63jiZfH87hin7VNhlyaprwxHXS1/Trf6L5xF3WWWWkfF254tIx8ZmSCkHzoMsdz/5i3fGD22c69KjjgOklhC4ta7TnbOOqw8fHxTJt3c+U3ZomezVT/hBRLb9RGf5d0kyTjAEUJSuT2zC2M+cFpWWi753qW9Wi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U62fkXFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U62fkXFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0274C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746272993;
	bh=z6gcr0gQ0wcFIEzinxeW6/eyY8RrrQ5g6i+Gc+RY0Mw=;
	h=To:Subject:From:Date:From;
	b=U62fkXFbe/nmjNWpkQugoDs4ykiSoeZ56lMYcQgy3H3QcHzVQw1cJVgAdLA2xknrL
	 CQrVBnAzcRrtdr2ZMfIAkZ5qSP+PyfghQoqkZT8Dou4wi2NTikiY8sbBqTFnzZuCbD
	 NkYyUSuWbiB3uDlR6VJicZrvJLKnQURJuiBVXVgn5jLDdrxDEAhWn2TxPiTMNwIbsg
	 +VhkOg3t8Zfo2U4g2a8kvIRGv8HxgkXsWAzrbuPnKH3lvA6/bioh4Ht8rdABvIimFe
	 Qu0/q+XCzt7Jrgb2rWI3xd4EGuS5XY6HQNILkx7PsHLA3tFwmmavK6V/54EhYDj9cZ
	 WWSBUI2AVS46Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E24CC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627299357.22620.15165203149792631532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce02b267f42c6e4f75dea510902f48cae1241f15a69f7accad48c1393777f9b
Date: Sat, 03 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746272993
