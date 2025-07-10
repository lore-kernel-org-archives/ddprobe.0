Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148282E4244
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752145795; cv=none; b=PlN1352vmnZ6CIrFYefwjGtQUjRCzqiG9l+Bc6iP7FiLlJnNf88kTLatRtkoAk22UEnpLFnfLwuO4o8vMCszmyPcpNbrhxJ4BnkFzRpsD4Ti/m2UuQgVJuoh9orjhvjUVt/t4fVfwRiiu4n8R+eQi//ZJARwnOURyGRT3Qnca1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752145795; c=relaxed/simple;
	bh=dS1zbp/Zo0q2ODDX24hs7V+KCL1CVq9Z3scpVn2SC34=;
	h=To:Subject:From:Message-Id:Date; b=AmVTKN8wkmKeW6/kzs+b15A9V+sHuWFI9M7qgiWg5Sq6LRMCPFm/wF3/K6TidKuzRDe59XbF9gdOU711dOPphWJHayGFuAOxOrZ1CuRlGmeV2kT+oXJCsy1eq+5dzKUMGWLgaQNuwFk0HJdtY0Y5t8aKyjGmMtK821HiqSNDzFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnIolpE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnIolpE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0DBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752145793;
	bh=dS1zbp/Zo0q2ODDX24hs7V+KCL1CVq9Z3scpVn2SC34=;
	h=To:Subject:From:Date:From;
	b=hnIolpE7euAjTiaL8wZo2yfy9glRmwFRPjAaUHmt+kqx4xk+VRtmOHYE1Ahe5Ox17
	 CZH8pOB4Gvb7o016dvA9QqoJZhG9rBDHqRkCNOTrLFtuHH4RoRQrt6qkP/lHSpPB5Z
	 BuwktyzYw0o9ngyR+CFi83/HHUUiVHCviED8mrvankYnYrIGYas7wSJNtoleZEwNpW
	 Hil3YoM5tJk9y7hZEk3Y9gvANU1MEkT8goZt1VRqotr26dinj/zHbiEudmBIZkxP5W
	 QRDspG+/GidS8FrvzUwW9PZuT/sPFbNuUqZqqCKRzYUIb5cFGgVAjk37aA+Oc/BBM8
	 MkjMn1J+K47Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B7C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214579357.31527.1441926012731835065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8d0321a0d7f0f57c89fd21e76c730d7a104cfa6a8b1604f6a4d5e554d2d599
Date: Thu, 10 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752145793
