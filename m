Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D81A23AD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738868154; cv=none; b=FyZboCYcosMp5Ddh3leaiO8qa14IbPfrQSR6K/BzHP/nxW1JgowOtqS8BbENiUN+ii8FgaVUR/A80LW++KujsQ/EDJ11dblW00dEflIEj0bAQARpRnwphUOgd069dlaLFvIlSKkGkaVA40augfxzEotwJoZdJQSp3n2wvhf4dJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738868154; c=relaxed/simple;
	bh=8BwHrjbwYUovTLmDvOWEWBFc/lAhgN/eVvXJ4E3uZYM=;
	h=To:Subject:From:Message-Id:Date; b=i3xqMtZbxqLSP91zgK7iA5l197fLZuhGXBcrOAEn45GVN0OGe//tVeqbUQPdtZ77n49XPIwflrhPoVtqLXDba/Ym4zFZ1lGp/W5ThqxuIiZ+t70vpWn9jNrkKctVjURbA4zDFkI9LAQ4Dg4tWHnIXvrEQYG1UDx8eJfnxIqjd/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AN5XGVfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AN5XGVfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD7C1C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738868153;
	bh=8BwHrjbwYUovTLmDvOWEWBFc/lAhgN/eVvXJ4E3uZYM=;
	h=To:Subject:From:Date:From;
	b=AN5XGVfbU3lzMsFnCJ+UqNvEwGcnCOkgUJNvR6AgUXDiLEe9bT8nouye9SUDhhro7
	 I1/znoRJlBORLpA3op7kvqYPR/7bHmsbAo0bWC9mPligeU3D9U/vbMeZhsntI5DAOY
	 nMon0qrZEO+ULOHv5wOKI5jDxpYx2eGCEHmc3R/WNLfK/S70PUt+2/5T0cxSfjoCaE
	 urlQsqlakYWe+g7geW7AeEBqv7kT3cUyx6eVDbGntQdAmpkwHfERalShIhHtaLngBW
	 8Ca2422rwAsl3Simlh/qsa+VoctXn3g+oUWrANLDysBfxBErJMV7Q2ULD6InkfGo8G
	 iAhcsEcf6h2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1678C0219C
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886815364.20377.2317502501022229698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85cb8e4e9520dcf2af2ee2e24b4970f0d70dbd3445ba88243d40f7e79c1a02f
Date: Thu, 06 Feb 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738868153
