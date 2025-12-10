Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F85F328248
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765392774; cv=none; b=qusiSHzTK1Y8Lulir8LZfV9ScJb6fXJqNaL+EcROpRtmyQvGKd52YN2kzO1rBb0p2iHOBiChSLvAIRYllwwUTtAFXFvSGiaqT42qgR9wt8cNJv9lT71UPA5f3Oeh20xugjM7PLsGy9ICvB56WeCCNx+5mydBKrFqg4x/CesBpOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765392774; c=relaxed/simple;
	bh=SE136dF9HFmXgUDd+ekJEM4cOkwL+ABelNZYFpP7klI=;
	h=To:Subject:From:Message-Id:Date; b=tl0mIZGQ1/gl2YRIyju0CJZsjCPrseDfhUveQhSazAKfEQtr1Fn3DKSCHlyZ5azqoKyS1oZDE6bsPBKNtQM5XRdDe87JUoVcO4OBuPa8H/ng+yCfSg1Bid0Eu7vf0z3AgVkBT9wGw7oGOP1ZdvfO5ejB473UVcN5//EccgGfJ/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXG8x2zP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXG8x2zP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0CCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765392773;
	bh=SE136dF9HFmXgUDd+ekJEM4cOkwL+ABelNZYFpP7klI=;
	h=To:Subject:From:Date:From;
	b=IXG8x2zP/PmCTSnvorkjXhuH+EeYEO2rV0t4MM0aqm/JIqkAjNLm3glfhbleGXamu
	 LNL3VXXbLl8HBtvHMYty8bVw5d5TneUAiaQmXSQxM0KLaKXCHDgQw2aay430YoTiLx
	 yx8ndpyUrkjS5wPwFsJXM+eL4MskLm6kY5LTFSDQKtJoJfJQuM+A3+f8DM7g1IuARw
	 qR9cdwfWv4H2DAchZabcH6DpSoPy9sTjrwQtQTvhOpkmMzv6HxVrOMiPDYE5Lm5w5Y
	 LcfIx6+1hxKAl4jgbO5xCy80tff0c4POmMff18dY7GUEPCnyHcZkMNTuYDRd/v4NO7
	 YnurBbeGJFaRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9428DD3E768
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539277358.16160.18393384037925964425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ff34545a83a2cf6084c193b4e49fed1d235e8389bfbf7468042aeeaa2b4070
Date: Wed, 10 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765392773
