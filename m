Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14C737A494
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788907235; cv=none; b=g4mm9jU6Cte8/qsBcKXZPSG4BZ8SzsBLzxVWRnysa1vgBeFWwPYJ8aC5/tM8MOU8uSKDoka25K4k9pUQjex5loUUTj5dUFddoWE7/f0ZBS8lQ1VDiyRPHa3XAn1tzD6pvXgId5qowG4+zuldXvwgH0c/ZMBTLNoRFB7BCk2qEzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788907235; c=relaxed/simple;
	bh=dU1i+5KR7AIcwk1+dN2azAddFxLqMpYiw1GSWpNfzh4=;
	h=To:Subject:From:Message-Id:Date; b=rKtiOsp4r/EHrDXdAdphJ1UMacQCKPtYSxoEMdbJPjWAat6tydXZ08GEt5QlEeQ/v+ZQstEf6anYN+cHRVkmBUNDKuLR5dO8UZTGzrI7Rr/V+mQaM4YULfeINnW0fz8gfz6c8JvK6V0SmSzNH0BHe+BHnYPRx8zLRMvhtXM5l3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRShrLPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRShrLPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2418C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788907233;
	bh=dU1i+5KR7AIcwk1+dN2azAddFxLqMpYiw1GSWpNfzh4=;
	h=To:Subject:From:Date:From;
	b=DRShrLPhH4R3WiCf205entnctHVX8Ly5dTtDTeEzeXpbAhAmauqneJQBPYTAMpWMY
	 4bnEWCCmU+PH+sDKdt4BuD5zjSRHxlOkBSayODSzEroU2tobp39d4HRmdg6f+Xg7B6
	 XAtOvTiGsRePvKoa9xp6UZ8H9n6YA0Vv3Nny5tG5BvfyyiXa5RN6iU6B3OmGUz6ek4
	 qphzKJXxE6COOlYqvl2TOfYNMV5+NA/7gNDNEyMzbyvQydRWSaJI12zgMGt/2Gt688
	 v5I6f5voyz7TXZffnIk26q47B30L7HWzlOnHD9ZmmjqE3rVHlx1zPxgFbH8kd0EbtP
	 ylsak1zXsw3tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF788C79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890723370.21879.11451777933777739832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4486f4c7f2ea14486bcf71d649ed0874521450a8dac2f6ec54e410c9850877ff
Date: Tue, 08 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788907233
