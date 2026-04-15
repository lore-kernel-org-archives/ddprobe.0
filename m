Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF33DE45D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776268054; cv=none; b=iwX+EQuTG9Lf2bRVH3nub2Lkg16XcinsZHCjd40z7fj6NWoGU78KbcJEsSkuB0ws2MlM2j3wfwnB4BZXVmkdGee/rQheiMKyY/3Y2q2o6xrfNLEGuJ3HU6LvPTkyJETBSt28QjRPxLYfXj7Ev8fTaK5+efbmYnzCo8PWb//fRMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776268054; c=relaxed/simple;
	bh=RVWmGsUE4a5bfreVdMoRCT8Ttu6ZUrLA3vxqZLoWj6I=;
	h=To:Subject:From:Message-Id:Date; b=lL9TPJGVKrUPt4k+ncXGTdU9gqcwei2KPj3PWHox6TC5c9Ccz6EQ5+IRc6EwfiqNOxhb0+1dB5DXrmgZMmV43/GNuXgzXPnN+agbT4K8TCrcnIjanF3b50xP/y5QkmjfC/GeL91eR2ZRAKlkZotbw2FDZWq7LrIbg6X/r6pyLi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2xo5MQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2xo5MQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5603C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776268053;
	bh=RVWmGsUE4a5bfreVdMoRCT8Ttu6ZUrLA3vxqZLoWj6I=;
	h=To:Subject:From:Date:From;
	b=E2xo5MQip87wAgm2GSJnYsfoXLaVdiNCor8uB5mYvanHDsKL6xh2exJvDwlMQ/WmW
	 Yz6mpCW1hic0or1q94r7/1prcZCK3BnDOWqULOyt5LU0j6KGgivQcXixX5WMvI3PNf
	 2GCF+JWDEBmStvthbMyP/uAPcbPKtJvW28TUZggU0ZEbyA7aDcMZlIH7NMFltYoKlb
	 zcGoi3wBa0CE2D9LPUbSNPGxoW8jFmUu5xQuwBg8tWh/qr0NlIstVzklvKjt/OV43L
	 Z0PhKOEQMudcqHSFXdKhTxlQzBGd+NIH04ubigtLQ2SnlSSx8gKdkhuRVJgrlg19rq
	 wf9bTZwWIxJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF7AF4384E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626805368.27380.457478102706412160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2786142a42c32eeb1fcc0bf8824687f07e5b0134a53eb83674acc808f93de6
Date: Wed, 15 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776268053
