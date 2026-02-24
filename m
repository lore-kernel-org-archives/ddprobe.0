Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2989427F195
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771954494; cv=none; b=RNsUbPpbOCBy81o46KouBPzMOSpDtimfCbmmuPT8JIb5vEVPrzHzya5uOkn8CHZiz0s1NV/csA4rXfSIceqAygUK5ge/EjELuZ1rN3vhQleG+eHR4+d/V4nKQKcSunJl6+/8zLlNMqySYvoY6NWuoGFxtMHStAjqcYlTn9o5py0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771954494; c=relaxed/simple;
	bh=PfnZeOatzFW4amywTRTlDWPsYLWth7shyyPhn8hF2ec=;
	h=To:Subject:From:Message-Id:Date; b=qEGAkiBl+8AFM/xD5G+A+6ZdlB+UjJ5Che1eXbi/7tUh76vSudb2XVhNkUnTJPOZ6mbw7BB9Evbjk9bjtjsfJtR2bT3SEnSrVRyQXLGa46LvxSBP76XyI5dGI5BHCNy9ZUnrlK4PJPzB79e0Zslzwaph6YtmtB5oIVzLIbZ5eZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFmxq9Rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFmxq9Rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9750C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771954493;
	bh=PfnZeOatzFW4amywTRTlDWPsYLWth7shyyPhn8hF2ec=;
	h=To:Subject:From:Date:From;
	b=NFmxq9RmtJOLQHjV0QsGlOIoEgLJsRZh6zng+HiKnUzRnHJ4cAevycE5Ppy7MgqaT
	 w2phN3/mCuZBUkHUmeZtt9VM2MreKTOGBP/5R0wuntZlkulFkMphCp2ksoHFvP1U/u
	 1cIyZOa6Sl3wffjhGsxPdiWQIYbN795awgBkZc/SuLOYE8ZArGSuZavF7vYuwcqwbP
	 DLise0AEntA/p7se87faIAD5qu9fClzRANKGZTOUC3we13QdNfiQvqe+QEqTvxdXPd
	 pk9pwg6Kpou7t19gKfm4Dxc+s5moJPoKllrjGBn3UTcijjHC2bWy/l6OwmWGf1M5Wg
	 1fm1GRYriCxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B9F4BB66
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195449358.18882.17789010345766095875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491c580a1d5618d93213cbfd7b01dedc1c6f7ac673378553225399c8f8582d49
Date: Tue, 24 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771954493
