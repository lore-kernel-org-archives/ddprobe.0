Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA2625B671
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747823994; cv=none; b=UElDZq00dk1JR27XgCcRO9LXKxwcYLVN+cQtY4gOGR0vVfPh18DY5SRaTD1G531Q6j5pIs4CSjEB1Hx8cV5OvuHZa8ljSQLa+RA+dqfxl9gxRQ5y+ThYiGX0LKhqSLdRxX3vBxcK+VD/g3yEFqGRZuHB+wNbrlvCoab4rCxRokM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747823994; c=relaxed/simple;
	bh=S2cwu6TBzO82IYrgUyhbRXpYYqRr853P6vMuBZWxSqo=;
	h=To:Subject:From:Message-Id:Date; b=q6sgiZUM91rFkvfprHA/eVh7OKCBqgg1o6lpIxdoftEdnTgFdTvJMEntxzLvURtq3pIYeCV5PM6m6KqYp7Xz8FOk3IAmTncM2lVOPWkPNRC/PWIM2RRtfLvqV9oz2SldCw/YK2Mhn46f0OiB84M1O98ofwUzr7fuVsfGSKCIIKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+F7cLNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+F7cLNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF06C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747823993;
	bh=S2cwu6TBzO82IYrgUyhbRXpYYqRr853P6vMuBZWxSqo=;
	h=To:Subject:From:Date:From;
	b=b+F7cLNKUiDdBc6XYLAaN/aXLQlsUSqa+r69OXiK3m2l4zDfxi1YA1D7W/boQDeB1
	 R/gAFetOO1fc2YqI+cvpwN479m1zeHEnksuPwoo5FXNJ0yyBJGk1r93BKuTZd/qHS5
	 170U/Zp24p2hmD9Ij3m8DR+DVJi8oTwtmQp0RX/dooGdBqH8hOgC6hzLrJFUDgOlsH
	 2J5ehYJHQLDxj7xNErxTtVLqzomrQP8R6miAK0rxiavrOJ6XJqvS+Uiiz7MIwEYFYR
	 sRsEFig07sRmJw/11VxSfeBIpfp1nnWFHoaW9A41ERttu9vlJ/Elel3s8MxMkYb9SJ
	 +b5mr0aBF+3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE88C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782399357.21488.10762515822938664630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f4fc68b727d1522ca67c271284e254483fd67c3b6a39f6d97716f41d618adb
Date: Wed, 21 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747823993
