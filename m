Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145FF23EA88
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762564794; cv=none; b=hvoauVcZH0Anuh9mxnXsc71VUnSa7+uIhA/yrHwBoe46XV5M3+rCK6YQxKKi89Bo1etkJoA+Oxp8Ob7ax4Yw1uD641smVNwObHnFmy728JinXXjK+th8Q8kXCaBAErCfFhIzILcnR2flaJ1V730TMbBhoGm7AKElqOnmjHYswO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762564794; c=relaxed/simple;
	bh=c+v2oNkSI6ki+SiuHj7uLcro3JbKRLq/JyDehsGcBUA=;
	h=To:Subject:From:Message-Id:Date; b=cZqy2y3u0X6l7ClfKpBVPq2CTTNJcUV2yAsj8DTz/0EcsDVrHkg00R5GHoUbeDjWMJFZF8U66lBQlKp+oB5syZ5/Mj4gsbindqa0r90G230JPnmcnBTxU4jATW+TwXaMAmCsorNoUUGWLPFOe2T733XeVWZwGu+ZsdpkoOe+Kg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZbNhnsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZbNhnsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2588C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762564793;
	bh=c+v2oNkSI6ki+SiuHj7uLcro3JbKRLq/JyDehsGcBUA=;
	h=To:Subject:From:Date:From;
	b=lZbNhnshSaNCbrXDyKf4It6qjzwGpEAFTfpjLp1bVHfMRTCMZXrFDNsEgQIOyhZnM
	 6nRMxxVoJsSMXsb8904PdVAai9QJRRGwugKd5LmEPz1Wa2ZMYvPsdu7e718u9hn8k3
	 3fUhfjd4i0kX0jVlPiS2Pn+wCmm/cJQYHEXrDwv0/R3BGCYNamS66VMoy2UkYTiQv1
	 vfI1ybqGzC+QFhgbS17da/8lv34OboouNu3Rn7vIJuRAQ0M5vsLVz+JW7k0QT0HOTv
	 U8wUVuC8OlyeG4xy+uSUhk8JShDmzmTby59wgUq3g+N5WWlvShtezV6nRyAduUFDBL
	 lFT3aCZeCqDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4572CCF9E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256479366.28941.17797668714149236085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6d94eac0c78888ea1b92f90443247ba11d1ee72edc03b61b10601116acc2cd
Date: Sat, 08 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762564793
