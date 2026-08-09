Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBE623ED5E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786286434; cv=none; b=hWSyGHfKuH7GujV4Qv7waVK0r5rA48CX0tiv8Q4fOPIygBb8FzO+sbb/S3buKSukp5K9sLR/WsMevGM+0YSgAb2gLRQCP4TOY8Ah6ha+Kx1vwwtKOHnuEMoJAcMdPT4vLyE4JVsn36yD8DPHkVpA/zMffV368/ONBZW/kxukFBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786286434; c=relaxed/simple;
	bh=zlHIJOFSpZMwE6lay5fT3V2u9/dgyDD7P8XCpg3omAY=;
	h=To:Subject:From:Message-Id:Date; b=WzpI+30eBSNJTo1L+D3ynD/MpGFE5BmVXR80I7MssvcaSwx8wtVsSTPC2qrgqrs5jDNy1iqzKwFRPOwQUcijR75GzJV81HgfdHYMdlQDcBoPA+fKze2fUBo4mdKuplTzTMsARYfmWwD0e4zmHtx71ciIoF1+oD67edutzoFsoxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgGyjD4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgGyjD4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC45C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786286433;
	bh=zlHIJOFSpZMwE6lay5fT3V2u9/dgyDD7P8XCpg3omAY=;
	h=To:Subject:From:Date:From;
	b=qgGyjD4Mv1Zhl2lRVoV83OyuZpoWRZmUTHAjx9mhLplqMS9KanHM5L/aFSoa9jb6E
	 UFmByk7q5BBjPfoGKfax6ddHBV6HCtqSTz3nBgTNXbes2pOwgqJ8n3lSNL+ztXLTae
	 OvASklqbfODwB42FBnB4bNhP1uK39qkwvlSjg3Zb0AYR9lnyqfc7TQ2iaqAFXaGv7K
	 aggl//mEx6uNHcwBrtVdEXKkFJa72F00r0W9wHq1aGaQ74I09weShWODCShMS0RUO9
	 AAQIOmiKq3O8iA2xeVl6cbW/rahCc+MxRnzYaH2B1hEauWwdD36aUOtD1NfEX5mV8Q
	 DpDiWqqal1SBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EF5C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628643370.9048.1583177397782295513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f152f5024508655288081674fe47f0496bd2ccfc6a2a4d96753dd8e87cbbb584
Date: Sun, 09 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786286433
