Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E912F5A2D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791449434; cv=none; b=Z0Ar0iQFvqwETRqFafcnGvN4CCIE8IiFVh0ULsmiFz76issAY+6YnUjbsb+fbLx0Ywx3aML3/o65wsbIHAp2p9k869KApLAsRHhprRnmima0NMq1EPfibXFCid29oEJ4ZH7nmFB9/FaWwIUkikNS/Abo7IGhKLgS0o4orelUEVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791449434; c=relaxed/simple;
	bh=FbvqZIm+An7gf+nTPifUcS0+SvVeL4g2CFylr1xSO/Q=;
	h=To:Subject:From:Message-Id:Date; b=aXfrwdPYej7RS7I/wF9ZiV1Iolr0m7nEcoWGNxxSscQLzYinjWTfmf70u2+XK9hsmtq5xhDxumbOLmvKPw6+s463tHCAoqc5GQKQjA8k/4a1HUsG2Ay2IIEJDBDgeYgEAkjYHuDeRxU/jN/mTSI+Z/6eXvLsNZXnQDve8DzxHao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slR07Lbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slR07Lbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA696C2BCFC
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791449433;
	bh=FbvqZIm+An7gf+nTPifUcS0+SvVeL4g2CFylr1xSO/Q=;
	h=To:Subject:From:Date:From;
	b=slR07LbcKDF/PudlwGtzscIEZFtA42TKqFquNqucpFkF/eR2uGDRwnjD8UbTGpPYP
	 ENpk+4Y868IYKLX9l3v1gorPF6QW54OjXdx+T5cQUEzksdNSiJksKcwk4YRshPOmWF
	 dtepLBizI6eh185iOTQIj9jiF4Gl/1kCVT2GDMypG2EXotxAwoUJEWEJaRa96cCNgb
	 W0YGah2i7Y67MhI5WK2EkwZ0jn2sE3XaWQNiU4NbC4tGvinBzN3czVdOFl2+/Twtb1
	 2PftBL9gpsNvGKaMLHtCOQqFoqiZOYd+XnMX4oLhxGS8drK31qXSFNy7qpfPJcJZyJ
	 GxvyOFXfCPp/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24D5CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144943371.24683.7374160411107691778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94688c7862e80473762bc6231dd2124d8c70b1755c856531ef5744d0dbefaf3f
Date: Thu, 08 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791449433
