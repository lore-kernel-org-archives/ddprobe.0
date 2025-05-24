Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C31C158535
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748120994; cv=none; b=c5f5pw8fPaeG3sD4888h+78ZFJ8dR9Z2YVOfcAYzM7IRIWt53Cy53xeI9qXo/pP0QQuqziPil1ICc9EopWFGEE7CFPwhtjVdwxHhIN5DqzDGghmE/P4EYp6m8qljIBR7/l/CyAvN68GoA2/z5lAnntwZ3KFvYS6UhVGmqowkHRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748120994; c=relaxed/simple;
	bh=F0wsKx0+sOk2Cb3BYgFfGHJiBOFRZ+3rV9Zw8lKTkbg=;
	h=To:Subject:From:Message-Id:Date; b=Iwq9g/Vfz7AhZ84WKzhL+JIKAH+1aelOSldpzXbYwMALNPTcgaV9wo/jvf+CAYEARBf8DRduOFq070aythlYE+aR5LAU9oqyWdWFB4TzbBIsSRakHJMB9DQnuNqOMEPua8eojnt4dXd/ylKH+yaVZk9ryH06vY+/vZKqqmp20fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSVKNbXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSVKNbXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CB9C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748120993;
	bh=F0wsKx0+sOk2Cb3BYgFfGHJiBOFRZ+3rV9Zw8lKTkbg=;
	h=To:Subject:From:Date:From;
	b=GSVKNbXrRWEhtw2pEgiwWz0OlPfWGjJ5QTgSZBXH1guhuMLc/fgpHjGJfnBynECpQ
	 JA+qiGD+V5WiphfNHbogr+tfv5pb/kWXSDgjPpGJNnSJSryy30+dmQoVGX2vJpVQGy
	 L0uVKxwUNO5MOMypcbxNPvvH8TFa5LK5DjB/0bRqg45TVz8nrBMj2gYdQrLKN5LeJL
	 xvs06vXLbslmY3Mnfl0TPHZ6xOguDLYA4rAUPlTBFQZzpXCQl524u05X6p3sdBhgIb
	 rvKeG/Ker52O/f8hryVFcTk4eIvksImV8uHEpo/2qKy+yo4aUlOn8D9sCmZt62bkpL
	 T5Hfu7vrLxX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96135C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812099358.25234.7046898018205365200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751350970c74cb1f93b35f276a8db18e4c5bbfbf21ab1174c7cf263bae0e4df0
Date: Sat, 24 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748120993
