Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4E61E283C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736221554; cv=none; b=DPIq7VQJgMhA6YZvxFRs/qHOmYn6INp2tWdmt/YD2VGHzOwgFma47tBoAKmlybP3INMXf50BQyAdBTt6+1xmlb5O4TEOgdNouHYOnMC5YgbmGA43v23SdhhnS/oqFw3lQnIEYEM1dkLKBVngO1eU9dCOS+AAh6f9833cY0gKIRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736221554; c=relaxed/simple;
	bh=VG/lsHwyQ/oYFBc7WGJLGIbllMaBPUuJ9aQUXbKH9BA=;
	h=To:Subject:From:Message-Id:Date; b=tL0ynNMiDtGBbCTygqgA18i9uH7FwoswG4pwkxxvIhVoXHwtgUVMP4NImwNXtNm40Jiw0e4VDjxGWqH/vsWe4X8T+tsRu86/jjmWD10XFrQ02rDsaHNuWpW0FG9No8PZkdvG2lWuA+u4Zoj+06iloQKCNiWNCGa6P42gxeimJZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6ngzHqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6ngzHqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0282C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736221553;
	bh=VG/lsHwyQ/oYFBc7WGJLGIbllMaBPUuJ9aQUXbKH9BA=;
	h=To:Subject:From:Date:From;
	b=U6ngzHqsMrx7rsf3ZS1kur4lgZedFiULyrli7SoWWHDhlbkE++FqgZsfIw1lH2UtM
	 cEHverxK9DTR5CktKPlqLLvN6a1i5+8Txf1PUhFSFTMWSQa/FMiOpqvBluYr+4KoSR
	 f6oj4yYb9JFNuRRCk2kcq2LuMoAeonRDHyvHAGuJYUKZvhHe9U1v0Nv4v7ult6Rnqj
	 IjWHE5IudISwgrtlaR4TOr5V6U8aZDTzogiS4d/oUSHJaU42vFvQyOR4U3yOuU6AhO
	 WA8v39eezAWFUlMl1TSZhjDEW12HzPG+YvJM4SwdC9L+LNDDKItMot4jBrzrCmjW42
	 uPrHIWKJadsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F742E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622155357.25362.3718555284592658510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6507d97341395fbe1b8781dafa61012120f412e55cbe9cc2beb967a6373539b
Date: Tue, 07 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736221553
