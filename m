Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B95723BCF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765558974; cv=none; b=bncYErzMP/rqAchiDDqy1XEO30ygxu/7Z0JXroUfPajel1/a67mFEsVLGqu2Xqd9tCLQwY+QJAiazwReAfh/y2ErJR0/f/MXuzMVs5qyTG6ZvldNSYIeuV/mLp6rwfaGaPR5Zc8VoTCw33/Zrb8yYYqOTFrF6XqBubh4gu/G0a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765558974; c=relaxed/simple;
	bh=AC80ZC0clyk58opx6NgqeQYJ3gScYl6eWUp6fDcf2Ks=;
	h=To:Subject:From:Message-Id:Date; b=G8zG3IS3jOeHRnDzWuqZUhUgwNYYkblVpW+0hUUuv5MQr4RM9fHJfTiPCfwW/TtnMovdXMMPXjN8lIE0fMmuZHMZqZGtBolC5cemyAQ3gWFBhBsZ5FycykWK40RnE2DzjavXh4TVu22QDnmj2S+eecnHBpZmFLxyIa8G2z+NUTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etgDQdhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etgDQdhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9549C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765558973;
	bh=AC80ZC0clyk58opx6NgqeQYJ3gScYl6eWUp6fDcf2Ks=;
	h=To:Subject:From:Date:From;
	b=etgDQdhR/haT5HYpMIEg9StWfxxg9WUZYYyupNF/wctsMMkr8oBzalNa6PmQ8Hc6u
	 ZNk5HJQLcevjbuJ/wTFekIJyDHxACi4tje/QekO2XAyoEPWm4H77P1NR/P9wfSoojY
	 60pB1QhU51Ctdx0FKCkYjIh+RLD2QFmw/DQzx1mU6nyZkJ3QfAsrjN/NfSQ4QjRlkn
	 nVb8RCukObs85K9tUNVEoB1bGQ9GdxfFg9oVBi60sTBdio2b/6k6JiuMmDdhJ0QAAG
	 cgxSXfACUG+RThQ/PdRe4xSnNOmfFGLi/EQjg5f3wAP9x2DGgkJLb/LQUnrwZ4i3T2
	 h6zfJnnuHUlvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9364DD59D77
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555897358.10479.11257253581675578873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6152efcb16f71d7f0a69c33c437345ce0edf0994e1990d288c967151215d15
Date: Fri, 12 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765558973
