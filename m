Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359191CF7B9
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725474954; cv=none; b=A1B0cN+alk8PRoE6jMYhWVvOfw8V6a8LUvH/TxmJIHcYm0jjKt5oPrqRUUFvhrTCZ9rdhsXggqqYME6jPvmwhcEf5nZR9n908p9uOtgN3dSg+Yv9IJvqW3u10qHI1YHNUfp19NTX6o/Te8zAvcqfvSP2IzoUwh3ne4b1HGbYRJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725474954; c=relaxed/simple;
	bh=14wuqUWVRphVOcnJmhWh1KFRpGkm/PAgLY3Oo7VeM6I=;
	h=To:Subject:From:Message-Id:Date; b=OVvtDnOV0Q+HAcLKC3lb7yYk3+WQ/rvkbfnsYL5Y90y56tJTXLMtmrm9G/lQG0sooolpAkgun0ZyEzNOZq0neUiSZkdwjq/n2ahEhKNPWafrgUXwFqlhhz/IZYGD5bW76tnCn6fxpQb7TLVKBRjOJ2jOpB9In88cAeMj/1I5c74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8e+khdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8e+khdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A942DC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725474953;
	bh=14wuqUWVRphVOcnJmhWh1KFRpGkm/PAgLY3Oo7VeM6I=;
	h=To:Subject:From:Date:From;
	b=K8e+khdiI/sOj9gLVKzHF9prap+S2qSbG1zmbrTo4PSkS4LyPcoF5l7JTpnRj1uwf
	 ilj8lnig88xNpkCBpdWiiHEvN7szndoKAabLn61vgm2/AmNoZQrkPRZPK36Ynk6YpI
	 ozJYHl4R6vemDMMImN+EsA+mDixDJs+0lvukw5GbJYugJBAMeOgK4w76gOnZ6oGrLC
	 g4fYCDu6xuZgp3+X1Q23iv5/GepXlOjWopjmZAafUeujYw8o83QDwO0NZrpleU0zYw
	 VX6qRzzBjJMvnqkWSf6pZk3peROiEF3y0QCujQHYWcuYg0ESc6D1cEh4K8TQm23pUw
	 gaKGbty2dPS0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538DCD4F21
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172547495359.9694.10059649253906247521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa21e81fcf5b39b3b3b479e9a9c2b9955eb19e95134b99eead0903976637466
Date: Wed, 04 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725474953
