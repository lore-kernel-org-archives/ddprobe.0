Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2804327978B
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745861994; cv=none; b=aPZuKTCXZowAHErD/Xu/m+MrvCe4IZSjAUkFiYAvDgsPqkRwBxOwgADfjAUcHzMPK14cpKZa/sh6vrfEnZBEdswP1GPBhMBA/TYXjhRKz+RfP5ooRWwU4xXKvRXry8kwdTRgtAFTx81ydNmV2tKxeVIiWKXo+noZyuPWxEzKsu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745861994; c=relaxed/simple;
	bh=3oR1c74S54EN/lUmcKhFHhZg+nzo483fDSv+xFF90Gk=;
	h=To:Subject:From:Message-Id:Date; b=Q7UGstCfatXgUeLSoeIPVGt0Tg78fruLzSkHWzZCh8RSKck8nFy5agAUCr4Dl3Bx7x+HmVwkvQFB1jpA1Lmuz1zfvhGzbfs0kpnKYa2qQ0H4yjqLkcFmkpxXHB4YyxZReOXCw78w4YSjU8ljVp2DR6MH/jF9xFnY3BD0Feu+JQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmqdZXnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmqdZXnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A7AEC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745861993;
	bh=3oR1c74S54EN/lUmcKhFHhZg+nzo483fDSv+xFF90Gk=;
	h=To:Subject:From:Date:From;
	b=kmqdZXnHErSSvkuvRhV18Av+DCx56SfZpYzAggdlyLkJ+/o0f1OohgzM86hPT9+kA
	 u3O/i400RJ1Ydm95V8UQABZl/QgQpnwmyc1fABBMykGCLKRII0550/iS8d4RBAhC3o
	 Bff44IfQBlf1+gKkhCwJ9MhVgPeCVLVXUAbOWTwzRHIOTaawH03Id/UYLsMkNl+Fmp
	 GqM43B9mj8oJvoVyCTCqAiFi8wFUIm2+Uc0gHHeXGKdlE2XQG6AvP/IGKHp/K6m0xg
	 hFcLf0ED6BF03De8puMJ6OGFpCnd36if6sFJ5oVBKag1OQrz/cjncpHXwSTRuKqkYH
	 Cyy833sTRTLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF63C369D9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586199357.9721.4763620483032813092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28df6137528d5f92d84496d11c0f3b5f16574ee1027a220e9e7076a589fdde79
Date: Mon, 28 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745861993
