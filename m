Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1690133D6D3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774497294; cv=none; b=AbETaEIYpVB9LijnMXry4JRYOEu5xR+2LvuBWEZGpxlLdKPqaA3j0o6wYB9vphCU+3Tky7F7KTAz2Mmrhuzb4c6WTcLvT5yWm5oex4WqQYEC4YEl2daI84EYHzxCe/lbuKkX8lZPPy3UBqcBLqz25Rzg4SEcqtk3iUxm4+4RcJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774497294; c=relaxed/simple;
	bh=M4oPdYY9w8SQAnd1kRKsuFxrcHEwujS/YLjUgaBjVOk=;
	h=To:Subject:From:Message-Id:Date; b=bxlgEqQ7AUjbt+ct/doFs0to3ddws3GAagIDNk+uw9i2+FCyS2vlB+jmip5IV6Nu3wd3DwccdVamzygM7WteN21Z3rHoL0OGL5ERZJsO77EE4OfRzAycK8QUCzH2fBLycj1YL1xKfbelsyEaGFdowzYouMbchK8rixbb6cbj/4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gC0DE3wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gC0DE3wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6015C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774497293;
	bh=M4oPdYY9w8SQAnd1kRKsuFxrcHEwujS/YLjUgaBjVOk=;
	h=To:Subject:From:Date:From;
	b=gC0DE3wcdY4lkbjyyHkTE6mTpfZV9OmTOuoqq1IeKV1UcdvJZh0CvE9KN92UsG6NO
	 r0nqlb840mjAzTYM75wI4wHusqWNDK5MtOk0nK7/1jyMlj0h8RW4fs5bs/99JU3rZf
	 dDu1wNxCG2PmXzSlja6wxmFtQYVkAbb02DgGLU07Y3+qiOts3znPFTXnS7qZZy+6nY
	 1wPaBxHzUIj/N560ElAq60bVxlFp/AFxIU7exYYaEtVmpFAyxfkPhAuccOsbZFFrlw
	 wxz9aVjiXAMq8Bk7vT7L8FHNTKI3uzMVucOd81d86jG+n5/hhviPToAR3UfMsa1R9A
	 xkoZCEL5Cn/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F65109E542
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449729358.27032.10930227612926151767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea094b8b5541ead875307d42643cd3fee958d15ccfb060902e58c7b2ec60265
Date: Thu, 26 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774497293
