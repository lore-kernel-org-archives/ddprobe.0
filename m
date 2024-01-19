Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F1F53802
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705671497; cv=none; b=u6sYRrbNAe0EDXWYZB2imqB2IuaKGShiOw1lmSUSRGpwvzb0G4lqveS3aExjzgGDee5Pg4h8mSlvwKL199Ov+ADYkPFcOVnY1cAoSN16WAwUVO+nF5mp47J2vI8lOjgtN/HjORRnUI/+osT/UwHgZgTkeu3Oj8R9CaQWzCyDkpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705671497; c=relaxed/simple;
	bh=DDli/dsh6dweDHdwq+bjEOQCrdye37StstFD2Sd9m84=;
	h=To:Subject:From:Message-Id:Date; b=hHW45KfdQ7Ylajzo4tlmOPaTqnJKprelk7vljfYj6u+Qg+1B0dhHSO804USRXlSPVkJgj02Lh13HUDb8gT+3Sy0N15UvJyfkpAtGlGyPsfe/oouJXeJuZk/V1beYLMIl1qA2epEXGMnEtPfKhQobE2ZENwJinvQ9gXtXcWY5PUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjfScUJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjfScUJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76421C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705671496;
	bh=DDli/dsh6dweDHdwq+bjEOQCrdye37StstFD2Sd9m84=;
	h=To:Subject:From:Date:From;
	b=XjfScUJ+HIoDDwgk/tu/ro+OxPzOGIrKGmVJLIBbdv7d1IF5a8D+1lscjCYSJsFmO
	 fJDGaFDiSzmmvBRfjUCIDzfM7f1Zp8PAoj913XoDRsLMztyA2HbiaVFu3995JBkQQd
	 ydMjsJzNopVkqoJyoY09s5FrvIsbJVSvL5OSaIft/fwWyl8jtuaY8+qJH6OUhIkh8C
	 dJeyldGzWQ8IiaM0XA7PX35Lw8fDKlpYAVwKwhrWGMVwYzlQ1Eb0bhBEDfvVBqWd1K
	 tiJzTDljYRl71TMH8kTNVV2eAL+qQ3rZkm4jFQoHoKFLZ8vQ/j3iENpJG7XAVdzdUJ
	 ZPuO0dZhr1eIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B846C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567149636.16342.2309594211497872647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0d41e7e879471b6db940d5f0d6af7b7fd1870743fae3fa0bec8c49d713fc5d
Date: Fri, 19 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705671496
