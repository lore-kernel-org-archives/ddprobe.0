Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447033DCDA7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786985434; cv=none; b=XSaDORUCIaN1hn065XiQ2IO3MnHYWCX4zKKLe5I6DhZvM0+jF2cM0/XYbd1N3e3YL2faTq2hSUBfRZu1mPQjjPxBgCCYeqLbdZo0Pb4kLtFv/LEI5QHhYBvhoNDV4McMQRhS5DNtfYCnj0NbDOdFVN8Z7AFwyEZvbPtBVgBjH+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786985434; c=relaxed/simple;
	bh=OLwH2XzYmceTNW5Hhxnilf4p+orZ16dy4fY1KrPN5lU=;
	h=To:Subject:From:Message-Id:Date; b=VIuWqxdjUEB/C2UwGnjgMiMKoBZmDTUz6EMg9wy+LWsMAXHkU1ejY1Nmi80v5urPVygYDqi0qQhsWklozYcbnYeJak9grRDmhqpVEFak946Rq8q4alndcFQgrz+aNNzmkF3njAy/EDP0t2gsEC4bl+9gcHBCLRFLKEbo7c3ubHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ugt01338; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ugt01338"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C8FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786985433;
	bh=OLwH2XzYmceTNW5Hhxnilf4p+orZ16dy4fY1KrPN5lU=;
	h=To:Subject:From:Date:From;
	b=Ugt01338XzhjMLK36QZRM9IaPL4hJhWQoCeJsABfV64RIxX9PE3wB4qWB4MAe8WK1
	 RrkusKdU95nisPwYB6468r0LiYSpVZBvIiy6ZyEz6kABkpdjEyTEtKiUC+FBEG974Q
	 Cx0nMqsxf7Ktg0ZwAB0MrwpGRTMDezox73lcDpG4w85kajFaCUG2+UKCZeoOvcTVAP
	 ZD2gYoujndCXH2WNVcHUvc4vo8NlCY6sBrO+bxl+s8MSf4kN0RksjWdKOkh9LqnO5l
	 5TELPPtL7HsYSxs0XmcVcCTdV2gjU8Z9YsM3miDJmJQWnDgtcscl8qKCLaRVL4k8BV
	 Acgd70U+R3K8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E06C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698543370.5916.1251604820336831075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9585c3dd1d5df08d30f7b2a9e9bece7b76f9f763c0f530ba06b7b4855a7fda3c
Date: Mon, 17 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786985433
