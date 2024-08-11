Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8B412E5B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723352754; cv=none; b=JRnSGFFBzZdqBh1G3H0qSLo/o91xNiXKwmxDsGisgkRss2+7aDGYsfZlFBX18VPm3J34svP0IH5AS7FR5ziCxbUx1lJYEE9gnNrkCDsm4U5ZALCskt4Ipun8RUIGW7C//UuJqYrOL5V19+iuK0c5ybeOoacMjlEw4/XpoEC0fv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723352754; c=relaxed/simple;
	bh=3wBtkSYEBW0fBjSB7ia5elrT2h4t2jciHy/Fu+e7XsQ=;
	h=To:Subject:From:Message-Id:Date; b=odmyrvoTLVgrSPEBiri6EkHuF5ePw8TyaQRnMdcFLfo3bq4sjQl6kMiHghH0ZdXoehuJ4ejxeBMmUBW3bcY0WPEeyjnhztmZglPuy+Aj4D3LHMnY6ZpKxZLftYIjzxEcKCYynVMSxmrTsSZUG0m8z2dRETjvopI30k5b8x+tNTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqKT+8ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqKT+8ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CD6C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723352753;
	bh=3wBtkSYEBW0fBjSB7ia5elrT2h4t2jciHy/Fu+e7XsQ=;
	h=To:Subject:From:Date:From;
	b=JqKT+8qlap2g3LTqBbbQFmaG1Gd6p3dWXzjzESDneHSgwKPqL99JL0/eJ6R0QWqae
	 pZXczKkt8llV7QUVJCUpwRpExJKCiGSjMKq9gLYP/MIuM4KJqHc58cObYHZJtG9C27
	 Ot9+POr3dmy5p26PajKrLo9SYB/LDguBazmFhe0St7I7lY1TLMXYE8Lze9hY9gEBat
	 TWVpoxYURhRa2Umrdt8GK9KcRSvr4FcuB1MdVqQrogON192rDWinEpWdaMxEYGz6UZ
	 F9b+imV6yUnfaitDsyA5tEvgWXqiMmLI3JR+184O4/V8tMsAUV2bjybQVDrlJiiWh0
	 ysZQOhPo1QkWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9762DC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172335275359.3111.10399937724775434789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3eea9953ff4c9b38f6d3f222b1ef69f42eb162a67e2a80cce88d5fd4a3baed2
Date: Sun, 11 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723352753
