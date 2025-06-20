Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DD129C355
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750441195; cv=none; b=qSS7mBfnUMaDynS4NXGZyVajPQm0VqoSU78fXCrBlnEFVrqxjxTJpu0GbSbR/ZVsRatAEd++CsGDbJ3AlWyaxjKeZXRW7dvHT+u2QqcSrxyMjrSPOf1ZGmrAvOi5310IeKTWyNvTc0Cpo7zBtJvdrV1pOJv/LgBpWXsTST2TfbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750441195; c=relaxed/simple;
	bh=vaogTLCTsVTnmfUW5ktC5NPADJXNpshc7aoaK6u9otg=;
	h=To:Subject:From:Message-Id:Date; b=ejFSibLS0naCEiH44vjXBtQeIEW1QFctmkYzhw/kBpwXO7J+IGtFdAxV6z06vjkSiiw+jSvZtqbYuCplz58zhZSchl0kYuzcvF+WLSluLN/t+LrVrFD5EzQkUE0x/V//7FNk+S5hdmC9LbMzXQJHCFD6XXLW3z8CuitzM21uf2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMWuuQsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMWuuQsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4FFC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750441193;
	bh=vaogTLCTsVTnmfUW5ktC5NPADJXNpshc7aoaK6u9otg=;
	h=To:Subject:From:Date:From;
	b=BMWuuQsH0imBjuhq7OVmW/BmKqgIjk/Ba+CXYtbHHTwM63/km9wHA4nXdzRa4reiW
	 rSBivG1PhEUELi1kNWq89eSgZPGXMoOhOSl73+bd/a/iSO1Bj9NyWD5TGEcAy0cyRH
	 W2G5YqbzakM29cH9Rea0QwHihVNBAFLBgmHq8lhjExCOSuPqMz3wmUE++yZxwcSfVU
	 YpgB6/C+Ub2lF8jj+v1+VeSZsX/jvNRb2qZbi8x1z4T9ihzCr3SFAzIb4oS9LEc8HA
	 QZEc/cMetj6utId/gLi6G1PcN4TVnHsNBPQj4Fbbw3aDuPvWnTGrQOSC/ZF5jK/5qD
	 UDc2aIAVKl5dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDEC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044119357.22077.11132458711337494253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251bba600395f94238aeba124858c812d2678a0d03a0a0ba47d094df22ea5d0b
Date: Fri, 20 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750441193
