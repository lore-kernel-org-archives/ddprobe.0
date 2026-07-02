Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0353F3385BC
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783009114; cv=none; b=WG2Cr1oXfJonb9benxkGoKCfr79Ga8Ri3PS1k9htVUp8RANnt3oM5lAHdvKG+ILlkdVgc1KkfcNdgQCk7w5VpNGf7MDn4arOIUKYO4irjuBsaUoB+Hc+UlFUBxJR+lucKiRy67L7PVlN3rvuGeSkDRHU5TBKVt9DstzSjCH4Z94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783009114; c=relaxed/simple;
	bh=/QRux4jc6A83dHo1bxcVhY+ztcrgUZsRKbS2ezBGabc=;
	h=To:Subject:From:Message-Id:Date; b=qY7y4NRlMydQrFRTE/fM0xnZVz9n80ZxW5uySczNf+aINKocd8FRyZYmP2kckA32CU1vp+flYSnBX24t5YI0TGmZV3gopxnsJTu42749hzv59iw+EQTR8MIhbDkBXcJYFDuCwy1Te9z7mc30WH1zqTbtm51usBeDExjr7GgJOxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olxGwUXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olxGwUXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB51AC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783009113;
	bh=/QRux4jc6A83dHo1bxcVhY+ztcrgUZsRKbS2ezBGabc=;
	h=To:Subject:From:Date:From;
	b=olxGwUXWjE0JrehutSynpmkynCOnHu+UlNz60M8xSYJNxV7V6uCZJvZZgTXCOjI+p
	 kdxJv6B6mCzN6uJdvFkEdi6wfiCmhCJw+BqK4JXQj1/nuxqW9S6lY9GLe8Cin9wX2o
	 9lIAWP6OpLJF39g1dEdtBRUUAmCA3+mYLPk5rhZVAABm2GOOSb9wA2oFP1aktcpHZ3
	 1c4yQzEylfsq60RoyhTrEpH9P87qaT+y5SWFnCQ75St3VVYNK4aRV2oWbqFXdYBqbV
	 4RcylXJVQtBek3Lyxy7S5yyD5gaKIfikE/x5nEUMxlLRqaC8yofpz/TYB6Xy+IC+9f
	 v1UIIcul4F3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A949CC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300911368.5435.1412515702876702422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504d823dc4b93114905ee078b0a62cb2f192ba296a0de52ffa740af042488320
Date: Thu, 02 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783009113
