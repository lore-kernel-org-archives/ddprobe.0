Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657FF1AE088
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718898023; cv=none; b=IoJhp1rL/gSyZLImM12vlZi/OQP6yQtRtBfduePJXdqNjHzbjFxyiQHSZj2TY1sTg97qdl9KXg6QDVFkqAH8+UgP52EH0+SozwJPcSM/8TUquW6NJ/7lzrcLGt5LD9HPj1DLQT4V0nwAezREuYWBSz1/uFV7/hfy31BfKsfIwfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718898023; c=relaxed/simple;
	bh=EZydnv6GMOnfyTiCLK1/2QTg8KcuW7Ysw80nUY6JYck=;
	h=To:Subject:From:Message-Id:Date; b=SUaAUvxJW+WAHXsny8G3GeTLaC47W23QNUT+VEwB0rh+WhTsrrYhHWKYuId2TSIsGAOOtwLjXq3mG9Grje/KzHkgcnI5vPakagzwtmfoGxRq1u/CJ9yedv4PpdydcF7EIRMp+QHq+1q11mrsBFyGwLmpUYlwNXwdv+6p2P7Irak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+dplVVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+dplVVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E56C32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718898022;
	bh=EZydnv6GMOnfyTiCLK1/2QTg8KcuW7Ysw80nUY6JYck=;
	h=To:Subject:From:Date:From;
	b=Z+dplVVg+7H1Hce9duPPQSDeS4+lbz7tsAO4mxThpnhYdmca7Uz/4pnJbo0d8Oy6T
	 lpTp9A2H4x8OelXUqLG6Wexf56r0z/uxt21iFYApHX670PTs8olQ3XDY3yHauTPcBd
	 odPzkRWq0ekP6sca5MfXk72+TWa41eAI2WuTecLB2NP/IMREpyTPAK03tKDQwR6PK5
	 ILLnF+WRyzJpDhs3rDZuFuoOw84M3BCSCEHMtoFR3Vw0LpKHkjlx0lKB97LMsZ3ikY
	 MG5fPpJRnoOW6y37XHi4tPCVE15xIped9gbySDGC4izDRhEvTLmSfchYA5jy3Rqsdh
	 YQGxa/DIkB0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAE9C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 15:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889802276.3274.15529102501716964944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d870b0b2a8f4804c8c7f591984e277b5feacc590f25a5be5a3b8f93b260348
Date: Thu, 20 Jun 2024 15:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718898022
