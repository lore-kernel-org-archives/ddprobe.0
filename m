Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD013DB9F
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722477954; cv=none; b=p+GjMAz/sUco/rlgb5sBdcVwB0heapHDINKljtDzR2ByKfPI87xLRIHxpl/NgMrDbpfJJTDhxICkoeebRTN7627a764zix5d30Fj0Qq+6abZoUB4dkeTbWKNPDExfifiCPk7dugyS+pOxLMTdTO0exw+wgEQLOrL/y9r6uTzNvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722477954; c=relaxed/simple;
	bh=F10/6KJWbKBUFDnNCr8lV1Zbf5QtpM7mxlWcf09ObX8=;
	h=To:Subject:From:Message-Id:Date; b=ODp6MT3akLA2OOXHlSawlLeOYgTfr0Lm1kLOZDbiOajS62YV+t5UOJD5vmZ0OgG/vLMxOsYzfKW9fiH5EgUv1tHGgmZmj/YuMeXB/HNLcBMIWmrZjAsvz8SOldLdubvOyz38DJo6xBA1C0LiGqrgBRRBkXT8RFi1pWpAxv7NZ9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxq3LMWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxq3LMWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B68D6C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722477953;
	bh=F10/6KJWbKBUFDnNCr8lV1Zbf5QtpM7mxlWcf09ObX8=;
	h=To:Subject:From:Date:From;
	b=oxq3LMWbRcpvSHcczg4yzG2F4bYkbEuGRu08+furcny/OUSN/OK3yA6ghZ67G4RXX
	 uCB+w4kyZj9E88On25ttsExZWp+TeuXO8jMHNz2bPk/SPoRvJiGgS3BEbAYOhyl2pa
	 iB7xMn3Jx3KxIazWDjewRASOnepJH8/YEIAp4PVftrvxOzvjp120HHBGNbVgzeuf2/
	 GE6TTSIL+UWZKoc9IoN6oiYMWNeH1Du4dv6Z3IFwrvmzwRged7FB2TZuZE+yKc70g7
	 PpwakeayDGmNF+ichtkxDRjVJnX6Bm5Vg3x+vXbpqgcwY8EZwO/UOOyPUqlRZED+MP
	 Ty3w909/a5FhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4B3C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247795358.11948.13475382169893454031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ca958bd931914c7c72168066a691520c6a3094b7c07e47837d136c90fcd4da
Date: Thu, 01 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722477953
