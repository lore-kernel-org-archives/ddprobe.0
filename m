Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F87333D50F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774989894; cv=none; b=enz5Xu27nFUA5wNuc4LV9cR5m/b0gEhwmmWLaNbaTTugX58uyjGlobPlEO3t09q3s+o6Nq+W+M5Bw/MirbX3jNe+Gv6qbVRMtOJqdryH1GYeHhYzUFi7I5TPKDu2M6jdJ6Aq23j6VFaLNJMZ+AQ+TXcPkYmsKPx+ultbmZE/OkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774989894; c=relaxed/simple;
	bh=kb+FTh0mTrm7WtTQVkq+i2wFrWNi0L3xdAM76Zdw6B4=;
	h=To:Subject:From:Message-Id:Date; b=ftnZ2o7t8z03WmRTWVq5xgI2BtD1Iby9SEJUqWJ1wb1Wz4xeDoKm57DWas/oqUbtbUvxijHIcU7XoOmeMCNSXUVdEegzDAEsjiIeBOh4ZdpRmzWA74PSYueGpyv+DY64TTWo+poAmGzlfdfRwm/6xHWzTk9cXV6eIBMIlz78CPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtckxoWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtckxoWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A72C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774989893;
	bh=kb+FTh0mTrm7WtTQVkq+i2wFrWNi0L3xdAM76Zdw6B4=;
	h=To:Subject:From:Date:From;
	b=rtckxoWve/OfBHRR5u/K933A1K8nmy05/bOrgSZmVYKARAYbWjVcsl0d/2TTtH2/C
	 qLHR8cU7B7Mh+4lL5ZiwpbX+KnQHWxzUnurD3jpUlEQ+EsyObc11D4JviplN9Cr9YT
	 zKK3cnzQGwcscemMkLb37o7kai3yilKJIgdOhp/Ihw57LWrThC2PCmCWe3zocWht5v
	 O7h36AJMv/8hDHkpEsj19indHIno1lMUNspitn79uizny3dMk4cFWb384AKTm1BsUb
	 mytxS8qZXapWONmj24qj5vcoHwkHQmcPeZCKBZxv4swkFd6MGdbKhlhL5enzaFWmbA
	 O/0mMPyQzq5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACD10F92FF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498989358.14183.12228338897423145076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906ea4dc5285328b00c072fa736ff2a4e328ea5544a31ee85f8ca3435424c315
Date: Tue, 31 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774989893
