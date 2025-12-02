Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1690512F5A5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764640974; cv=none; b=h6YASX0q/+v56BwK/miyJHCAu8dzF3gvO9FZ3fnG6ayhF3vcGNpZZt/dUkTUBvl7br+LG3tYlfTYhrH1M4Got20g64V1rMzlCVGR58+ZKOXJDcBK3alCHwtDjjcY0lRVzSihXpNPr3uEkclkF4BKG7fLULDL8TiCpqfXKzgpbkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764640974; c=relaxed/simple;
	bh=7gTmqFvpWhFNtUtuutrP7YqufGPygJbWCVjieOb+9Xk=;
	h=To:Subject:From:Message-Id:Date; b=Q3gvW6jwNuME4C7xL9EIYaT301Z851ZtsalbXkp7UBLFUT5j/7StrPOyoW7O6RXEuOyR4Xl0htvWJoQwhl6+adUCq9vZHdBow5t3lDwxh+j+mqDgQESmCHWWUJD8zxrSjBdhAJbyk6RRScVFmz3WVb1psxIvWHKGbRxZGV2/vjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUOGdWzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUOGdWzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5426C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764640973;
	bh=7gTmqFvpWhFNtUtuutrP7YqufGPygJbWCVjieOb+9Xk=;
	h=To:Subject:From:Date:From;
	b=YUOGdWzUDbgh8P4AZnwSSm2DM6DcCKSNuhe3Zbg968AfwrNha5Sr+eCwb4tGBtQ0x
	 WpzR6f0Pd/SCb6sYvI6HsLiKS3VzjyQhedn5lWGr30TILMKHp6gfFV2gHV6Bbnc0cd
	 SxgF+Up94ob2LkCoVxeEyRRRiJpP6/ApxiMN9SnUiyHRNIyFic3gw8v7tCDOAunzU0
	 7L+9IgF4/LSS1+0v9/qjr2sm9uM7fwKBBz4Na6mDyd/BmyJ/f9x6uT8g/vtZRjvPDO
	 T695DeXnmg1qy9MunYeUKVNs9sSWqAhaT6EcvL4G+vo8vez5hfcxHPZf+n+QKLpJ/x
	 ZU28bNwCn4reg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F37CD116F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464097363.17654.13759905826052328053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8078e1388003fe7968ff7e90f9908cf56de1ba5b44b3a2f7e269d5a870d69836
Date: Tue, 02 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764640973
