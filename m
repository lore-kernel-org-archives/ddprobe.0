Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E251A2FCF
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719532463; cv=none; b=r8AjX5r64EtdbVr1gLy4DWEcm41OoDgsmSDTcH3nUcwB5tUqoA6S5LaYXu2oBznj7IQGneU6/XsrOCx3ke5riADvIP/YKpVAsWNDIbz2XwI1O2MTmeRd311PodGE1L4JSY5iC6egIiGK4rNpl+d4Cccr3h6JvMGiZWxuz13FNrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719532463; c=relaxed/simple;
	bh=hHRpKj6ZAVcMYhE3X42hlpadx0f/V0/RHDUieKcI3nQ=;
	h=To:Subject:From:Message-Id:Date; b=ccub7bSsoclapmVawsSIuxNZ3yHk6nNFxv9O+lv1foWNZ/gQEhVXcr21r9bIcZTBR7j/1GICaieukKKGB0mQBiMX4GexqQoL4/WViX3fMFIGPxouDs3JR09dtzk9kXLMhKAXGdhA130uT2SjFgLT0uUocx4BcFGR+J6jA0UD3CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REUCzLtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REUCzLtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1B23C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719532463;
	bh=hHRpKj6ZAVcMYhE3X42hlpadx0f/V0/RHDUieKcI3nQ=;
	h=To:Subject:From:Date:From;
	b=REUCzLtXMaa1jG1xm32ZXBW0g7css5cA8wKFbJniKPZT556lOHCq7xCtqzn+zJ9XI
	 aRjwh+LsJ9bqskQriAQYWIz//zsAI+RdD9z5y+oVh6pE6gtZlgnmwqEyPaUsdEHt6z
	 cpZIY/zVKv2fvF6RNt7yYgBPw+2CzpgvJudO86kMCULj/etAu+saZBHz/o9AejDrXS
	 ET4Vxc+uBhIaAi9ogY8cS/vdQ25LoLNxR/oRL9s2tnvMGVCZE1PMPOYrI3CaxeY52V
	 ZsOZw2sIb6GMQ8dOqBS9CEI2BpPH+wnUo9/SKnkcKqbqT0pXLupEer/dJoFYCHJg23
	 xmVQzXtJm7ZHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E154EC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953246286.12339.14761400522737244408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacc3bed78bb33ff83247b25c5533ccbcf62c98d97e04744b4bae56e9ab6af45
Date: Thu, 27 Jun 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719532462
