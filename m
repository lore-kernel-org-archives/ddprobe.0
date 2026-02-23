Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BA136A00E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771873494; cv=none; b=fObpH8CU+X/3HwrNuM+sYo4ysx2pXL4uuCRvPh7qp3cMNzITqPy2LpP4hsRl6dEnsdut779E/pMVHNZFIQVodvWvpvG0ECyQf9UBpC5oTdHT0JoN73mWMnwUJNwI9V2Ksr2OrUFefhZLUu9KRy3ovdkkvd33L431M4KlDak4ghw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771873494; c=relaxed/simple;
	bh=/kND02AaLo636MRJxwDZRKd+JNEH4C6dbMwUuUBvLa0=;
	h=To:Subject:From:Message-Id:Date; b=aMYptukGW0YtbMqXXCVCFk/YW2USR9D0LxTARcqLkWTdudxw3QrCF6xMSosMWGz+71CtgO5ujUa6o8WsDwnsZKUHqlEKdIkqRenMdFZGEhtA86MorOp7UwpwQt/1+G3ELZkAfMuJMz6zsZVeqIK9Hi+0nCl+nBPX5HLxaZDvEiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3oIfelD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3oIfelD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECE6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771873493;
	bh=/kND02AaLo636MRJxwDZRKd+JNEH4C6dbMwUuUBvLa0=;
	h=To:Subject:From:Date:From;
	b=S3oIfelDTFpr7fQ0p0xCg6qVaYfUlPkD/7xZ5k2SD7CVM/UUgHI2H5dLeawTS+W6T
	 eNg9UwcwkAdLEgYYY9L/RWn5NWxtMtRzYGFcF+xgChXA9RuEDa0boVdiLnSJomEmiU
	 5F0Uz2EtHugC6LsvbwoxquU3EJKCq+1ds1VO5DwvbUyK9bEMOxV7KHA/YRs549m43L
	 3PfSE1YlFABV+hUoWKLhXGij4hvFLML7CDQWIUfzESUuO7gu4MxFWs7zm+vQzUDiSc
	 Plz53q2WXDn7+CCVGi9lXtFXxOO8rgWwogD08gUQI07hu+9j8NESlb6w9pYUpoIgCX
	 P8wk85G8SKTXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009EEC1122
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177187349358.13127.3081674634862157825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4ee129c9e995866a1782d6b9490fd221e605e17332a506714cc77ba3c45a74
Date: Mon, 23 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771873493
