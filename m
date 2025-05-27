Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308828F5B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748323794; cv=none; b=cCEz7HOseEPs/jsR60iI9Roi/31V0uGw5DL9CTv4R/yULKdXmMNeuVk8uLp6iINAS0cQpVdRqT3q/gMg46hPzZH+EzxAEII5WDwRkYS58z4Y5Ihle5v5yyRhsD4PWAdm1n51HeoLqFFpyzy4KcAGp/h/K50WQ7A45IYsVDKAOYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748323794; c=relaxed/simple;
	bh=YvGB7Zd7oYPPW0C9Nu7P8zkSBfzkeZJVrnKzrjzj930=;
	h=To:Subject:From:Message-Id:Date; b=KBazp1AMOHqcOH91qsitIYNKLEhcfvKQNTbfUyxdqrOg8Ky2jIPIz5h1wKKHb0JHldRFnVYQx5rADIqQKDs2wV6B+VywIfsW+IFj3iZIr57wmWEdeOATeEJSvixVC1BEFGFOS+Z8KRFVJMIpJMB/WIr0uUYWy6jZl2yWD8z7Euw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPF5thwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPF5thwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC98C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748323793;
	bh=YvGB7Zd7oYPPW0C9Nu7P8zkSBfzkeZJVrnKzrjzj930=;
	h=To:Subject:From:Date:From;
	b=iPF5thwFDOeYtM1mi6d+7aE0yPwUk1d6jwrKe6+JF1go1jDcIrBaQYtUb/AcrntWN
	 aedgQ7B38D7T7TM6EcH8dQELWP/r2Siyew1ZyPu81HtnKlr9y35u5wmilOcCBsEMYL
	 9n/XtjkkX5PoxEeBFF8fe/W5rt0tGlQ7a9IBc3pOh/4VMTBuslmm6SyrtXZF+l1zoX
	 Jxk/k43X4XzMa6oFfVK5sjZlz5zG1J8uYOXvESrlcaoLrzvtN127wxl2m0TYiaZZ4T
	 PccvoVay9Ywockyi20BEbUwHz6BMCJ/l4JpNeFirDy0nBlfYpQg6dsz2xEPDZKAYG0
	 24ULKyNvlyBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE13C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832379358.14203.13731187194667656907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a7e9c43e4b5fcf5b7e7e0d9158fb3db5f547a95569483e1f858fe05da1c282
Date: Tue, 27 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748323793
