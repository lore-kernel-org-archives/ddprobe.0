Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BDF2135A
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714072943; cv=none; b=tVfq2qeOXauWUuBOtNFvOl1IttQ+RROH+tACNBwUpdyTMFlpi+dkAO5PyBuh7cBrvbbaCWlu7M4mlThJ3kYPMpo40S3FPkfdJL5OXpUcWnB/z6sYbelmD+4puYqlYgPKuXLULUV1uwByHijnkxOKK/ne/uoixSqmkYl06dWQFzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714072943; c=relaxed/simple;
	bh=T7Q5jntf/132v4PsRkl1jQz7LhNrZEUAHQjhR79YxqU=;
	h=To:Subject:From:Message-Id:Date; b=uQDNKpFzS25JXWPXL3x9duPTN5ki7GCa9RwYmcobeUs9V+ZD8uTzljOzGUoYxFigMW/DSSPlg9z6MmcadGxWlBFbxElOMRTXwp0t2avckTFvzf+sXmS0CO7OU+755AJESeXUev5ut8FlcIwGDyZGy0bbBMeejFjO/JBhYKDjnA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCXMf7re; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCXMf7re"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B97EC113CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 19:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714072943;
	bh=T7Q5jntf/132v4PsRkl1jQz7LhNrZEUAHQjhR79YxqU=;
	h=To:Subject:From:Date:From;
	b=pCXMf7re1vHoESZtZa3jpBBz41ErDC61GmTZMnpk/JF4CPIzUK+81h6dcsVONvBZE
	 mrnFxCWLnUpeSh16SR3rbgU2ZrA+3B8/n1vyT6SbK6ne2ry0oRaGH2YscWLD3F4KJ9
	 4aItOUnIup6NCy2T2+mjJkOcffQ7Cv5s4Hhlj4jBGOhMAXXTWKXSLKyCqL/5VXFZG8
	 u0u+gm9CMs9UMFRbkf0ypiO2Dm6ed65IX7uXwrYvc8m8YKjWJ6XoTZ4Yra7Ewb0F/n
	 3ukc17ZKHhLhES0rGn0/nbRCtNjg2HG4ZfRKPn+nK4g8KUhC1VGvkcyR2TR0v0oEDI
	 +oi9vTVuu2eDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0A55C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171407294290.13990.3184701626051379318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b541c19b84908ca04779f172bb78f28cf8d6eeee2ac75a86d84e94adda25c3
Date: Thu, 25 Apr 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714072942
