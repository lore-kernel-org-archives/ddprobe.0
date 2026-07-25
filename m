Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5724026CE05
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785019234; cv=none; b=BjWhVILq3KT4vtLmQtHCqrHxG6E7FTpUxTnW4dxV0rmSuR3+anrasBD3UTdw4+s1W2eJu+EeqiefueDzcbeqgMbzlHDPo1qg6jIPXw/LAe0R1vseqwN1yFd7LfczlXkp+lTyphWjbqwnCIUmQOXL/L11NaxOERrE+OFvzIyz0U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785019234; c=relaxed/simple;
	bh=pPsCTC+cZhGs7946eP6orE2CP6g18ez9ak133gMhYpI=;
	h=To:Subject:From:Message-Id:Date; b=TyhMgO6IuW+DgTYpgyOuY4CIiRevu8mN/AYtDDFYpsF79Y2rWTQDxZK/ohvjvlptbWana4fp2cZPOKrsj4ZEvALEHt/oPsWCQ8j/Pa1TDKg1DP/WqG1OyKagkeocUeC19d+w3Nfl/dhZoPFKg8WAiRgBCHuSyur+bzrk3lVSkyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9BANJ2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9BANJ2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AD8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785019233;
	bh=pPsCTC+cZhGs7946eP6orE2CP6g18ez9ak133gMhYpI=;
	h=To:Subject:From:Date:From;
	b=I9BANJ2geFjAv6gThxPbw56sreyaX/bzLJTQS556JERXeO2Aw3e9oe8Phfl1zxiNU
	 dPH8W774xNX8TgiC3Pl+DuMW4eqhHPvFB3ozh0leHx03dUfR9r1SUo/LF/pNEVca8u
	 9ZitCVvEZx2q5048rRBV0SFjzcg2t6hO5VaiAlyr/8+zKvMPh3p66SPcTYE8BtipEr
	 gLhp6JbpG7ktYsoqyNPVKt0JOPvvmuvAPBqOVOyez8x9AOCEEUGsYSIy+mOEprQcaH
	 djg6RwFjt6CSBSRMCTIUDOj3aFHSOfIWE31FMuqDlhLVgqFyohnPKZsF/Smr+f59Om
	 ScDIONC4QsYMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFEFC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501923368.12446.12479832581897975864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4fc63add943a490ac88eb8806c738349cba9fedf0a549ea535c7f3ed904d6b
Date: Sat, 25 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785019233
