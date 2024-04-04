Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBEC12CD9B
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712248697; cv=none; b=lVQZXoAb8Pt4dO/1YO1VrS9q0lh47IlwS/r3Gu/FmOzGTz9XUshFPD8tK3jU17NDa7q1h+Q+I4lBjrng60IHV/Ze9RVLA9CjUrmdM1tF1pDUo5D/s27mvNNMjrRFSPKKDU6+kjtH3X+QGkGMkLJQsmFqIFC7jsGh55PbSu4XVXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712248697; c=relaxed/simple;
	bh=ngyUkVA5LPp22xTK+JWyPCoqY20UxREkzenbNsbt5AY=;
	h=To:Subject:From:Message-Id:Date; b=J6fUjFcpoM4RxTlE7a8MJ5Lp2n+z+mcRXSWhutov+AfjhEAxYH2UOWFZqejy8L/lk41p+2lBv5o5CxeCJGQJ5cYYCU2RO9DZ0agHyKwhX/pBQinkVwLlk/n/DLQZcZ0C02j4Ho5fhTYXr9w8HZAoJeRNGlJtHhVAcFXq5h28hgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKoe5Wev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKoe5Wev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 880D6C43394
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712248696;
	bh=ngyUkVA5LPp22xTK+JWyPCoqY20UxREkzenbNsbt5AY=;
	h=To:Subject:From:Date:From;
	b=gKoe5Weva84Ne357HM55RUysQ23byX2lfyPPzopUkp42ikPhH9zbPupeN6C8z2Mw/
	 q7aV01ORBJz240v2dRXCbnA76Iw3L0M9V5CsyH4qhcXKBbMfvFP20knhgv89J3OgaT
	 DJvPOxoADOckyKmjt143hMpMr8XD62OYO6a1JZEBU0c2VrXaBq6tRgftYJdD/rPwrC
	 r9uRsaqD18diQpa2DUeqJBO6UakXTvNXq58OXo4ou7LUworXISPEqgprmsefS4KNPg
	 l9ID4YxU8EQKqzI0O/SC6Z5DXb2GYyBKn1CvFEPgVwU/g5WwK7NoprqjV+ejqA4yrQ
	 seY9C8gUMRVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D548CD1299
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171224869643.25187.17182712489722088014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4aaf419bc69b482d9b3ac11efc56914945697e8e7ed7ab0a60fa5a54af0f8c
Date: Thu, 04 Apr 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712248696
