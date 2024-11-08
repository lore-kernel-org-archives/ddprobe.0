Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E851AA1DD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731093954; cv=none; b=tAwA8nL+0GKG/d7YOebPKglAoiZiMd6lWsERL5PZhkbgTjTIRPErooELWQqAM38XEY7AjqT/suSDmoXnfd4kH5vYPw4f8YuFiAYx/WoN6hpWr2KTb3CW17wHtPQcQJSXuXQz1SNmwtitNVcu3mrMJhVn9sjgbC7P6oAVRRTsves=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731093954; c=relaxed/simple;
	bh=q9DiI86kMonm35MtVY8D5dn/W6YnEtlFhmetCwYIhjc=;
	h=To:Subject:From:Message-Id:Date; b=R9qOgk0Er9TrB9sHmVw9aSfYqJPXJFITTC4izGdHOCP7E59JMcOT8bKfbPcZQkqW8wN4J+dWptBiKwKvj1ibR3ULiuvqrfS7FQI9moUpWMtsePUjnAnxGe4jDZfEU0NboKy2t7wruvv3s5N1B+U/vtq9qa79E0IK6+Ze9m+2N98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiNzpnNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiNzpnNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B6FC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731093953;
	bh=q9DiI86kMonm35MtVY8D5dn/W6YnEtlFhmetCwYIhjc=;
	h=To:Subject:From:Date:From;
	b=AiNzpnNvHMgyXp+BcfnpwnHZA1ypAAR8Ya4y9AitJW3914Ql3IYFXyUQJpFjSu7Bi
	 Jm5EB5Sg2UGFXoZMyuyKv9aLdzkHuUHcj6+EEtA0XBGYTzvhEbSRl/FfeO9SN5yakP
	 KBjDfglYOYz26TuHrnZzGIqmfYhCfHztkWdjwOSasf+N3Xt+gDAdUZwDTHpChdQk7p
	 R1O4cMiMZ54rkeHGZ90RWIsEYGa4g4AJhvebHl5XTPIW3VSYPIvlZo4B9mxGdySA45
	 yOApEsN+ssyeCDyHNyiUrRPLokvZkl+2tsDiKpgRO9K5ofN7nGauBGmE03fktcLrmP
	 R7T5g7w5CAvrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91738D64079
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109395358.24938.13452487612065939545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3864117844eea6a0d598fd51416a3f92759ff104fff30034ad4834d6cd58d831
Date: Fri, 08 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731093953
