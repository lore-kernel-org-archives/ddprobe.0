Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7135C85928
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717413323; cv=none; b=b6vm4lD2c/E7y3Z961RmUrYCMvq18Ln4ETm4RvIyP1aNcjhtrm17manjcnxe4VvZLgybB3NEWc2U+g+dyrt3c8HdesceOdX9dLl3mynJSlGHxuPIGwkjb0CeRuRCG/9a1qRTh1bbo6trZHDyJkx2bHCZ6+Do2+/URuJZie6KK0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717413323; c=relaxed/simple;
	bh=/gAnaGS9VUfuURj3zy/IftFvgxhovs4riUKcChB1hks=;
	h=To:Subject:From:Message-Id:Date; b=sOeuC18UEWkLCeyYs7oWWJQEXxxfx3a1nYd60ao8/ghyBJz3qSksyD5bRQn3GqyLo+Wllepfo4c1FZdEmOv9tCtWFVLUJS5rEDX5C6EOleHif/sE17CCUZQhsEWfb7oeRmXzEJNY8rpUKDRZcrfgEQ9eCS44d2DbZWbtGHlteyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5n+UO/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5n+UO/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C02C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717413322;
	bh=/gAnaGS9VUfuURj3zy/IftFvgxhovs4riUKcChB1hks=;
	h=To:Subject:From:Date:From;
	b=Y5n+UO/8m9z328wjbvzbupYZfi7xIrRlMM/9q1kSdHBauJt6UY7DxC0ud1Hf4mT/6
	 006gzVdGjVqHhz6pfGuvSSwK6aQdFoZ7/uKPfPfwZ+EfXQ/298PUGavihg0KaABVEH
	 rbbx9d/ctCSi/GIJYWaDxHrdhu/JeEbMApH7wCtkUIvz78kWdPUeUXAiQ6itVtmntZ
	 0lprusz+Tgjo0V+QGQsnL7ePGfQqTvV/wkp7P7IcBN8J4wGpqwMvTMBG3gSBv1HaXv
	 oQmQNYAbAYQAOtQPBOUBDZEYiizOPIzMGggq7LWUlrRgb4KexzU/BnECiK+vzfzzoY
	 sAVBklb/Uca1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D305CC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171741332284.23942.5440237495303915876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25c22200e1fc4d28f00345a51cee39c3e2e065c1aa1b9f7ce468e61864696405
Date: Mon, 03 Jun 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717413322
