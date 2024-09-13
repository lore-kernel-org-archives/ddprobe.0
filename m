Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9C336AF8
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726243554; cv=none; b=IpWi6p67dDzAHQ98KKwBjl5+n59hU0I1HCN/7kpkcgKQhRw4/O+oraNH9jk42wJznrEITTLqCIom2TWTuN359mzDI5Tp7V8RpP8qSD0X8cR954Lw3CbT2bgq3N/+xZIuSVoiVKYM06AoUouCWtswSiocuNFJqdkJtbgobRu+5hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726243554; c=relaxed/simple;
	bh=Gyd+E3YPEOhHH3e4ToYUkY0ai02eZGqyLR82itigSrw=;
	h=To:Subject:From:Message-Id:Date; b=DqpsigDGwVHMwNJk0O+Wo9H8nts7RZkTIeUSw9UHg5o2kcV5LespvIYx/xVC7HO4ySe/g43pK+wrbY0EubA9p5sfNfwtBmGNi5vFgtxq5EpgXK9knalrZUlynd8y6rt/e5qABxa3pGX0E0ZJiusoEU2xQEnsjxk/KBoQiz9EVCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJMkMUKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJMkMUKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94C4C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726243553;
	bh=Gyd+E3YPEOhHH3e4ToYUkY0ai02eZGqyLR82itigSrw=;
	h=To:Subject:From:Date:From;
	b=TJMkMUKphjKnuc0VpUxm4CySuokG1GwOnC0ByylFetRnM8zLn+T4EQoIRszh2Yi0F
	 xAKto/5Hd2RWH3ZlW6ZsgDAPWAxw4kg9r5IOvpImhwASUl26nGYZga8PrsZR+icTe5
	 TaroLMqv11HrN6zvOTF1r0hF0V3RhF/W3TT7BfGqMUlQV0akGJHj6kZjohlNRld2G6
	 R5HH6dm6BomIRRtrR/vT3oA51Zr9G+WlZoFc8cWwvEB2YZ1/aPWBTQEvY1dhdv23Tj
	 L3Ji0IK+9CSxvYi9rnXGMgVn5dbHE6+hQ1AasSXYEvsoDYjzlOI4c/4rGrwGRz21ZY
	 DaoRiu4U6T4KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F1DFA375B
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624355360.2094.7578344082024221888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea18a8123fb314ff3546b9799d14d9335cebc46fe717b0adc1c3a234b38ba35
Date: Fri, 13 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726243553
