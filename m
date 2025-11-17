Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C471E00B4
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763358714; cv=none; b=AsMciA7o6bE97lWCxVun6hGXEl/CO6RhTdRtg2l7top/yjulX7yWkHw34NhSiEpuwRarSfm2mM6bj/ozynb+5TEAAM1DFHKtBitU51nKpWEwvKqK8ZTMtqFNhmm1BPlKGQ89/ka1gUky4FuU8BBjt9zYpR09iE9HruAH5HP7FdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763358714; c=relaxed/simple;
	bh=uieavHb42zAM3ytAuQIy9gafNy+hwpnGuvdOkfZQBEY=;
	h=To:Subject:From:Message-Id:Date; b=DgV6xoJZyeR+zRtwo1ay2k0LU3qwUF5BU39cFgS6hHOobblZj8Mkt9IGB4CMLcLUpfTC4ukbjKwD/6v+DtVgQ0csQM2IQcH9m24td09sB2pkOwXnEPVwDrodNgIIvo94Ac9q8VZaIVVisk0MXre1WvlzEgx45WOwNwOGuPyUt8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKlaf+ea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKlaf+ea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C3FC19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763358713;
	bh=uieavHb42zAM3ytAuQIy9gafNy+hwpnGuvdOkfZQBEY=;
	h=To:Subject:From:Date:From;
	b=WKlaf+ea2SMudZDXEjithhq1JFoVU1/T22Pcsp0Fq8aIbFdApHMfFqDL4KyAwjHNF
	 g0/vVW3uSZ2UAklf3B3FsGpWQnBWYhxDuB/aibKYAQtnuSL9LjDVyjSmnpSwo1eebq
	 3j04y5OuTQP5vHSm9eMLvPW8JOZLcZsl7QJU/ib9OYzLnT5+COtv3FTHKDjoFRmucL
	 1oF9xCszW/h5zWKFw9L9M/D1xWnBtQYi2IYOPiO2YzB25u4VA9j8QcmcortDX98s6P
	 GCuBqikRRTS10u+V77i2sD/WCEMbNliT+yjtjebBrOtQKAgZCufI8MBNfga5IeuF2s
	 wrQDoh4h8jvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98436CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335871361.9194.8373237459035685931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593e23cce7bd41c03e4c9a8eff11a442014245c8c4524337f245d22cfeb63a2d
Date: Mon, 17 Nov 2025 05:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763358713
