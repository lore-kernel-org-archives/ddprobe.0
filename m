Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E6AFBF6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720077323; cv=none; b=WICB/bZTyl4pbidJLptDpEKFSGXpm0p8i+WrKwxbhxFIoM0al/IW5Vvy7oefHahgo/3lPvP00l56EAAkccRS/sGJH3TwavtLM1vcE2p7o6Rgh6T1iJMHbKThF3r195AYPHpxKqri7bY7LGISDII3JZKlJGQbtRIWlYFxkOI5gxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720077323; c=relaxed/simple;
	bh=rxVuirAnYGDP0FLuLwnRxUT+m+JSRhCo4lMCT0FcjcQ=;
	h=To:Subject:From:Message-Id:Date; b=qO3BAdTB4l7DeEXcq5DrWAR6317qSDv9PDcoIZrjAN9fRU+sWWNZTpu+O1bmtQ4D17tiEL0raXVFQ9zhHk8J5fTYiYSVLz4ul4pJZOf8xtTquOPyVIc7oDn5KejWRWWNK8UkieVispgbVEOqP5zdcpvv5NreeOzA9bJxGouI6OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/LrvDrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/LrvDrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1F2C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720077322;
	bh=rxVuirAnYGDP0FLuLwnRxUT+m+JSRhCo4lMCT0FcjcQ=;
	h=To:Subject:From:Date:From;
	b=P/LrvDrq47fRBxiiqe8YApP378UZNbbfaRLMu48BR0Z4CnOZnaKfMGj4kb3KF7Oyu
	 hwSdqWW02JxRAju3F9xA79oiJIUZe1bMWwXJeIZUBuRsAD/k3GPO0nDP5g/24SAdTr
	 dCA2IZYyuevLrHqpnWUjwG7/r4u6XxEnzdL21X63YYvfiIImcej4iO1eu7k+gNjdFS
	 XzxuLSPRI1Lf86kTyY5xk+bur/CtkreqKSvJCI8eH8p5LBPR0MyPH84MEpG8Wfls5e
	 oFMh0WBCxVSziP0hhiea+Yfjgn2hz9MIYHJF/7lpdJMWUsRJXdCJ3b8D6mjlLXP/MA
	 r2Cdmi5wFRbuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5161C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007732278.17917.312980232131147180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951d16b1f1071cc8af9dcff310931e4e996035ea278185eb3bbb47b31693231d
Date: Thu, 04 Jul 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720077322
