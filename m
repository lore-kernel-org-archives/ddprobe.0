Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60212635
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 00:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712880563; cv=none; b=E01IK+JgaIt76NOKl5NwkoCM2Wo4EqVWEIUQXuJMumJzih5y7g+inBIwIvoH90ssv/OMQ0V9TziYqLosVsErdHOP5CrZifzRXS7xv5z9ovWlrV2x0eLPgCT6U0w10q8t4Kd5GWEn4iD0aweWM+xPg+JwcjUb0s+CbPg1vskL8Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712880563; c=relaxed/simple;
	bh=L4Ju8O5sr54r/A0CTgCH0UbWSQzgk2kLhIpHYKnnH1w=;
	h=To:Subject:From:Message-Id:Date; b=SPmADJyouCqMTlAHH3yx4QSsT9s6RS8U8eiEiB069faKuzmUT8V3AVHfUM4utASK38lRpv73nhwQTOeTvroWWNc1kQvqHm120SaNbiyglmt+P57YPkinMU6CwZwPzyOhBdP6UyoftHu5fgfqgnrhjboyM2yA9ZgsGjpgHujzXo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjHXCycu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjHXCycu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A90C072AA
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 00:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712880562;
	bh=L4Ju8O5sr54r/A0CTgCH0UbWSQzgk2kLhIpHYKnnH1w=;
	h=To:Subject:From:Date:From;
	b=rjHXCycu7yRhC7o44/wAUQ14wNyPEE2z6GeulyiY8IdKF9O33YovKcqxVkF980V0G
	 GTu1Xr6ecyvTiJZrTG8fI8WftuLX0hwz/MAzm6w5scU5hJ21KZF17nLjoRcWxhyWV0
	 Vqh6HqcWCqLc/lcEJ6tQ1YRiU788N6MVuJzAcwdPQqpC3T+3CyaM9wM3RfaHQNpCRT
	 ggpkcnHyN87ln0z4tKglSjQbZohDlO/8Qp6y0XtmKiju3IKqyD776FWfSX39CAV4R2
	 Ey8pvv5cvcex7HNn02yrJ5jzT+srnYh3ctnGf/5D7qWiMLLLMInunmFehr9WRRDjaL
	 IdN3DZj3CNWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0EEC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 00:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171288056280.28804.17113191613052348995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e54b904267723c9ee654339a530c6f14de4209b96451686ac9f5e5f18de973de
Date: Fri, 12 Apr 2024 00:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712880562
