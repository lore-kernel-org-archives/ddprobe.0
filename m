Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2317218E91
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785441634; cv=none; b=AkCX/zLDE6puYQM7L7k5Dq2xjx46e+b3M1x0N+czdxgi/5NAF7sPqgrlw7FTniDY74+Km5jpY0LjPeVSbWDXIvTxi1WXjwBDJQQnFHwwt3E+3gDLJM1tzAW79VfdB/UDYicoVZqTeBN3/NPxHgeiD92JaL6VNI2c4O7uKI0Tvfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785441634; c=relaxed/simple;
	bh=iGWxBDWZqQbTM+PsT3B/xiaznITBGQ4bWFUw/cNqKYE=;
	h=To:Subject:From:Message-Id:Date; b=Eo294FoTn2m6ikp4gGN0CofHE0apeTWVBgSpD7RHOGqJvTAAqKVSuk/7rLUClRMMLtXGeYIBsLZic/1tP1nNh2r/NbHnbso0JIuhptFZe67q2JfMAKQMPnuN3WqW8pVomdDbPorbooxnr5d28fAOxWGNyVIBm0W78g9mvL8rQ38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwX8geDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwX8geDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD159C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785441633;
	bh=iGWxBDWZqQbTM+PsT3B/xiaznITBGQ4bWFUw/cNqKYE=;
	h=To:Subject:From:Date:From;
	b=BwX8geDZw6jp8KrXV6X+BkDcN/5s7EQowPtPUQxYHRJo/DYlmojb+E8d21o/t5laD
	 3HMFx//7q7lUoqvOMF8mFpE03FjUJxkBTm4MU0ud2UQ8r9BJCmLhFoSiL3CFQXp/nm
	 8yp1MQxVYxnNb4Q2wwwwcXm+fFwc2BC4vh6L75za98CRzw0XxHhHSnOrCOKEDApoyY
	 lxVnaSU6rWkGnkbUz82GoHkoICyEhvvmuIvUQlMd1P7YKpkbjfdNRIoQ8Pa69/YEci
	 tugA9y6+QH1DV1MpdC2YisZ5bCgoskVlut5MsyTaZbXaUbuvTGIC86JTWZNbxnTtBh
	 RLQgPfC8wrGbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB9C5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544163368.19408.10103432966197412413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bcca8d91fe0eeb6ce87a996ed656202a6a832e2da1cdc47d93a8367e3874a9
Date: Thu, 30 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785441633
