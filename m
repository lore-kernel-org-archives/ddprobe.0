Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6EA2B2D7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756000794; cv=none; b=EbDbCuo04OIvTAdDlTZlk3dsZSiR3tJilaBClZ6EOFmgmZXnozJ1lspfQAp0kPm2ZeCeg2gsb12t/xauKh36tWEhyQ7QAaVXeKkfr8hVIuf2yxGQn9psO0Cn1VM/jrVU85bZay36Gn1iuKt5vvmS7LQRMkhQyF34Veelh5PpuPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756000794; c=relaxed/simple;
	bh=HYDvYqwBmJW75Rlt+h2ZOb0eUWz5o2OJsq1BY7XFUZo=;
	h=To:Subject:From:Message-Id:Date; b=gj8u1gdNTfjD2S4zWsEFboTiiPVYDCZZTXZAeLVZDYxBXnOn3aRh12cG17fKD1g4zeWMJdwlARM71OTY73KefnkDMKGibj127d0HaxMmlGIn5hqlh0xJXfwW4Ec0NjGcM+AfwLJoSXa8uAMe2V+zniCJthNTrsiUyJwOBW70tsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCSLQ626; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCSLQ626"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B11C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756000793;
	bh=HYDvYqwBmJW75Rlt+h2ZOb0eUWz5o2OJsq1BY7XFUZo=;
	h=To:Subject:From:Date:From;
	b=VCSLQ626edEqgbYYuFx72z9XtGK2dE4Pm9x+ZOOomuYIQTqrkBbgD/bSfAWY0omZ4
	 3/t1lbS7wCAXZe+bWuEYEVDO49h0hzNum8CVMSNrtKqIpRl1/i2Ie7hCyF2AxGdm5G
	 0guA/gajM7MEJaWoOmU718fP0mZqPP7k5me27XC0dkckkpnh9SmTB21ansKlAPXvtM
	 lK4peysQbEAqk4jbwQaAplQ9fOiBWsFfZrsvTpp4higJVqToZ3+j4lutjmMnU+mQu7
	 LrkJcAS3Ke4948HtX2UnnK26sBDo4+EDDzSpg+Vqbe+BeS+XRtEhIB9rtb6U7QeED/
	 LbtkAuljELV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE48CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600079357.11001.18134858137029482726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0a6adc95dcb039e48d4dfc2ca0b164403f3be0221ba3e6c8208de083045f4d
Date: Sun, 24 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756000793
