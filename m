Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DDA131721
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715262743; cv=none; b=tuKbYaf9yV6zNuHLkMicPISdzc+wLs6OjV7M3AEpLhS63r7pVfSipxKeeY7T3YfoZleZjmc1BNPvlaht+XYgEqwl1r9y5gkJzuO+ZmHfjsFBKiaDH1/Cbzu3ZHZRXv8BQRskrgwsoVWkGalxzu0jIGpLbmJShwa3WyJ3N+A8wGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715262743; c=relaxed/simple;
	bh=SMPDvko2Hk7EoHy8PVa/G2pBxpEi2f95GB+N0DuEfQ8=;
	h=To:Subject:From:Message-Id:Date; b=q+p9gJ/oS54e0Cytt76KMzRQ860RZoHPycusBSy+gm/CPcPAQR262qxi93im5d+T6OG9FPu3+BXsMd46sqM1fcYR55hx9eoqMmXnoCn/xe5iQy4LrFuLnfsQutwNCugbiqYRuoNdQtX/029HYKvxljsqZ4fwBMiEkgbZaxwAuSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYe++Fuf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYe++Fuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E063AC116B1
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715262742;
	bh=SMPDvko2Hk7EoHy8PVa/G2pBxpEi2f95GB+N0DuEfQ8=;
	h=To:Subject:From:Date:From;
	b=GYe++Fuf08iVofHDpq/1+c6bFiB6uxOVf92cSHzZf5UW9pEbxW+jgnKA/G+kyagaa
	 YRPRwNkHi75BsjepAK6kPQSU49k0rwzeHd0QdRbrUuj9uSvBnTfOWbItZDXazsPmka
	 CVXQQ+R2S0C5vjPizDikUZRcS/8AbztGQglGuaSmKv/8Ls+lpXCJK8iqRGPB6F3J30
	 FClPy0gdQ0le4u91j9ON4vMNgrZrX0/HO9brREsjfRNopJzHlstSkh7d52YnQGWDTw
	 FpyaAUMl+YIVw9F5EfVXXFL5SEvRmzZTkmruTBpclWuLCjPmupGs6muhlPTMdhxJs5
	 2aHKClWMz3spQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D169BC10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171526274284.20608.5318798559470873042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2c51d0b723278b5209e63643617a36e858e8e297b758103c653a5e7e7ad185
Date: Thu, 09 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715262742
