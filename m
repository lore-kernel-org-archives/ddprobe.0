Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD742571C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774077894; cv=none; b=XkrG8Ybh0U1XJMet/w1WTwSG9+hqo4CDxPmBQJMPz9aZDkBpr/Pepsx/H3lCpx8z5YvrYJ4+tuYU+5xXRWixolwAmcGRYDXIG7gaEr6tebhxZHSDwEr+vCvE/Ublzac25Ow6xa2ep2XoEpc9GO7JMUzFleu99VFZvWm6KodrovM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774077894; c=relaxed/simple;
	bh=Q6sUwCC2DS+9YxH3T1JgZP0KC2ggaHL4iPsncEgKmsA=;
	h=To:Subject:From:Message-Id:Date; b=EEPtr6RzFeWa+XV8hcG+YKuCCA0J5ULuCRYKFjS9oG6XooDkgkfKvWqxbal4k1fe954Wycl4/VAZcgbB1601cYiQKmkkIOSVzeojsEKyo2XO+CxYjtsP2BIA6kyoTYvoCvMKelAB3HQf4GekfxCye98hB1aiwU6//M84vkW6qG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHwNTs+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHwNTs+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A38C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774077893;
	bh=Q6sUwCC2DS+9YxH3T1JgZP0KC2ggaHL4iPsncEgKmsA=;
	h=To:Subject:From:Date:From;
	b=GHwNTs+bdhF5oeUVsjyPfhLATGE1YjTkbi0L4A2ar1plFHj0Zfo/VaNVY3gV2h/Re
	 3nGuAZUYYt/LoIjFBfK6T7x7pxTT7YARIO5qfyVansCRSTEoIQhiBFxh9s8wUChhHH
	 Df90MDHz6ws8I49gVwf9ZDwUAzO5LIt096+GKjkAB0ptC5XJT72RtxF7ao9FFOdSRR
	 etjYyNOZua/8TOODj2Ye5EFBQHeTwaj0kg4i28jpBDCM5EEcTtAXVQdbsIYUIjnwEO
	 eawCxXTcmBCwt2KwVl6Y/cxt7mEYT45iPwEDvEd2ZNg/2XVo0WBQCFqCuLECaORQbj
	 94PAdouXsOSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD71099B54
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407789357.27980.1824700629217846927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33338e89c100b5307d8e94c4ea0c6a77dcd163039e549aeed2f15f847c148e03
Date: Sat, 21 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774077893
