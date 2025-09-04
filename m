Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C844A3C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756995594; cv=none; b=DrGBgBflQzvnz9RGmuAB7pdLFrIZi9HLeYIwsYBkrY6DvZToncXtdqXElZvDLBLhLY+oLknyOd1VsX3SkH3l4FXrS0BM6paTvlbqPXsqfj5H3hYIHW4qhtZB5jugB2xHrPM74+7CV+7AlaIzooG540N2diJakSQPRR+yPidOQ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756995594; c=relaxed/simple;
	bh=MDBMx/pY70h3ykACB7ZNwqIzBSU56A69z1sr7OHHmaw=;
	h=To:Subject:From:Message-Id:Date; b=RldLWAgeb9Pa3inzl9DH2U3teR5rAW6l/J0j/tvDp2RPBlbg/50ukCAcpgVpEHJBogJ//nt4zWurwFnepWW6IQOozUw5H7aOtsXQ3MrJcq3eJp9DVimw3InumMS/OwQrJM52Tve3Sk7ysrF+TD9i3O1/ss0+u8WtZaIMJQtbXCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRuFFJmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRuFFJmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94ADC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756995593;
	bh=MDBMx/pY70h3ykACB7ZNwqIzBSU56A69z1sr7OHHmaw=;
	h=To:Subject:From:Date:From;
	b=mRuFFJmKe/IaC+A68pfINSXxEnf/310AoiWYtggSksx4iXbg+goTyTiGOABJu1vVA
	 wkjVZcYxdXctYNTZaMOXCBw5/NOEZYeNADEzv7CrushzEXRK5+wtzVaooG1Y1Qf79u
	 ury7hK7sqbxcVReLpMNGAR0eM3O0SO7da8IcGT3GbKxJBLGwJZEt6SS0jxg6/kEiq+
	 hg0sfaemMu/MbfY5SciWDsa0fTMxygaCI1eJc56QFme8a6H1K90yMebDQM10YBnzJt
	 1IGXK7LpP6/B4CbB6wQQj5xUm2MF/xpwYYtBD7ijdUrv6oWeHC9fzgW5mX28a1sWl2
	 MD6dxCxOgsSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E9CCA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699559359.2016.9231499475602217308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0ffae8dbbe6b83d01fb95c36f693c3b73205d2597417169294579dea1e994a
Date: Thu, 04 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756995593
