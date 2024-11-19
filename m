Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F22E1C9ED6
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732017954; cv=none; b=esGDneoWULIZURGLisiNtie4BOol/U7b38vcSo48o97ck5R/7B2jwl6W/PuLdpPXb6WsV+PZSUxV+TmbGxDpYhuzTPpt43OluHAVMTcBPKQRA6vCGr2RR0V69BBrvELZCzMoeVWgfCDy9EarT19weSRloCVYvELphGDUMK0skDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732017954; c=relaxed/simple;
	bh=6k24aUgvg53gaGftaGVjX1ITfGOsARKfzEgpWidBr7c=;
	h=To:Subject:From:Message-Id:Date; b=POtRbAVn+4vLeF6SbqYqYW6Sm9qDxABObBRay2OKkSv2NVZHB1DBas242dTrTxre/5BZyTUw6OzGmzneSMCXz2LIhuDz3GZDTnbQ0HqmXjy9pmKIIJuAGYfH69YJn35zBJyCW1huKQjYD3mDiSHV1PAQT4/1yxXg5BG6oF3jWYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUlhyZm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUlhyZm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBEEC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732017953;
	bh=6k24aUgvg53gaGftaGVjX1ITfGOsARKfzEgpWidBr7c=;
	h=To:Subject:From:Date:From;
	b=DUlhyZm1HJ/HBwK30SML40MO4J6nRVmeLTQexYzPJIbfTNT6ANX6JKOhzJD1WskEP
	 eg+y06yWFGNQaqaJj124laJFlLzn43eChk9Bq15HY6k0lQRrn6TrevNnGP1KFJDxmO
	 lXxgvw1hA9lrGsyc9vkrDqq8Yl0fSykhWfQRiAtfJo+jbklR1Zyco8vL7uLEeYG7VA
	 9mmuxOJRJWclGypVyHWkn8gXaxchRI6076TLiQMoMae1nc0fgvCu2FfbyGCWvMH/b2
	 pUgQ8AQ57u3wp6fuaEOGs56Khq+sBkGUT6fAGDtHcsAo9VI2c3Lo2w0VLQQ0nk/qOs
	 eznrSoF6Vv71Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD09D4414F
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201795362.7033.5592057659496060971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e62765269f0efb301ffb44b062d01f3b3256ffea541dc433894e1d7b64b7f2
Date: Tue, 19 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732017953
