Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211E52D6E58
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756423194; cv=none; b=dFiDNKFpcmM/fgU9RcJJOTRSm3aBV9KCBT9MUJullhWdpOEgnEot+WkE9zbX/ac0uQ9o5PXe/JvtGk3mjTUhS3+C60yIdCLqwbP/IlLO/keuqjkDxJBidzxmZt4fiOHnq2wnRfHF7KE5F7NkM6t/19cB6+DdMeudBod2y3P0RnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756423194; c=relaxed/simple;
	bh=WHKS9uK5hkD/k+aXtj5IFL9kPxGyYmuMkH8SlCNbqlY=;
	h=To:Subject:From:Message-Id:Date; b=MC5AE0De2HIZ/z3YEz7+M+EUQpQ6ImwH+CFeGeY17Pk3kWVrjvisSXXxQvM2wORZ3BYZl9e6w6cALLFjX6EJl53YPR/sLckojXQuv0uXPqkI8NmsxVZITQhrf6UAbRLiW8yIuA+JVuS4OSC7UaesrGcqL2zzy8a1cir/LFnNing=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6NsD6Q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6NsD6Q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1976C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756423193;
	bh=WHKS9uK5hkD/k+aXtj5IFL9kPxGyYmuMkH8SlCNbqlY=;
	h=To:Subject:From:Date:From;
	b=G6NsD6Q8PzMej9oheVV9rNKaXEXqwQW01ClbndBx7971rPHWXiHmqxvMADjPm5l2G
	 KXqyhHNYo7y7/Dv+q1/XEGABv8xQyoIVRyTaA9X7E0f7imYvo8TaJ0IWLCzSgSVVHx
	 epO7jPllax5pNb9UD+3E7UIhg3r+c1YAJqGDTAd0dvMd5DbJ4ph3VNuqU75H8D7ahs
	 ZawFELn44cEs7CJCCfr4tCus/b0rEx/c15Kyw/e1T3G6Mth6vQ6VWNXIInRGqHWSLE
	 eCXRNs1W+PbGOBan4TJJF5iKTZke8+4odPFNPcwoQJb7lJNTZMZWpjNA/LL993m45S
	 t0JhYTv5zLJig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92651CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642319357.32140.14826689616614921981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5195e7a4caf850794017439e9756fca437849cb28779505eb45637da16978f
Date: Thu, 28 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756423193
