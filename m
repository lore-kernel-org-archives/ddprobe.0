Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4EB1A8F84
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756415394; cv=none; b=mim7YBAWP96exjNCHvR5wEKQUoYJZMn8lDSzEYXWxz8SEFUUld3lzZavGSoe0tcK3iwR3IzmASIq+LCC8ZLJFNoQhJeWtTyiku2Mrk+uCIqyMWs5LLw6A2GRM78aDrEDQL56Iw2DgD5O40WwNlulyhjJPwvQODM19uyi9JJ7gps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756415394; c=relaxed/simple;
	bh=BG/eqn9RecgtkV8O1aCSiIE0+UWaQ2OyczcCUCfuRU8=;
	h=To:Subject:From:Message-Id:Date; b=GNjfTM+5EKEOt1+r5NqNVGjXGve2SB/OIJmsAhNLDhUjQW1f5RVroH669LSKMag14DsdZuA3DmTsrZEh0DwShDNXi3jk+MLMm3sx3FlSTjSAsYjdJfFFZ5C3Y1cyUkPzATLN8LzVt0c/IW9InMlQSrGheW1Zd7PZIFrF2f3TpSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2Jqfcm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2Jqfcm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2782C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756415393;
	bh=BG/eqn9RecgtkV8O1aCSiIE0+UWaQ2OyczcCUCfuRU8=;
	h=To:Subject:From:Date:From;
	b=k2Jqfcm49I2KlQXPrrQxTdd7wOidnnuyIiJdbEXshhvn+ZNtt94N/HXm05c22zfWZ
	 wm2S22t+GgZSSl8pSM7MY6wOKI+eTC2g0vzkiWNG91Y1dgIqGN9jF75ltRq7pPgzzV
	 OsnfjM77A2RORcnAseSordide9UbVHC0m28TevsCj0y8bitD0nOtc/pHRTpQhx3IpN
	 /IP/T3DjRH4xbu9yqeKqY2Usvkov1NWD5l0pFFh0wuXy3W98f4nr+655tMKk+tqpJu
	 DCrFwQYvboGUXcT4Btiv/U7iLF2pk6Kl3+wjWPt6d39cZW7Tt4RUONnMzgKBkGzcqJ
	 E4+4uzDfaD8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF7CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641539358.29564.10531822776414025065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edc2b88d9795e89ff809d5edbff398cdfb318b8eebbea73bdafb20c28fe61c4
Date: Thu, 28 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756415393
