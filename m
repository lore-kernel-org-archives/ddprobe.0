Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D24813B2A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 11:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725275755; cv=none; b=JkMUoO+TbPebiTT0mDHszNEA4cW+wNrYmJ4AonTjlTpHGtSPwM2b0VnLljze6c1trJh1Dyu8W0DiJgfwzcbTqwVXGsrfpAF6eK5gCCti+iLdUuYFa7ghj5YP7EBYbta6W4Hi8IlH1yjWyASO1lFrZPyoxW8yGt88SrHXrxRtvkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725275755; c=relaxed/simple;
	bh=dKo5y0wBJNIF+KMhJJO90TcTGpCZmdDWcjpS4TmITko=;
	h=To:Subject:From:Message-Id:Date; b=fXEmHe/tAA8BrGm+PKEm5MLrgPP3NBzGkv2PVVZuRNUos4VERfF2Jtfoqs7Ye/qYZs1RApIBgQvnTQ1eBgayKKxwiySMeHv16CVGmG+ampdMZFbwtMVZm0TgmGyLUN+7iNUGDYSqXzLnt92Bo5ZyVwYNE1GSzQiWHueRsTu8hu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMTJ0vHi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMTJ0vHi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2D6C4CEC8
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725275754;
	bh=dKo5y0wBJNIF+KMhJJO90TcTGpCZmdDWcjpS4TmITko=;
	h=To:Subject:From:Date:From;
	b=rMTJ0vHid/d+1Al/lxzWma0unRGzgu4T0sXHX7gNcrtb01Op4S0XO7N6/G4zgUPnx
	 MC21XRNxdmw0/vdFLjnraxN/MYyVuQSfvPFgBGPknT4pgRpuRqpF4vJ0LmvCJHwvIA
	 Dhw4ywF67w2HDGZG5hvxRJBv3Bd/QQIxLEn8E1Zg64+JseBc5UefELV7HIGIuFyqC4
	 Ys7tQYaeg+hHhC32pF1BpDi4+nc8xvV0M7HFv8APzaX3W6Snlyfe3fGSAlkMMVVAIB
	 idlW5KbNgV57Vp/9ikxf8y1++HPvjO5Aqh5h/5e25/75ywIiowBHIMWouOhfes4+F6
	 cF+fOOBZ9e/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F37CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172527575366.23694.18379930393531653842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6776073a32db5c5c7f71c50b1d65a2508621599eea2b3c55573fb98b73b836fc
Date: Mon, 02 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725275753
