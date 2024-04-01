Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077BDD26D
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711972097; cv=none; b=E6lrPug9Xo1cU170BXoHMKQjUDktwZa18AB5eLrYLSvdn68dmt9fe8t1U4nEZMEM2W7meu763KNxrWr/Gc2Foj4Aj3iUEdjiNEwGobNJSG5QjBhkL/XcdQXNDLnwf+aP09oG+MVYAz6YkHYMM7kHn8S63vw/zR70ZtE6QefdtbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711972097; c=relaxed/simple;
	bh=LatnNabelHLOdxJSnqwMbkZhgnVf1zL6tWPgfLmIlYk=;
	h=To:Subject:From:Message-Id:Date; b=prA78UhxO9auAopHkpoaDbn0IRafef1X2olsUTtpOjEBe1iAUoKCihFLEhCWs/ZSm04wH5gxnRv7XJQpg0XwXjeVUhBsxeY9nRtJd99RQGG9IfARFBQAUIaRGK5lSTl5EzMf73CYmUZMkqu6FgUncdHVYpBjqFkDHekuFA3cOrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4HoqSY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4HoqSY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE35C433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711972096;
	bh=LatnNabelHLOdxJSnqwMbkZhgnVf1zL6tWPgfLmIlYk=;
	h=To:Subject:From:Date:From;
	b=k4HoqSY8gsdoqmNalVgCkJgbYESkrIeb1Y+RL94f5ECmYCFbwYp4rKcA3S0gezUZD
	 on0jZt9zgFw0ZpATabGtjnYzQCcGBYm/ddR8Eq4nKUia9wXLCu1fkuV49TFbCJqUli
	 OGXqApa/BJkkPm4y4T8zjpHJLyCsfJNXSGY3qtN/YYPzAa/Q5bCSlVPKayTvYrLSHc
	 jb00/xYja6iFkHaeX0LwaegfxalLH+Q54KUv+dS/zd7472mhKlseORMqfCIc4nPT9Z
	 xolekC22mncInn5jIDowXYAxMhkjY7faSyZqxh3L2SOG5e4H23ou/VAAKgDPozWcgB
	 TsYLf7Jm4EN8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66353CD1292
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171197209641.5397.13871563929414302422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9466534975cdca269fbc01c6e7cc5ae9a99c09c7a1380feab8460deedddb48
Date: Mon, 01 Apr 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711972096
