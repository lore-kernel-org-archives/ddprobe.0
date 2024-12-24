Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD298BFF
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735022754; cv=none; b=JPFo1aT9SlvtV338gTlUuW4ahN6Gq/zebBKjt6KHVS3jpE0Pe4eNXDUm/iAfHd+II9wGadbv1jvrRzwaJFEzBaMROgD1/PKoJYd5koltSaMNRpjh4B2ENmT8qCmvV7iWFbQpA59Vdp5ZYT5NZ579IbaqFVToChzxx/ompkvZjc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735022754; c=relaxed/simple;
	bh=9jd/vTgSPnP82LvdMHbrU+BQixO5MSrmIsUH1HFt1rI=;
	h=To:Subject:From:Message-Id:Date; b=YlIwFTQ4895/o85e3rrhPY+Qjq6J8KW34ReOx7PKU2Hl/t9KxpGmbl0RRUS3fc49TSFyT6tTKhExziuwJuAUl1vxkuTKP5pNEBVOdV4PFKP9K2mMTqAWtintMYUVazyXToFKgiVyYhE07MD8zXbAUs7guB+SslYEZn4u9mXCcZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlAA8YXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlAA8YXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A563EC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735022753;
	bh=9jd/vTgSPnP82LvdMHbrU+BQixO5MSrmIsUH1HFt1rI=;
	h=To:Subject:From:Date:From;
	b=NlAA8YXWgrq9wpeCdUkW/sGW/VG6+ePWIe+nqB/Kb5UY1NMkM98OXn5VGBjipWNty
	 RNOkUGkD4tLzc317fIPhhxKxWaKRQ4Cu+K8c8R/NsvEHYS3qwyMVNx9Ninzpyjxe7F
	 ZGkEpVWftaAJFMu9UyuH+xHKUcoLO36i92lvszLgScfX4R0Dtg2rbBkOJFPdRVoaeF
	 XfDTUQ6dmIhhatLJft5LOjumGYLT8zrPegxxabGwdj/l2kMZx1ecG/PCTSYkTchaPT
	 1TJQv81LLRzGMA0o4zXRm3l0LwbYEVlUDGNrG0gIHpf7XLd1h3QATOsGJmbMPg/hA4
	 l16qXxCNRW+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D0E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502275359.18240.11449343491568305501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5212f28510887572a32d6be6f748246cf5b3e9e4c19b982f10f3991f8ec0e4a
Date: Tue, 24 Dec 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735022753
