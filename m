Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D433A2264B0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769405633; cv=none; b=ryw8CSfXcorUiKvRF0zgxvkYLDY/KmaZwrs6Dbc7ZLH/0WOiSmsJiwjnXucpE4Bv/t/MfEaC7zkam9ZiS+238W3N018nY40yWIVZ9MoZfXfwPh1fpx1iOZKXSSYabtEuOQBRGZF6zqOIfpYZQTn2vEYRNQmEB5hgv0cRade3GKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769405633; c=relaxed/simple;
	bh=+vYxclrfE0xLqrPiOHEyVyWaxSHTUw2fT1VsS7t9sjY=;
	h=To:Subject:From:Message-Id:Date; b=M1zgce22CUXMHFuP7ZvwHRnDVKxFWz/3Sr8sSp0G5fW0Eu97Zv9DJKhc7HoHKU/bXWXeLWR+QqIVoA+mGPRva+lZN3Qaer3CPdhe+pbaNarOm6eMhr3vmWT2myi+gJtJl2QlEFUctJBD1/+VIPkB1eDJlbSkubbSBIO5nBxc9o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNjnXR65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNjnXR65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3BEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769405633;
	bh=+vYxclrfE0xLqrPiOHEyVyWaxSHTUw2fT1VsS7t9sjY=;
	h=To:Subject:From:Date:From;
	b=SNjnXR65UAGbGaITT1O4juyWsd+t6f6Bw9S+jg0Nm5AnCS+E4EhSzfcBaCgTT+GLS
	 dkm2qNgg2PHRm3OkW2zy+6kffKTBOCDYjmtWw91jFUyIlIg0SxnRRmYYU339MB+rLx
	 1FsFm7WFUAmwnir2hVbnsaqFFYtXKTZbyflQbXXn3rpK27YrjVOLa7uRPkz++5Hegs
	 zaxcmc96TYYIUCe9bdPhEDiK4+/0GB5RNls6L9HidzDII3zbPyzhc6ZEtCjFEwSzJB
	 ru3MB3K7Unda+F/vlGlJlSr45Hn0TBo41uQqnPcMrU573R9JN9WmCfUCgBKdtFMGMF
	 IisbXOv0w/c4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92916C88E42
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940563357.14103.18181314737274010042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9f0f3590a7992722a0be1c5c1fb5ec480bb494037a42ba4a3658c99a2289cd
Date: Mon, 26 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769405633
