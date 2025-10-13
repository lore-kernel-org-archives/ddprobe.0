Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDCF23AB8D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760330994; cv=none; b=OtMvb1lnIVppJ4V3VXUjeoM5wBXU9bTdJrcUFrQ4Z5fY8eSTFTsJvSW8HstUuv3xaQu1hhqdWd4Wg9JEcNRwjACoBu8vIzYOWaJxaxSP1ap3rMn0vp41thfCUcf+3XbYeWFapsGMdrcWB13LYpSIifFAZvwIQ7WH2Bd+7uBGGd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760330994; c=relaxed/simple;
	bh=fODMPjafhDNSwaptBRAfqJactZSo4ylW/ZcsbdUal8g=;
	h=To:Subject:From:Message-Id:Date; b=Ud1dwyPaXlx0tCTV+MFlPsuboUxnTEv2qR+IsE7nm7t57de6ZrHLuNafdJrJLIZaBV52ozjL5JvP0INEM0K0u+u0XDtpyIfWgKAesiI7CX7zW+6C66/nqlg8CtlSyfY/IGOE3iEygqRpVbLPf7Drs0a6pUWWk+PCznUH+EwDsyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bD8JEI3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bD8JEI3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4564C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760330993;
	bh=fODMPjafhDNSwaptBRAfqJactZSo4ylW/ZcsbdUal8g=;
	h=To:Subject:From:Date:From;
	b=bD8JEI3BjQZ72+3V2Dgfl5KGvf6O4rJw3TtIHgiOQdvLMx6IcsDtEm7vDSLkIZHOg
	 guKxbBNdJ9DS6QsogBXY0/ilzCnJmulX3NEoIlxmFKw4ABWJ6Upt44EyQqsSeP/k59
	 TyG90NqLhZkUU1lSNz1aaXHF3ZGK8o2vjIMc4cdGhsFmgbd7RT4KLsc0OdurSUnJgC
	 b3fM3gWHSjIe6MqzHQ2BVDYMAiMR1hCm7tg8wRyyPahRmrezS+l1RJKHEJS7GZGdZD
	 0p79lPw8Ox6rAumQBHQeku1M5/IPNxPu5kuFLG7Gs3DNQfwrKCexlQ1bmD+ZF2utBt
	 /5Uk8JDdRtRtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC3CCD185
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033099357.8522.3415642419223176961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317f1ad87a91080110786eb17aba8890465e4492ac2c6fe59e6073a1fd2f59f7
Date: Mon, 13 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760330993
