Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD362045AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785684634; cv=none; b=bUcZGIjTCZ0QppMdc5jhBt6tg3kWhPXBFkpdUkLdFXL98XU8RQjDUgOZyh8HhejR8cmUJt5qmdFco5JcUz5trkdtLE76N2bV2kqIwjAFuAPO5JPzEsdcTkoDEftD9mtxiSLcLAOWFzDtsM65c0wzoVu5poF+cM+5T4EweruwyGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785684634; c=relaxed/simple;
	bh=LeBvIzLjgFMkmJcPofuozNkwmsg/Av0oBOODwGY+XuI=;
	h=To:Subject:From:Message-Id:Date; b=sG/mR3xlSN0959P7F5E5o93/IoS91NVNpupmSInPtcpbEm/S8xzJrotezQM9P3ZhaGXodQgWcCQGV2wPGdh7gf//Pl/dI2KktpwnEAjg5djzNQW0SaH2PLwdq9N7E1OCZF3MQlQNfyd512uU0Aq1JEv430eHq9FBKpvV1r+LZ2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pelhOZdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pelhOZdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C7C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785684633;
	bh=LeBvIzLjgFMkmJcPofuozNkwmsg/Av0oBOODwGY+XuI=;
	h=To:Subject:From:Date:From;
	b=pelhOZdZXz/52OC4p0eixZm9gBbY1SMZUF6j+hxtpEU8KoPQ+lumyQcft1s3zlkBD
	 wZ7SwOkCOdvo7VPAes973BSAVWt313wbfc1pii+KBAsWvZF1AvDrjF50ItFNLMGZzV
	 lPT3qiRuuXIavu667iqZKS4W+OQeXKju6t1Mg4cxYlc+h4qRqF4ejrqC+sCfJCABxs
	 0+DpAEI4cAWTX3udyU0xGCVcFjBAqNZKz6CaSNJnRtwT5F8FT6zGXsjO3aVQ3aGBfZ
	 H8ShxaKRxGI32b0zlBG7mawtSMpvYpF8lud27gykn9D0sDu93Gb4qf+aBf8myn2ZZW
	 2pSqvQjkXGjpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D03C55175
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568463368.18339.1613012633166222800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3087e8b7403a512fa3aeaaf578c6276b4540eb4e7cb94216482c626a623433
Date: Sun, 02 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785684633
