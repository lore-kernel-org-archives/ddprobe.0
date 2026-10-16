Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB084EF15E
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792167034; cv=none; b=boW+SQyeLYrcopxn5rnUCS2y2l4tzgGQ9Dk7T8UzADuIfucgCFuJ7mgtrfzpVPU7JpSGedJDpv9Hhg5onXP7C5KuhA4tILi7RVJ/2n6jwnK77ETNlfIjvyUGAA6JOXXOigy/tYX4R+k+H11X8kgbjQYSyYLgJYpVxcLR78GTse4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792167034; c=relaxed/simple;
	bh=a58AElALOSyhhBrbI5tzgSXMoWzs72bPeBz1vd/uWDI=;
	h=To:Subject:From:Message-Id:Date; b=D3En1NemxvV1WUKXoeUB0Z+nYsI4cKGLhedBfivaC0nG7DyAJhwsiGzUh1BhB+0dLl4e2EAs/orEO/l87HVcOAg0kJmvfImYQ34IBoTn88UsQBk21JRlPpt6B8fxpJjlK3HueHylRUR92XtqUHZCC4LnfCF6zjZVe0cw8XQT9Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE1Kak3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE1Kak3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D710BC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792167033;
	bh=a58AElALOSyhhBrbI5tzgSXMoWzs72bPeBz1vd/uWDI=;
	h=To:Subject:From:Date:From;
	b=JE1Kak3ToLRNciD7pAkLevhYC4qKAflsf84NrJ+xHyx/ZZw3qFjZONcs/Zqy5p0oo
	 oxEo2e21nXHCKg9dG+T11ZFwOJvAu8Mbc8Cn/wE7wU6gYd0v3Ilf+nbsiGMkcw4aaY
	 F53SzwTBGE2UP7ZHlFJBlScNxD0XGKFsh8G8l7mqA+xEbslt8alOCSesK5xZP7JO4w
	 lnxMjL7YFYBntb3qNrnuJTw0DycPqISWu5Z3r+Hy8ygkULfl5i+mn1utAqs2uvRwGQ
	 dbJft4dqriJ83Dx4kNiyML7WAjU1qIXk4O+bFVWK0L2M8ovsz3+vTd0oNgsyL38A9H
	 Ue9PAP7hQVv8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C13CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216703371.19117.2633539525712992896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abb77cefcb6003a6288b65a0a2605f0504f885841d80725613d865db729f525
Date: Fri, 16 Oct 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792167033
