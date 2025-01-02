Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E63CD299
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735791954; cv=none; b=Tr4WfUSY1gFuSwtwFEx5ShDwyhR62KJ5FH5KOeMCtR1GMMbCsnPlQ0g7vZ+YVVsXbRMi1EsYYRLN96TAb/S5tjXU7PXSFMH3Wl6+lwCHrnbxE3du8k76el1xSk9Bq0h8CS96bbEMzwaJIb5HOQNXAyMZFvtMzYn1Cq3bOyowYU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735791954; c=relaxed/simple;
	bh=wgWagaL6b5cSgMaviY8VaLNlzC3xG0CF8ySv1bUUR7Y=;
	h=To:Subject:From:Message-Id:Date; b=kgVFVgIHwyLFxE5fNIwtsqQvfhuImPjXHu99WiqD4zSlgu7JJxWHJthvtBBUDlsBVJAfB2VWTpd707y1vXbH1NxFLgwIhlcZY6TmZfGd0cpKWaFPvUmdK1VPYNjXqitzpwFNhZhKrTQdLQVXREv1BKugCQ964VA0sJiGwDa2q0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fuu6z2/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fuu6z2/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7156C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735791953;
	bh=wgWagaL6b5cSgMaviY8VaLNlzC3xG0CF8ySv1bUUR7Y=;
	h=To:Subject:From:Date:From;
	b=Fuu6z2/QK/3oerJDm8Bz7nBxK236Nzuq3m5YIEPmV8BHlf9d1Ax+8k7yFW4ir10bh
	 MkgxkIbkod1hxqCR1BNh+IAB28e21jxqKmogpnP74+eRiG9WvI73KoXIS6tIhLE034
	 jopJZN82WkMkGbu/Apa/egADreSPGg0eOub/JA1gOkr9ABk5SZHUkdvV43eZ6pMETH
	 kAy32DdxcKER/z1HZG9KNdbKUsfOrL6h+a8h6tfXykFyRAnF5tOsbFM/8DXSk0l0L3
	 rk6MERCcpGWZVImHDvo0PfofjrRvqhkOLjmmYC0gMczXGZw2WPI5ZGNaF8JuIuZXFN
	 w194ok8lePrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE23E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579195361.5183.3020149350306723501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7b097bd2aeb24305f8241b7c8869db62aa9ad09fe2ddf4ad861d4e331a8f90
Date: Thu, 02 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735791953
