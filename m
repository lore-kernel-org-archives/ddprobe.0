Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456C01E7C18
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778046454; cv=none; b=RntSJqRqtDDwRf6NiiQCCuSYRiaVRZ0IUE2Q6oiMNZGvRorZy+zUCq+eapoChJmwRbc0p9cjRntYesG2yJYlgltg8FFM+B1aXGOTHtMj+rtziStq7JOKoE0GOelOhkv/FKKACLwjaTsPLCaCju7hGMOPjrSEYp7qk+5WHRLdUPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778046454; c=relaxed/simple;
	bh=vlXH43FmpOqA+g9ucCqO+CZQtt64mng1C/DaZGPOhAY=;
	h=To:Subject:From:Message-Id:Date; b=FUM3tf1WpmxEd/zux20ElX1MQOMk4yf6NZw0dzsWknt8AztSypBlgxygfI04e3U0WQz74Urehsp914firXfHhppiX1ntX8xrdJObzLhrZ+puUWQk4jOsqfctqtsxp1FK5O5CBlnRCFeT02eTGJMxA9aO5rEDsicpc7pdsVBctS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFmkwCgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFmkwCgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA05C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778046453;
	bh=vlXH43FmpOqA+g9ucCqO+CZQtt64mng1C/DaZGPOhAY=;
	h=To:Subject:From:Date:From;
	b=LFmkwCgnrgg9OY0YDO8o5R+lIXnyA3NLn6gQACquf9GRy2rwaUkOibLed2zK4LgqB
	 w6yq+6esASQfkroZlHNqmJ/QFvAt8ajIEcvxiwClOfDz+7s58TllfsG1/2W3kQXZDg
	 CA15RuZWeBFtangNHlK9K0pcDXqQxyh8w6kOFGkGvvFWY91L7lpom625fiUjZInnUu
	 LkXeIVKlUU8Db1fBUHBg288ygTCBG2BHgJIFMu3wRNJV6DLZbNPE3P+ucaoiWE/R2d
	 pND1uOjLJDhnLfxdYqB6vapLxpjkiVAL550ASTGBekqMZ0pqLZXQczLxBiDGqWH3ae
	 GPHSahrnH5hUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA1CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804645368.5599.8488683117451269687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfb2e0fa8cd5082a7226905e380c3e8d5fabade08c36f2db2c08c1b5d73091b
Date: Wed, 06 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778046453
