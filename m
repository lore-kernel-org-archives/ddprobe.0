Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D6363C
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731735354; cv=none; b=KDVjqQEUi3mYS6CIhf4svmM8jbT/7u1nWxjw+FrgrPXaYgpS8LY3PejddRBviK155qAZ4p9QHLvvenx1Uc/nuxHFpNMdD4O4s2F6dDF+AFFZy9918M77zoS+/ghQX94dlhKng9dTpKmqlFmjhvolpzTyKXzYVYDMntHxG2PXWts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731735354; c=relaxed/simple;
	bh=R7kyUQNT/IEeV2epFS2wyLPesqLtM4oP8TejZTnV9no=;
	h=To:Subject:From:Message-Id:Date; b=LCoZYdS6Zx46Xjo8seoWV/j+LRJ/hWGp6dtNTMt/NPSCV+vrerYXUFIidLFHbM5lXR7ZsU1kpHwXT8/f6i2QDf0ZeZ1IhQwD2NA31KcKYvxgLkTDbC1DcoUFAZiHaKJRr7d2qDNdcPxRTufEEb6Anjj9sJ1qOhSvzcNgrjUteTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5yXpkqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5yXpkqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30F3C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731735353;
	bh=R7kyUQNT/IEeV2epFS2wyLPesqLtM4oP8TejZTnV9no=;
	h=To:Subject:From:Date:From;
	b=N5yXpkqKlWYeg6fJD7AUaPr89dmXY4Qe9E1H+s4L39mn/SjzuYQtL//loB6EEx2ug
	 K7pAWmVpBbzITtK/FFcO6Oa/x4Z7xOy+rnkIPe/sXUm9x5sgVE3M3oYGqOoquetkuB
	 vunbJ2/4LKtKOj6+7XhIgIFrdmZtwjIsCq7TkgLQb/FJMxcgeECnz9dKJGBXondDyv
	 q+l8smOvfZWi3DSxxN7TDu0OR21Pd8hImDupSXiZgPkyUzPQkcrPwjdBnRmeFCbmxD
	 6l5m57VdkWbTt6Y3TVOuZwPFau/UMVy+uA3RkrXQmx2oQ9jmEeTFfUPt3za+nqpzLk
	 W81kdxxaHDTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93136D68BE1
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173173535359.30487.6570863441801572074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e6fbbc286c99c4498290ef885975105aa92b4c5550966874382b45010795a0
Date: Sat, 16 Nov 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731735353
