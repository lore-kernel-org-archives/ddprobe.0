Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A05E502A9
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712947763; cv=none; b=IzOwkYKDjuXXytBxq1IjT+s30PsI5A46bpAtNdTICWcdnVoNyVNNSJlJXonz1OhqNfjHIMcM/qKRWBccdxDQbRwBZvcGoL4z1K0VdhKzC5xgu1FcK5p6CVRctz7AS/PBkLsntxPcfSRlfVqPK/nBgdcI8TXwLQLGDtIGfcbJET0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712947763; c=relaxed/simple;
	bh=uhsNvujvrvPK42mIOHKiBTec5HQzDrSA7QPelxaaMIM=;
	h=To:Subject:From:Message-Id:Date; b=nOooXQqW1M8h/cGZh6gFmJmUUcuus+i46FQhl7YjK5DQWSIaraa1XXPPQ7BFYl1kfEbhWVFd985HQM76dRJzaBRWjWVYtk4R8zQphSsWpZJ1EypZ2+FEJfZ1wRZLnteGsKqjUvoakJlGcz6uFGUGpwTHgFPEVSdj1j0HLdkzes0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksOMrjPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksOMrjPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0D0C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712947762;
	bh=uhsNvujvrvPK42mIOHKiBTec5HQzDrSA7QPelxaaMIM=;
	h=To:Subject:From:Date:From;
	b=ksOMrjPtEouXGLxDUr1tKVQRZjP/zyCJA+LyVpR41Ml2xSN+2cm9+l+OgVDoTpWQH
	 QQhXv4+MmvqoNpZCUUtyc4yAY5ZDj9S50MY5QYBFqVKLCPkHlzo/T7L7zdD+sPZ90J
	 VzDYleDeKCDwP3EQ6qARXOMK2+4M9W+bZIfpJXCXhSR5H+bm/XXrkbxhJWwfb7PTkJ
	 ynOjvT7LiOHvmJM0nwslJmjvXGH9tuh2IOBaFyF6cvTAW/rA8+S7yBSAmy3YPR7DSl
	 +kG18CgIKCTAYAXkYdDW9ZN8sa4wA9S4ALxbb68L6KdUs2YxDlmRylJr27/u7lAOme
	 FOiwkUUmugFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC79CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294776282.4527.13461579523375712563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4590409625604a65808b805c951aec735243f4cb1002720882253dfbc19faeb
Date: Fri, 12 Apr 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712947762
