Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2381D197A65
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728378354; cv=none; b=P3CY6USJvLJ8vuZ19raeLZnMmdj7NRshOTFdO3NOnBgOADi2FA9+XBJE4uV6ZLKuaGNE571oxF23Sq8dLgPQdIK+QDXVYBOpgV2meEWO18u5Pwal1fN93DgMA7Zs+tFcB5kvE5ncmcS5///EY94Qi5Q/M4WF4cy5tLETCpsKYgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728378354; c=relaxed/simple;
	bh=4Nc2t2EBbOVOcKRzmfCsgM/vX5tpPdDctGISKprCaCc=;
	h=To:Subject:From:Message-Id:Date; b=acpAgjdPLR3oYnNMl1go0JzYhLf7lme4X5V316yhWVReZBmRmFBlx5ffxSxtR2LiNBcO4UozdFCL2xoW+nyUvIUGkK4G3v6IddgjUO+aOD9044Sp98ECAmLssSM1M5lGk59LkP2dmGh6iUYuJ1dB5ZI7ibv6rkTkPJT47XJikfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbO1H2bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbO1H2bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB062C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728378353;
	bh=4Nc2t2EBbOVOcKRzmfCsgM/vX5tpPdDctGISKprCaCc=;
	h=To:Subject:From:Date:From;
	b=pbO1H2btBsKzfgu0hUIvbfniFV0naSQaN5iTegLptHfjZayKOWNreeTZGE+dEJIme
	 bTgjLDl8V4QQiHi7kG8+hF7v5pv8ddWU+c9Kho+FvxplFOzmoLxualr2HCiSJIsNCQ
	 qJ7Z3WIEzG+P5CfGUjSF6+exc573PwtFOfcHMJG6T3KwzQRr3LUW6tEawG+OYsLy1m
	 Fg6Egq7kefbeyj/DOvJjdIihgRB5v2SwF7+lXuj/9jksq0ZYW8DWObQL5U0eaQz1XS
	 kSDQjuSwr8kCiUFYMiupKsqA35b2dCKN43CjAfa2NDIKHkywk/5F1Lh1frepwB07Mk
	 8fQxYT0klGU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FDECFB421
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837835360.16703.63236250304815240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c6f835224cdffe8e6b0ec8995023d03966da303a5f73b550cda5d6fa3bcd44
Date: Tue, 08 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728378353
