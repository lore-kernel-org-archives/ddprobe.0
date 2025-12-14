Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252472DC34B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765732374; cv=none; b=eh/19Es+QzpcUa+BoBltN/lePTLXwQpk+w/AWWpkjGusgwgiC5Md3ZIIsAixCse/zb8OvAhW+gsQd3gidCmCOxcCvlkKN4owfUPlTzGrGQlOvRVeCjoM8A/EYHssKlQcUymRG7czltt+xtjQgSWFo3UHEJ05rwzjn8BoJLPc8Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765732374; c=relaxed/simple;
	bh=iGo+ud3I3pcSwE4glwoXZDe94cvJh2PjYC/S30/tx5o=;
	h=To:Subject:From:Message-Id:Date; b=XIY/lH4kAuhPMaEy8YeR9rRpY/IARs8QTX4NoKE6oYf3VU4s4AAm7TnXRfOn+inEauj3tbpSoEdYx7SE59cPb8I/PvbANitKAbu4WmNCgNXG/o2C+GIy6dw9s9jIS5HPKRQ8zgBHNVxCaaqVvx3dMGIrEwn0zX7GPPgEyJJ2VdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6kXQf7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6kXQf7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A0BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765732373;
	bh=iGo+ud3I3pcSwE4glwoXZDe94cvJh2PjYC/S30/tx5o=;
	h=To:Subject:From:Date:From;
	b=P6kXQf7F5HDx71XjoEhCBUvvME7OXT6Q/9LFpFUY1RRPUXKjpTUk5vuQoEK787x9o
	 sY5yM9Nv6FeOxU0KWhFQGYLS6rb+1c6Xy3z7Xu1BztyS04X2B0L/fzs1PdLdMGp/2F
	 3Mo359/BwT/+PLiRDBzN8TTJXrA+z8lKOtcZRSvP+0i0jBy3aqx2WC/+rD7NTUcvRF
	 mVg0RGpPy4GmSeuBfGfwlIWyl4dUtXwpkziG3FgpIrCplU7UDvHsOr1mE5x/1KGSe3
	 1pFOzAATZrK9IU6j9jRVE+Bn0StuLcJy/cOGR7SPv246kQd98gg9jjlKTyMWi/5a/Y
	 Sw9zbqsKY/88w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938FDD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573237359.24752.9195872260564952600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f155107318f4d16edcd33279d9d9d513e01b317bc8e0b5ff63ca3ea443115222
Date: Sun, 14 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765732373
