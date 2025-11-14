Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273AE25B305
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763144994; cv=none; b=F/sfh0tq4TQ6aJStWKlXve0rSI+Aaedw0F8rd9CcFLIYZhqYGdfXJIacGcLOdAKjPvvEecb1lCGykoNUyCOFVM4m2os3GG/c1BvggAiA27bZWbudw8I8a2XrUsOaLbb5ZO0+zALZX0iBGM9S7N/oOpwKvH/5ISFZXHzq5Odph4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763144994; c=relaxed/simple;
	bh=S2BISVB0jGwj9DK7O/oBn4oPl9I1wCvzXLQP90mGtmo=;
	h=To:Subject:From:Message-Id:Date; b=OGZ4cLivj6v0FKdWzbLpDRTQwEHSueS7pfYuJRIAj2LBtQVgO26Mvx+OCOmRXjBeuRXRMmYNLO1M+EtJUz/SF82TIOqVDqAqroq/g7wYbpzLJC+8igb5ayel/MvqBfbUMzgD6GaSsO/twjgzjmSLn2psQ1NaUKiBa6iGJskHw8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBZU9fmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBZU9fmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE7C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763144993;
	bh=S2BISVB0jGwj9DK7O/oBn4oPl9I1wCvzXLQP90mGtmo=;
	h=To:Subject:From:Date:From;
	b=fBZU9fmX2cLFZgo/oipJFlUx220pDt9zWekP//MVpD6XNseNssEkJSqr2q/ETHdlf
	 jutq2PHBhvg6YjJ5vXDR9STpQMecPPt4tTgdR6EXm5pKCQ+YS/zflTn6kNbGYkYNQa
	 EXzmx8VcD1XH2eMZRdhr7IKBId8Dp2DyIdLwQ5QkJTpqykPaqqMKukt9nEH0XucP+e
	 jSlkQWsGMp4whkqNfrSiyRKs4X6jAupf2mRi+SleO2ziPT8yzJZ+TkSTsE/fRFQMxO
	 i0IKMWFABLatAw0KtEQm4NfM51pkEl+H2KAtbaX5eFSTKsz0PuSUX6Oo0vZa1kd1Ts
	 WikXDDnPzikfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9923BCE8D6F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314499361.11925.8950427847688907244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bd5d16add1fe9d51862be158a730f80cbd8d3601fcbffeff06dd5941fd8876
Date: Fri, 14 Nov 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763144993
