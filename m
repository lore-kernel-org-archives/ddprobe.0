Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D783E638E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785234034; cv=none; b=ldT9/peLf8J98Nm/cvCCG1qOwwMlQJNSKGmE3k5nKBAEbighYyOaiGUZbgtRwOee85efhsq5oYn3DJyWLExD+IFctU6Qso9bGcYkXDf9yh/0ZAe1EDbIDxilGqMwoXh46020mfhXC3gPgKS4tk8EinCmOpyqjs9cVbjDqKGQ6Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785234034; c=relaxed/simple;
	bh=24sryeFJR0S89JoSZnhk8Xu0wL8Zy/qMtoUAlg9NTEs=;
	h=To:Subject:From:Message-Id:Date; b=tWbG78Egj+pSJyasvZHWXjl3p1vPnYPjclLW/Y/3JsC9P3DaaL0LLm0Kvc73Och4Kq1jgxR7DIcAxpz4IeqU6HirDB0V9tEXJamQ5K3lcyGcobZDh47MmFujcWR2xxNIv+Jxku3NAY9oNNFb41UHUeOmkk2E6rnj4q8BDux70nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvclNi7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvclNi7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC34BC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785234033;
	bh=24sryeFJR0S89JoSZnhk8Xu0wL8Zy/qMtoUAlg9NTEs=;
	h=To:Subject:From:Date:From;
	b=GvclNi7b6hi73xLZwicT+4m/YkeaZW3+M7o4KxJIRcfiWmmaDKuULwPs/DRLLw2v5
	 6DoiJjili/7wNdFStpBccMFUgXt6LhMwVtt9neoQktyhrgD5cEuQ+KxHv8IIQ0D2b6
	 cRkzPv7ezDORp2N006maE8gSF/V9rm8cFsgwtCHAjHsbWi6BAoePC69gGWhDQO2NZL
	 a+x/JsDWj2/97Fp9ab1SjvGAiB6Cy9ymaVzc2+jrRGumRp+JAmxRjPgSRqzZXROLyR
	 0QkPgM36Sj4LJU+E/LnW84mcW6a6a+nYBF3niJled+snlIvPbN6l5a/xYEL3kLlPsb
	 smUwqmWExxEqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CEEC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523403373.32560.9235640874841310668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff40c65ecb3bd3d5d1786278c700304073e869d1ab869703f9906e6b9897bb3
Date: Tue, 28 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785234033
