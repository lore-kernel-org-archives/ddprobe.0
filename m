Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DBE3C769B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782982114; cv=none; b=c8+u1UDEO5vYk4QI40OVsGEVwAE9YLF5k+4tcoFKyvcc1zmLx+Ai3kT+jQITBkCC62amJXfhpInsDnWT/jYJFh2+tF2PqB/I4z+88gYRpXj2tPoCYFsx/nOzofSoWDjVY/z5KQwPpn+JMXNme/ftQP9kp8XutpFvytD5KQANcEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782982114; c=relaxed/simple;
	bh=DsJmkuiv1oxQha/Dk7EP5nqFkAkdg0ZVOt7fewBhAwc=;
	h=To:Subject:From:Message-Id:Date; b=J/Dsu9OlRK9h7uyvXuJbqb+ndPrMca2ghbpb03w4Az737wShusBhjklWxxpTJVxhKoR1V+RdevNyF59IAg+pzerEcyvGkbE/StnzBkKRJlw+9qd7inAWW3G6UTTkPJVzGmMPAJMR9AN2tVZvaSXwHs1nI7Z0u+fA/jqKx7Ll0Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiSmWLsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiSmWLsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA37BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782982113;
	bh=DsJmkuiv1oxQha/Dk7EP5nqFkAkdg0ZVOt7fewBhAwc=;
	h=To:Subject:From:Date:From;
	b=uiSmWLsj8Mc2C3YOPB6U/yyT/60ZAT9U4G59Oc5lf/VQbawq7e3uRP584VEZe2tyQ
	 zfCCqA07UNbu0ER9Qpy5lMxYNBIINYnrTAJ/rWUQoBwxu5DiDbKODbPZgZFWpMCmWY
	 VKTXyJIw6Zv1uxuMWST0MoTTKNtuDyCP81sJBQ/yfyKOFU29F4TG5MSw2TqIqt5RSs
	 NeCmEfbOSBykFWEo7hFaFF/3jCNykTFgm3dObhQXih74Iq4Vq7Dj/wGLUU8iAtjSpd
	 BOGZI6Ot/xHLty3Eb2GYRmrutT6c9mEluCb0Nk8XXK/dlLeEzMiOkpW/PrD08ZrbmW
	 SLxLHEuz6BT4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8180C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298211368.15391.6840111980920304376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02d564d2a959dff9d5db96aeb51df0dadbaf3c1e722631fb249d8a6d34a8c4c
Date: Thu, 02 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782982113
