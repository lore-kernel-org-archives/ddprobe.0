Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBD933F5AC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773296694; cv=none; b=RQgUC9DGKhu3tLQpDGcTz4J7/CiltCra/TaciPb65UBXfkaMfzpFWldmq4AaDhct0YdKdEx1Jr1CbuLi+FkP74LCofFS96lg4xTL+HptHOwVEiibRlYedAztPT/e6OlGbsCoX3w4TEhVez3aS16+vspqlZH0wE+xnDIwJt0Xe84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773296694; c=relaxed/simple;
	bh=K/qSdTbMXdh+9Zd/+oIatt/lPHRyu479jLQ6l0qOr3U=;
	h=To:Subject:From:Message-Id:Date; b=OkUrjDEoy63i0vsPmCFOLccBEOEvScnN5akKwR0y3wHyfghnphlAJt2Q0nfMpV5hX4xIG6fZrFpweskTi9Cyk+rgwvxVYS/vWk1tQIqsv5BqAmVFbtIar1bg72/yrGYF+3gvPRk1o+lMAFW9eqrZK/7poESPDTZpDfAX6Uu372M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogabqkMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogabqkMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F7BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773296693;
	bh=K/qSdTbMXdh+9Zd/+oIatt/lPHRyu479jLQ6l0qOr3U=;
	h=To:Subject:From:Date:From;
	b=ogabqkMpLF5n0dQLeDyu8OmChPAm4wCM17ct3ATq31R7FbVpp8dHKB4fMgEwcEgas
	 yqq4mFVtxTa2QA2KegGL/QAP1icTLU6Ch4+WdF1JNRJB5IE0Gchv5GLZ4IA+LvYYdk
	 AP8FIdiWc/mmuDcDksJ7lSW+ZGYPA41yO2CtZwlXxz+/cMEXk9nj7KFCyRCj4XIr7d
	 zDQ1Uugpoq3dLXcwGneDgH3qTT9EFwsgfv4kVmqrG9c3R2nPhciR9Dp1tcwmv5rMg1
	 xRZnYMinFwJ9Y24kHaA6SdroBZLriTrSy0svx0Y7mVQ899ZqKTBuvq1GEK/mxuHqJa
	 p6sMQX+hchTag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C60FED2CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329669357.30110.12746285130855034620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5caf62a01f4a7401b0c446d208366fb5ae034bdad0657adc444a315af5a2ea3c
Date: Thu, 12 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773296693
