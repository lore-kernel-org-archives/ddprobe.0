Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AF92571B3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754309994; cv=none; b=okK6uc4e0AMmZspzMNEGp8qnDhPGNYpI+LfB7XxlqBGNXoI/4C8gsUzaewvXilfFQknWEl0znJ7sWA8vaPy3qzdtpx1Ydn0G+/CwOMRjOMq1tPB+0vE7HiFRO4dT7A9aEYSn51lansm1vAvaErjDeM8MGbHqlpceP1okDcPBpzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754309994; c=relaxed/simple;
	bh=GgWWzbLc1Ujl1i8Cx4/LOolz8qqLTRinQC2nX/jkK1M=;
	h=To:Subject:From:Message-Id:Date; b=oNZU7+Yh5RZ3nuFfQHi2hWq1+LYRFR5JXPde+9rewFHBJbLHFMcN0CDojK42lTI7Iy8Z/8AujhZ720TVm8Vg0jGOODgqjkja/4oYTVdwlgb7h9AyW/olBZLgrRwILsRsxOZShx9MmNYZeTiv7m7k2dMC6TZMyCMJMoV+dWcyeEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnAdJAfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnAdJAfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC3C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754309993;
	bh=GgWWzbLc1Ujl1i8Cx4/LOolz8qqLTRinQC2nX/jkK1M=;
	h=To:Subject:From:Date:From;
	b=PnAdJAfJLOfPbPoEgolhKfjSHT4KZOje8om1ZpWetIOI/rou6DF9AOzkRJ8qfzR2O
	 Qf55G2XHy/exHaN7jBdpm6/d2iS98DI0q9lQJba2uxydiUxBkoyxRGxiZQu7IyF6jO
	 +uDHQ5l0w53m4gCF5KT8yJx2uDgncR2asA9d+CYYOWR/wzTjhePPEgw/qulU1j5e1X
	 uQAXmnL3b5anqS0iM78PLnbIipOPDXWXbR46+o7utpV2YYbQg8oHpAAqH8ulAFvd8h
	 qZb57k7A0kr39sF1+puCd1EOv80vM8MgGGcbN4ZexE+yU6asj5h++DHMrt2grxzmgr
	 aTRFcOVh9LleA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69CC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430999357.1716.13154599489696276238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e372aa4192112901129ba11e36ae21587f152aead50d74cbe91dbe4bffe7ad
Date: Mon, 04 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754309993
