Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6976255E2F
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 17:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739208954; cv=none; b=gdmxffdGi2LnWzQ5nDTofbrjydwCk6swNsyu2hAq2k91PNnfPUN0dXnFGnSSVJ1kWzv0z97EZtn6B+9D+7QNypWh6UIcZ4z10+6xuBQU9o8apXAUk6PBJxzVtKOdMCO6uz/waLB2TMFYfcFQEabjKGolT3M79yhFPjIJV9RT5ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739208954; c=relaxed/simple;
	bh=INIr+zAholHX3Wg11t0i2s31nzyHVCb/LAesqmLmmyc=;
	h=To:Subject:From:Message-Id:Date; b=S/xdI3d5tWep8X3/8rHhoq3g28pi6MaUIrhKibeUsPflGJMR/wg8Rq+TfL4a/43kuBodJ/XszoNeKQJNgWvEJNUmzsoIL2M9hUM927W9zKTZ0ueYu0HGJ3FWzqoe8pX5RmJd0lhUh18ock6eP9qHYQxCmOqgxJtei2D1d0BdrsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPmHw5Gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPmHw5Gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2135FC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 17:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739208954;
	bh=INIr+zAholHX3Wg11t0i2s31nzyHVCb/LAesqmLmmyc=;
	h=To:Subject:From:Date:From;
	b=XPmHw5GlH4yB5FHZ8BtMeWxa5ZOKBjSCu3efcA8NTUfpuPoU7K2JRagQgcIR9rzlV
	 n4+sOK1QoBa5khJ20WU1W+jB/Mkg4GVBujYLRbinWdD5o1BTum58r80COQi65KNAUy
	 Df9AF6GMc1zOLJPugA/qmvQ+unjlgjtYaEwgmDlNoh1dUyaTpeSPqsRbLPDUJVoQ11
	 M6kMhQ2z8GaV5KvFaz8VgVKr73d8YYH8DoAfXyacFiU/OngXeONXEiDCgQ9FYpv+TZ
	 vO6Bdv/Z2lerNry7dg81FSWh9GbdyjpFA65E2hAw6Kw8E99lR8t/069jM3ccnwBGDe
	 FeO/4sJx0xcDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BACC0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173920895377.17165.9060468675161055922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362ff5ce05e70818f62472a27732ad36e79b0714b75e11dcfbb8a0ea4648fbdf
Date: Mon, 10 Feb 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739208953
