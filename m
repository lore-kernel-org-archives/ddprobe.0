Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5A74D8D1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721808954; cv=none; b=uljm6eI/tG0m76MkQ1r7xI3fq5MlEmzXSf00VEGP2Jp0q8Ta4SNXAgkelTf412+jmITQbmmvGCid8OjjE7Tgb68IswtgxWxOiNoMTTS7JDQx9NKtVBq4cA1QLKZMSFfXqj5C76KmxdU97TLhbOiwePB6Vb2DYeBLuedLl6Jh+Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721808954; c=relaxed/simple;
	bh=y+/Wf+gIcQJf1/UjXqC5O2rXs9bbCeZYv+mQ5PdL9T4=;
	h=To:Subject:From:Message-Id:Date; b=IxICiYwEABYrkIbaFHCCYEty2kfa0wpJn7cYkeV8nqn+nUpE5qGv5jv4WntyvmPfanXHZ2zdoWTWfl2UdjiHV59Z1Xi55oHUZmcX/+2fOHYuLawNGR+wJuWTgxQAjb+F6j7AoYqnsZkDhp40E5sF19fdJ447dKFSNrysD6zBXtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAIh3U4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAIh3U4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C5FC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721808953;
	bh=y+/Wf+gIcQJf1/UjXqC5O2rXs9bbCeZYv+mQ5PdL9T4=;
	h=To:Subject:From:Date:From;
	b=TAIh3U4SCWOIsf1aJuGm1XS0B1YqiyqQt3y/TFzQapGHbEBlIhMtpNRmuqxq9riAM
	 rkqyglaZEF5w7XFPI2WrBSqk2MCcFaqfZRAETkBNIJTUePqCQCJ0cbIOOghEHsPxcw
	 3hYU265kBKQJOSMJIQuh7uhRRWfBdUgs67mpiFeSj6Ut72dBsM+/UcEPq5gHM4PmWe
	 CC+8JHA770ml6J1ooFDfGPfmejm9t6IeMgqHsGsRtC6Mn37wEAfCCdKEM5/Egh0cy1
	 kOjEI24GRlleQd5ZDbYcYnTJHo+h0R3trBo1XbY2qn7ih8JndtIGE6YKot3MeA1wXY
	 oXXCcY2Wkm0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C62C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172180895360.32542.11842700020135099952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a647100bcca9739c79d7825374cfb6056acec5814f3ff811b63db06d9ef49f
Date: Wed, 24 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721808953
