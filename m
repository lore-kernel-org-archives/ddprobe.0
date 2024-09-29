Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25720768E1
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727654154; cv=none; b=W/doh1Wr/tvj8CDXMpJg34QDqj/VFGWnolTBx63JbfbRwRS4NjLDbiWhKJnxwrKe1lHg451Wo50Y0XVhgeam+z7F7RpqP1K3Rj0Kl4enRt4TQexOhog4hTgfDG9GQ8OUYN6uGra/HYTNshZyPc4o2N0oETyg6k2ExzYNJKx2vGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727654154; c=relaxed/simple;
	bh=R3G4sur2PHvFuKPICeyviv5CGRclS/VEFc1bFQPlFIk=;
	h=To:Subject:From:Message-Id:Date; b=VykxpY13opHq3F1OYqulFzf82BBCG5I2O/+uSI5Hq6l5VM1VxRqJc31rM8QzIPPMW/YmNYoTd40Ngb3oQTms3aP1eGoK4bo4QI+3z1jHX+zEEDjRRM69y5XPumpzkpxV87midZpmHoupdqNM0vkuaeW+OSdvwwdItOloMzIdtpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpc00dn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpc00dn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF682C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727654153;
	bh=R3G4sur2PHvFuKPICeyviv5CGRclS/VEFc1bFQPlFIk=;
	h=To:Subject:From:Date:From;
	b=rpc00dn9ZVM25siDkFaBVXywMfz0HndUR0O4f4aooQ6cNq1J9g+FWxgvRoNBN3hQk
	 oZWQzddGFp+1AAj/B7iGaZsowmJTN2jpofHFlguyfwM9DQ6g7dwOeI6eigG+1rNJqZ
	 DD/KxzQCdDjV3ExozUkk+WAeWM2IJAQ4cibj6QbhlkvE1xG06798Sg/xFN/Mj90yQ0
	 tU0R421MhrHpu+BcNmY2/5HUhVpiBb9ql2eEaGLhZpfoEnFXAsAFp0iRghHZxCDbnD
	 EvLEkyBzXelaK6tT1NP9PCvFfdOXfqgAqEoGOFU4cUH9Mgr84k0Vu+u257M31R3sO+
	 XSwcmT0uW3IqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF9FCF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765415362.4990.2976520193674389542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac915fa92948fce6557aa45f5343829399695bbccb2cf0c3ef810e24a2835de5
Date: Sun, 29 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727654153
