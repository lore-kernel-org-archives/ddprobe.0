Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2280728B7D4
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751288994; cv=none; b=Q5hNo4h9NSJWCcvWNchqsVFek1Swtv5uo+YQhjCSaVsWVfePipbpcz5SIn2TRpIjTGcaLdvYl5stfFUfBs3vn32Xxd1HqSBILpX3dQpER0Pi73ZgP6AB6cCfiOIRmVyg9XbPN/+W8M7mYmTWD0ihDGClEZzqPMf+gNYrgrenmpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751288994; c=relaxed/simple;
	bh=mlXljXbPUcK5NqCB1PARrEO1FCxZs+zz8GH78w8wa4w=;
	h=To:Subject:From:Message-Id:Date; b=pSUMs9EbcKpa/CgZTmW9jB0mJGSu7sYsgzFhWdH8a/LdY+tifeT04tHusSooIPE2RxjCS/msuczHSJEQ3GuxBUX4qfmDNH0kdokcYXwrTbYnhm+Br8kUUUhjmncD5CDlx3kse5cfdfyF4Yyf8t4Fb6+5Lfp2fDNrBq5WnOOEetA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdgIwl6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdgIwl6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3DDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751288993;
	bh=mlXljXbPUcK5NqCB1PARrEO1FCxZs+zz8GH78w8wa4w=;
	h=To:Subject:From:Date:From;
	b=MdgIwl6PF67Dymi5DUtKULOKScMCIRdpucafIQvMSEwRJzAuXVA27ml48VozHZYLc
	 6f4OzXYubZ96A9u/Cde0wqaoXBbc+lT1uhvKv457VIx8lwJK1OWiQBTluo3AOrNHdu
	 aQTqWFtkrF22cEQNkseOL/rPvOAoCuZQnA30Vs0lqMAuMJpJ4xU1Lij3oJYx+7zFo8
	 eNqjp7T/dxqpkI28OGNVBG0lr9Vn6qam2o5ILDaTkXJtZfHRbULyaafWKhp0OyADZu
	 laaYIxVDOhvsDYTvzcYeu8RP1FIlhcwEnmFkgXE2zcD9IhWRX9vO8YAYBg5hvMJB56
	 HZsA+n2ae3nWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97FC8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128899357.28196.13053762021192879623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cfb49f43c67aef8bed6c9efc570c33699adbf683a8744451c9c96476d57d6a
Date: Mon, 30 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751288993
