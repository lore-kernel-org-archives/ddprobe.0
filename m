Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408F31C683
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746308394; cv=none; b=GqwKsjSlIoIuAds8Hlks6RHFQNlNm/NSsSQpKxeeISrtavqjYpPi4nBZjist/TtlTCwIkymxvHYFXOags+hrv6ekYnd3mt5tbXw0ORc8LQkAKe7QqUSkWsnd0RjkzKbdgBMsnH1W2bRLZhhgsnCUyC0sVa4RlCyJjPgmYKBJKI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746308394; c=relaxed/simple;
	bh=uEjH+1JyREKv/wGnz19rRB+QdhKem5MMQ0Pp4Fev2yA=;
	h=To:Subject:From:Message-Id:Date; b=C87S+EUozxmem5yx/HppjZwC+etaCkQcY5oJwC9UPV5gFLntvRfeNN2EEk9Ss1gYyaTlpW2+8S3HqOrB8RWnSqhWL9kFi4RBwlmjXJVAz4kk/SR6dKKqo+O7ZdEsCjQs/Xr5Y6fRTHpNXQdcJfEOnOO/Al30yYBdLHp/WOgOhhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDy94zgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDy94zgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4417C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746308393;
	bh=uEjH+1JyREKv/wGnz19rRB+QdhKem5MMQ0Pp4Fev2yA=;
	h=To:Subject:From:Date:From;
	b=DDy94zgmzIkO9/NjUcr84SGgOigpojPeQMSyuaEPwNRaNRsxHP6r6W154heoKllL0
	 RIThTemPDU7xMiqoh6xBdoqzUPFfIDyiJw5dJ2YZtvRrOPwBnCjOAqkrSpD1GIM4cB
	 uBv4nOhZC33yOdO4bHujhDVEj6yGfivBxRdUWDqcvmU4bJDBwE1ru3UmnfHSBCSloh
	 ouRinwWkFNUnSWzRHstDBMnr602hjGc5OB/xGRlCwKbAFYi6t++zkHWwbEezMkUnPt
	 dsu6/gXqKJotDFbADKwwTQs+eEQVCiuYhXjYfweGXBcBykJ2P4CTF2Qb1uIog+lZCA
	 DBeYnugycZIgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A78C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630839357.5095.12184081701370626232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8813d5e3379c0884904983a5827aea9c23c1190ea7e381f84e56fe7fb68726c4
Date: Sat, 03 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746308393
