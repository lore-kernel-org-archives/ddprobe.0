Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAA9394
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722042954; cv=none; b=AoGtm3IN42tfx/p+39Z/nOCo9zJ+IxujWSCdHssFb6RHtQggRxB/PYxO21fsk6Vt4YWRhLrP3r6c8kWEHWjo93s7mxUBuczfBo4lALDkt1fQck4Wf9V8crSccbNQ0KPPJthWy2vWe16lhaUFnp4Ielnrce3hVJsto6BMv2rsL88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722042954; c=relaxed/simple;
	bh=vfLcdbRVqqBAZUxK+t7elQcMeE4uLMU0lmQSSoTnyQg=;
	h=To:Subject:From:Message-Id:Date; b=H+KanTCa+cUH5PN4qOPWowc3MWW8g6cG79GKs1MskDx1wkcw9fo+GhDtIWyka5x0GBUWdCSQ88R+sMDxSDkR5UGlAYUqdpYPZZIzXKllf8PesYnS5QKy2S7e7xcnce24tkm95yppq/xA/VhAdfRcpSti6z14+qaB6tnA8ghyV2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5W5vsI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5W5vsI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E6FC32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722042953;
	bh=vfLcdbRVqqBAZUxK+t7elQcMeE4uLMU0lmQSSoTnyQg=;
	h=To:Subject:From:Date:From;
	b=s5W5vsI4+Hz1BaHl96usfwquSAdqLppzW5egqgRzpD3Ay5PnMWGPE1+EdSa3kBjrp
	 oBhhhUur4C3imI9PwG+CIa6Y0RCtjoDOFBxbBi+JgV0h6hfcSunCGSxS4MX0WNIp84
	 j+gMAWZbGCg96iTlSt8KpEV7J2sdASb91Hh1C0++QewdYTSMh2zTtMlyCQK9tjw4b/
	 dMp0hg4s0Ni56aK0VzYjWIStKWREfVau5/M8y1gktENckofeubrSv+71QumQrTw4Ul
	 e5GPHksf/aB4ytAGWEmdif6JDpmN0fQ8yEK1qc8oLdfnHWUMZWfuW+QaSxQwlWyUek
	 nQ08aEj2h/alg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970C0C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204295358.4514.1488615507029609668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1543e4a034c794537d3e47c4ba819f2b5f51927727e0d7783b53bd100858d2
Date: Sat, 27 Jul 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722042953
