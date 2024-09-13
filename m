Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D724BA38
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726254954; cv=none; b=VfTPn+MtPekIAPPdv1w50OCNG/x0XzBIjsoj8DIQS1PoSxFyCGI1f9rSw8CsM47YJxkSvtIjGIyQytJLxD58ZA4AWpr7Suj1LBJnhPEExQBGkZ8Wtf+SKD87xQDStPnK4KF6Ij/zlwM3s05gnvUAHOD7Z5HC5WGBqpKi33+pvzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726254954; c=relaxed/simple;
	bh=nw3AEnUIyd1ghnRn/5v1x8f5/YIh6gtpVJNNilTnIiE=;
	h=To:Subject:From:Message-Id:Date; b=s2wK2c/Z5R5fb5UnxnimHpT/Bsxav0oskD3n/KydDGWeh9g950t4+7B+U3/nzkNuQOPd7TcuuHV6U6CAWlGtM2pWN3476JxWZa1I9kzT6o5Wr4WdJqipdvWkHm3hesg4CHra04NxlFLd/AJuQRIkgh4HcyP/zJMCrIw7wTnqyLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcgmdNa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcgmdNa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E5C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726254953;
	bh=nw3AEnUIyd1ghnRn/5v1x8f5/YIh6gtpVJNNilTnIiE=;
	h=To:Subject:From:Date:From;
	b=lcgmdNa5TWVg8h3iNWYe/GHjhyt32uHPggRUrTwyZWmV0s1LtlouR2kx9SMOvbUJq
	 xTSIr0oUhmCcOQ7n1U/aocpQKnoB9XBXjJnBw4Tzk2YSaS5pPZo8wXhqlyBIWJ5sDP
	 9AmvTLNjW4TWv1ULyIO40AohtazWBLMb5Gej/Otq1G3FqBoNveMd/HSc6fRUnhisWO
	 tIBXLe14uErqQE38IgdwOpJTOEg9HPFkCJOt2qPHIWEFWXjp629JdrVRuEy1J8RU8M
	 V2kS6g4ty2fNel8g0Zl/L3g1zC3yu5BCXSx83vxKQgQs1W8eUGRtOSCT4jCiBEdT6Q
	 361JHvK76Ielw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306FFA3750
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625495359.9611.12048860548861535953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a518db8b42863c23e77ef1f8dfc6ea5c3eba54983d2e1638555a9d33fd287d38
Date: Fri, 13 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726254953
