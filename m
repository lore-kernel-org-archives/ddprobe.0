Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3B22DEA6B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769699634; cv=none; b=lOGjqjUSHdqGTXpb3Dy9AFcXqpNhQvnLfuNzPiXRe7Zy6o7kSIKKO7oHtmIl6APt8WJpM4GkUPd7wJzhRXY2tNSasd3FQO9Xf4PvpGn1Zi4cZtIW/JRF0OOqHC6IF/Mfk6q96IzHxPBf9/qLDjdWnTfUO3W3HL/VBvkvj18hovI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769699634; c=relaxed/simple;
	bh=zUlXL0AzI4vsJFoIv0bRu9WuZbj1gtT2VB52d9qCsNY=;
	h=To:Subject:From:Message-Id:Date; b=lbJI/Eo0JD2+6LDNEzV5PAY5PxitTO670k9Nij4gBDDHw89gL8PghFF1/4SOtrx2AJDKI3WRYKMrqiuJLqZUh/mCHUqzL3X1OJqgPHRSuydJtnwAfvTO4dqXcBocAgo/Z31qNwWU8qIcT4jh+mnB0hxaVH9Pyq8lheqCX0gtg8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp7DlVqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp7DlVqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BD6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769699633;
	bh=zUlXL0AzI4vsJFoIv0bRu9WuZbj1gtT2VB52d9qCsNY=;
	h=To:Subject:From:Date:From;
	b=sp7DlVqylBPglZEV7F/lq8CzQIKahZRsik8AISpUOGr1e+s5qRkyuuQ0/LAXyIZLO
	 V520evG8uRlVuUH9pE6A/vR7mtbhYSoZVmIjPlntTQS/ucGd0AXkAGv6LTsj6wKr5A
	 ahw2Rx/U3abWeMe5wgWx8yag3nrtooMFeXI7idozHkGWuvHl1Gv0cmgOas4OaR14jo
	 KiEp6fGWIW1ej1xPQpXkM9fSgtL14CmRYmJ6R9JUWBOw/x88G/Np8bjFXWUHFKYolk
	 2iriS6vil/Lv+QcEEepT5QFYpBI8560Ru3c/u9DaULikQhdQ3nWNTXcsan3IKk9z51
	 wDZwGoSk9B7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B38D61021
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969963358.9518.14796872573891680383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7f2075453b928ed8378a067ccb77e4721c0f50a08fe84ada5539f8ec35bb51
Date: Thu, 29 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769699633
