Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAE62F3614
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790500834; cv=none; b=RXDnS6il0sEAOaDY++87F6IkDBFJ06P6hiVWbRjxwcaouyMCRDCENRW/Mo2Zqg9ro882LMeFy5YEKwtHOx0BGjyDBrDK8Q5xukwmFoERcR7RPUkMrgVxGYJ10v3rdttgUKbeoECE/iqxoxZmVlbakwWyU+GHMzWaeNTC8WgkzjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790500834; c=relaxed/simple;
	bh=yqR972k3RKg2k7i6JD/fL/D8BsQ/oiDiS5PqteokxQg=;
	h=To:Subject:From:Message-Id:Date; b=rP1W4Sfjo30Hx1FeuikbWwCe2sp8kJJO8gjdbSYpd7qAPjtyhMUafw2t+8SJX080Bbj3JGcbhL1tdrj+p1PbLOd0syXEVI0IIg81fsq4ZRlt9+cXUnHIVl/pF/p8Y1kmiHkoM91agHGW1lEUJ1bXmezW2oL0mxk8WrH7lJAtYr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcHkwB9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcHkwB9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2393C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790500833;
	bh=yqR972k3RKg2k7i6JD/fL/D8BsQ/oiDiS5PqteokxQg=;
	h=To:Subject:From:Date:From;
	b=lcHkwB9Jt3JC3s4jMoOxTRw9tA8hVXrpJ6X8I4VKOmQATxe7C1OmOSflOdDa8kWKy
	 P/L1cAJTNvot4buhLWx/3cd9y/gMxRpzfk6Cj2qekEAgXY5VkuAh9W7lQMwdInYlzo
	 aLpFgGFk1j7FC65OHUTvB/bRdH/wqXGlY7Akn0TgFqoxX6Qs1W6t+oo/ywd1SC9qGo
	 6I1a6cUzplCmt3Sn3VbaWt81zrBGGKIch4d5bEWEMIzHBMaXANjj60KamKtw0H3MbX
	 iPn4G0bKPFeoh4pOh+CYIK1lXO2GTJT3Ca1AmsJHCkXA0sPcyfKVbGA1EBEdPhEbNl
	 NjjCtDLNNqLUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7821C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050083372.5995.16454662109656440198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4e504fd1bf62ac6c7183213493e9917f853121ec06268b3954e4c0289e1df9
Date: Sun, 27 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790500833
