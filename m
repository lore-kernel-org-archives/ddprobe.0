Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2E930C35C
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780098814; cv=none; b=X47ySpCbIsTqJnMfKoliwm1A/OtKxS3Q3Tma0pV3/Tq8Cevwej+yR+YSJhcf5UWN3mmTg8UQo5m3doncyRHnfSZ4TZNZknsaKxUOHahg5GCVesFhBYgVflPoc8LaoTvaWZsDMhPB5tRP0kv6azLKHr/HIDDuK9dGG0BT/1BiePo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780098814; c=relaxed/simple;
	bh=xpNSDvcHPGP07QJNT7aKZ+szVw6iYNfc1xixdZ0ibu0=;
	h=To:Subject:From:Message-Id:Date; b=eRdhKucpmkb5atHT2SHjP7eaLljMRGV459vGCDZChYk6i66cIk4Q120Iupo3C/RFti9Nn+Vz/TM07OLCWVkN8GJKT0Bo8IubUfDCFs+tJ1IYK1ihWRcysBzmcEtCGO1EdcRkwnFRJj1U5Go1iFFO/tsBwGyHPtyR2T70AJKvNH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2jKYyxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2jKYyxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5584C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780098813;
	bh=xpNSDvcHPGP07QJNT7aKZ+szVw6iYNfc1xixdZ0ibu0=;
	h=To:Subject:From:Date:From;
	b=f2jKYyxCgWE0sxmZLO3KA1E26K1VRPwsfGDTNDFHyVYMnfGsmh3xnADNC7kvXaygC
	 aq8nDVO8jx70GEorSkZQlkO9evxfdXU0tEqVooSvbzNR4c3Fy+VE0K/iR/Q6fmaahj
	 5NH0kwwFkwN4zUBG7BCA8Qu7szFrSdikBo5zxctz46DXZ/0PkBn2tUwBWC/QNkBjc0
	 9kn4SaAIu+L3/ttDQPOl2W4tD7ZYByS196qFeVlYPq3Wq/DK3ax0y+19bbD3NRcDPj
	 RLoovIpvCwMft6DfDzdvh+eXWPZd7uSJiMWqu/De1C25PbLAW6FdwN/xFZjw+IclNR
	 3xWVShJ94xEqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC03CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 23:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009881368.16747.10120538154128746286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e8f4e26c46b72bb74cb51598d894bc31e97de34c0204fe69028a9a9ae0380d
Date: Fri, 29 May 2026 23:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780098813
