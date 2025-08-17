Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303FE2576F
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755394194; cv=none; b=gKxK8lm/nLS9ohcS7vHLEM1lwfeuh1dzZyb11Z8TreCVa1yf80S4BoprgAdvn5ruEgZ8swmiidqa5sOh8SCVg/WAxxSPDKsova3EZZoCaJCbxXhJUV1+DzsCyB2GNzpJusapXJjWEspDXmHGhKf45koEX4hAhjET/AFuaIT8Cvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755394194; c=relaxed/simple;
	bh=wzWtgAssKQPdiiWs/n9eO0d+TJgKSHLnycSI0EfNa6w=;
	h=To:Subject:From:Message-Id:Date; b=S42x0LesEte8yqFXoOYs0ut/cvjKO7D4JejKiogJ+xMj2so5e9gFNm2F1boxjnBX0HKtyUmRg4FFTHJLkKLCv5it0NdiFalgectkh2FYpCxPffYUDsMYvJrelUEyYSXdcUrNF+8uY1hRgCXQbIjLn4N3hMX2XuKgVa5m7YIAkJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNVjcjo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNVjcjo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A932EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755394193;
	bh=wzWtgAssKQPdiiWs/n9eO0d+TJgKSHLnycSI0EfNa6w=;
	h=To:Subject:From:Date:From;
	b=rNVjcjo2QllmGoiRCV057jKMFRbVSf8Km2lp7/GZu1k6h916+fd/EL0UwsZuv2MTB
	 Q9igfXlOZQbfr7OUtZGIQcr7Hou7gxV97V1dit2CbWa6HJeAuXXM48VLEK+sSPqibP
	 eDhKcqsznAE9bJmX02oTZAIDr8Iqhr1WX2WVMCvAOGtkYPq3+2iGqM5KHFkumcFADQ
	 TQDFs371jeB865EKhsUcS5M8NgXoMCgos99i8qW2bpgmypenZNnA6VJhaW9RqUGyT7
	 SCdOEsHsrtbvDveM+WuCMvldocA1W3Drf5a5hm2B7YHP2lCh6MtA2kc0MA4JVCsZH5
	 HPUPyZET5UpgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97538CA0EE9
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539419357.28800.3914946561634492943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bae337ba105bd6220400081a588a05e9f8b2b0158fb06c4346045ce3f0b522c
Date: Sun, 17 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755394193
