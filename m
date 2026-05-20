Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3952821A92F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779267034; cv=none; b=eCoYIBqz0Hf35z3mWUWfUSBPsvJjl4K1snRqFgA/GRFBFqXtZN0GYQi83AMQaMRj4eOSnjnyqfOIDRG5roLFdmhSjks1gs2n8mD2Ytk+LpmZUqt+iKdP/GqOOvgw48lptRHnRTIMidlORzzBRxiYlV6n+XsYqPbW0M5dyS9argY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779267034; c=relaxed/simple;
	bh=RwRW1j+VuZ24+Vd4bfoyqUZTP+O30pRf8GaKsvTujEQ=;
	h=To:Subject:From:Message-Id:Date; b=gwUoYurkvhXp4VbtfMtM4s/JOgUsIga/Qe2l2H6UGzuLMDjyUOUuYRu8PHJiRzhoI8yCkynzVKQWUa6b2ZcyMKVcRozLorwHcTJ2ncxpw5GuNUvSjMxOnd+vhnN6Lhl17pObYZY3JUJvW9bANmPGMxw7NZ7IBMksqze0RTc6HEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBLZ+1nY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBLZ+1nY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A3AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779267033;
	bh=RwRW1j+VuZ24+Vd4bfoyqUZTP+O30pRf8GaKsvTujEQ=;
	h=To:Subject:From:Date:From;
	b=DBLZ+1nY95UT3GYmyt3Rf4C7uA03j4CZjGdDkVhcNTlwwNiy5nkY7Bc+cVkc4bNdR
	 cF1JRoM/DCFlp3A2DNJYvlFAoolUk8QQMYwup5d6bOlXR3u+Ae7bxNbLQq04USN2Li
	 r2BDlacpF2gi2zW2rqnorZ8ec0hs8FVbhvg4ySHCOtQc/4YOipEOicydWa84uMxbFT
	 ZhjvvS/mrP7quxOntDhCe18Txhet5+C0wlUe/ZDsEg+CHLton12lrDS1U7L4QP5DYU
	 LkOE1f8HROU5OljkrtRIhUP+DCNWi1BFHQ0Sm/wSnG+ikeqWzx2hwW8B9jOsEsu5kM
	 kxAlyqWg6JPiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA97CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926703369.29423.3904384130529123617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9732cc93c1f99f96738b02d14ebabe8c8ae51d793b3ec39771f13ebcebfcbb9
Date: Wed, 20 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779267033
