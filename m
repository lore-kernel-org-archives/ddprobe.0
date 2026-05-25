Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1A2139C9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779730354; cv=none; b=Y6fZfXb5nS16nnLT+kbQvsJpaU6BPtBaf4O7kz/z1skrlw05SALpm2ZFbDLa36CPDrxqQJlXO+vs95jrcMCAszxuMA97FcznGZ61R/KxUb+QV8X8yaaqqrZJ6uZIM9xUuEWREgzjDoIVg/I6wKEvDKX2ugJ6WwVywhcXEeA1D6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779730354; c=relaxed/simple;
	bh=iU7FqCda+Lr/nLwycJqbuLq9R2/rvtdCPlrb8EjaHxQ=;
	h=To:Subject:From:Message-Id:Date; b=ZhIUcz/arwD5CPRk+JfP84ZNd3hjibEzNrGNdj0PfDwbfUryUbUVoep4XU/XPFmWBsj3hLjM0tOjadxlATIuTeOb9OdpInASGwIIRErMqts2PnZonj4WFSm2n+I3XRVWg5iEbUk4zPEn59vYp+9mrx2gwQOqAnyN13TVnXZaUh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZv7XHVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZv7XHVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AA8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779730353;
	bh=iU7FqCda+Lr/nLwycJqbuLq9R2/rvtdCPlrb8EjaHxQ=;
	h=To:Subject:From:Date:From;
	b=uZv7XHVdRTl5lnGQuCO1T+HKOugEczQ4I4cvH8Q5ApC4tS9fvTy8gB+BnuHKpY/Re
	 KHDibsrS1R1gjER3acmZNZk/NH6ons5Rwz5XKm7uj/DFv9JdfXdtQpQwozUiMh+pdB
	 LnswQ982QVOGznSKy8/Yzt52dOpcczRShmdHeTq5RcORCKBe6KNzY2Ohggq9WkQ7KY
	 IMGg7OijcEdAJa36iCFqQ84qutNNr+DDUCuhG8xFd9a6jRXJU1Lc46C6I3Ftg3WlIf
	 FQMSgm54X6nLTtCSsqlJjycKrafpvyZvErzgprSG4vNiEUufxKzF0gtIsGoBbaDbAo
	 9RgH1y0s72tIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE34DCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973035369.13454.13406629125331759586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4217a86157c739d0010e7ad39a477e74896f9a6b77ca75fc3f9f327eecb5731
Date: Mon, 25 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779730353
