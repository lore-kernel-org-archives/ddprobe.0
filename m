Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A85336881
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786521034; cv=none; b=HiraqPUDV8lw9H2dj50pBL5FDqHnmLVr5jZNAzMkqXrLltMfkg3DBEPV5tR69AB5vDA1d10wfFHmk0ZOcJi7I+JRFXRnyg+x5V0aizmr+GO9HcDJ+F5zYrZdePcl8o9aiMxfFWWjccn6x1UVPDPTY20eVoL7CwVUzEEOmDkTxA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786521034; c=relaxed/simple;
	bh=vYk0C04RqwZCNhJG2XO8dim/rOvFWDFTYqIqCKCO2cQ=;
	h=To:Subject:From:Message-Id:Date; b=D2NGwSx+/L6+itj2cacqulHiu1Mw+Xidv+XKECUwLw5Q/7PbjaRl12liKKvlBDjf3ok04oWFSDlHUbU7grrQD6HxAGIgw69ZQI0IRFQy1xiLyHzpGSaz7ODelgarSJJJ+A9JA+mOULoMrsNvIJ0fI4cM90VYAngoY/Ddsc2K4Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ubo0umir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ubo0umir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0908C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786521033;
	bh=vYk0C04RqwZCNhJG2XO8dim/rOvFWDFTYqIqCKCO2cQ=;
	h=To:Subject:From:Date:From;
	b=Ubo0umirhpB3KM/AzyFGyuowyTmDRmu+BVc/MCkmeUaPqT1jQ3TGM+KygM8I5yDn8
	 HWoQM5ZQ2Seq81H84hk3FDN3Srr3R1Tcy3fuQ9g2U+JxbCjYABKAgUdGLmJZElXh69
	 TjziWFcEyjHC5Cr+xazIR+mblKJ685ag8IphQqzDW9WWhW3TpFD1La96A2apIeL7+E
	 FKiqyh+cQzGoTykPiFFdCKe2+RYM2d8cAMeUAwIRykt9YtUwilI0YHVZQ3RFovjNhq
	 11dkmignu8v5b5DFS9snqMmbM8xESy+byKATrfCVuXl3sPauErD/Mv4VejsqvQbIug
	 0npy9c01U4aMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AADC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652103368.1314.3761729576364651440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1a22d1c6b04d2a0d193cbb5a1eb5818cadfd9045ea77a9846dfeff6ccf4f71
Date: Wed, 12 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786521033
