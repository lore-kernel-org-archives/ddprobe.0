Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7E62EBDCA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759487995; cv=none; b=tDXk2NTSPW2Pp+4nAyLbpntjfgq71CrZ2JRAoUHx+ZAzryl3QA96nFsDQ5Pa1OTP14+Sgo+/UHP7D5Ovf2jmLlIfw9mGCG08GBTYOFd4uwLxOfKKCS+OY4Hlw/YsFtC+2BYTHvFQBAo4udpKUMS1vX4NyKNB4HRCj1ACO8PxkGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759487995; c=relaxed/simple;
	bh=ewsWODb9jC26kw9NT4AH5uI65hzDOytYRzwZX9kXqhQ=;
	h=To:Subject:From:Message-Id:Date; b=f3LwGBJh29IQ3QzRH/HyEHgR9oOhQBZOPPGZrAn2P4pLXTxHY196ySGQto+m8OU0jK5y8YJj4yV5oBpzZ8oJ9MobstS9a+ZlGlEIJ6UAQsojIkt/fqc4+pULq6VyXMP8qcnMogUg5ZxDJ4Iv1sy5WvGXPM16sbccxCIJ7XO+W9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2O5OhTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2O5OhTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1991C4CEFC
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759487993;
	bh=ewsWODb9jC26kw9NT4AH5uI65hzDOytYRzwZX9kXqhQ=;
	h=To:Subject:From:Date:From;
	b=d2O5OhTNn+uoi0DWPDH8cfLYJ6/3/Rlp8CtcsIjlcU1ZmkMK98IJUCmIt+GWsTrnW
	 osjW5oPvMHHsfW6UDfcowJNoD7hwXbg6aUrtgG1C3kQ+K1b95xvI+zrvegMlF2pLdu
	 RXh6EeFhL2fdiY7llt6Z2Xwd44gqRAZJYdmtNDXobMSymSLFoOW53DWgsqOCWosSbd
	 PjJesTAOX2o3zs1SIQ8VxTOlqEHKTqEz1wcktsHuXY4Y8lZsyQXS5ilfy0ypZu+EEj
	 olA+50SM+fdOeA4DkDujneLy6+iOlgc4wwAYJaTypLPXu4+xv/3qgRLganPxDoVah2
	 V01Te6zZEHk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACDCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948799357.14066.2311545728949295817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225e9640520fde40ddd548cd1672a85e93b797fd66deda6c9be0713599aa6513
Date: Fri, 03 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759487993
