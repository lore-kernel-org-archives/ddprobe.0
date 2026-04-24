Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1670E35C19D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777015654; cv=none; b=aT4FmtU9qUBXEhBarUGMlRpL2fyHxAR7nHIDVEQzLy7TWWkDIozvkobU7KJn2+nEXmv/E0plOqLLERqSkI/ms3RmRIaOO3y926OUlZzmikmM3b7DrOXFfD9N+cl+uRObc6dT0klo5DRGuGT+nK95BgdW/sDw/Kb5DFI/V0XXxO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777015654; c=relaxed/simple;
	bh=XH0abQZUXtm2nVVSWVILRDhy9KCGrgxXsy13V2+M43s=;
	h=To:Subject:From:Message-Id:Date; b=MM95cxLxI8Wj3Fgf8jPd3AitphMZni8kPT1BlYO0FaNd0gzgp2nPVGTQnQyeGG0FAjs0apWXCO3x9+OO42aOOrkoTRuy+i0JcoAl0kCafWsyi9FNDgJjTD3Za+itHG6LNMC7rdtKvp9OJ0BltImN1nOPAISLPrPomTALi/JMk/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMY95JDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMY95JDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9214C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777015653;
	bh=XH0abQZUXtm2nVVSWVILRDhy9KCGrgxXsy13V2+M43s=;
	h=To:Subject:From:Date:From;
	b=eMY95JDleKifESCGgCYe6/xi4Nywr1ibkip85YhkbpraperOaMJ4P3a/ekJJtGgwd
	 XpF2XU86x7kDGsphmPw/7MyOR0dItQI4eNMV9dff1B1UqMET2FMjVrfOaG47GQNmnu
	 lUlrUJfhsPJtrA4p7Y+qJcg+5pHVwv4lrPIFvbI9mQC0YiDn4uMzptkDAspurKP8xj
	 a/RBXWhRM4ib6/2/6xv/fYUyWK6wYeugHboCd804+uIHbWzihDUkF49Inn9iqj4kts
	 RgU+zaj+XIHmpxueuJDepWHKz5aU/gyFBNAIcn8HpCk1/AQFc9sLybjGsVoMXmg9A6
	 YjNDMJ1Zf64WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA699FB44C4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701565368.11523.9582266384650053650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b631d844d51add1dda354e3addb05a09773d252c0f54e05e75467743195728
Date: Fri, 24 Apr 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777015653
