Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3092753F5
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739488734; cv=none; b=AUyLO9Y+Gidno1eejim6x8ApsIQN15SG/ZbyXRMTxZ1QM2Z0QsdLLkWpnJvgkZVBg0TEaT6iIxYqIk9DfItL1W5cwBCndCVlj7ZbzxobVBssKkvIOlW9jsBmtF3qhIlokJ+TK59fKbKB8i0K6ov6yG1gAzAfXVByzDKh585xG6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739488734; c=relaxed/simple;
	bh=th4LLFj6Ht7L4A2EqTmSMI6pNnxwnOSnw8qrd4cCrLs=;
	h=To:Subject:From:Message-Id:Date; b=it1KhQwGJjSJaEYSIe5StZHpTLJ+Z2kp6WwSSZgomPt1/1j63w05fg2FGBs3U4+EhQYwSEz5yoMkHcAqcBDvFKQytzk4iwHg/WJ5+W42dyX+29ydiOh/PEu4sfWqteRqB/SO4BqbzOcKyH62RQkNMVtFJ9bUbnu8/w9I/goeX8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+StZBiO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+StZBiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3056C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739488733;
	bh=th4LLFj6Ht7L4A2EqTmSMI6pNnxwnOSnw8qrd4cCrLs=;
	h=To:Subject:From:Date:From;
	b=W+StZBiOwmNPIXwRZwTbD7LFHilMFPeD1kHmUHEDay3w2YIN4bjG8TD0zegDwSZt1
	 EBbKk4yryBIdKuLfLo1+0IHY3t56o+Smhb8mBXvgPYYk7jMsfeGNAVoWp8Z8j323fS
	 8Mkgu/32y/1kekD5c+BmFb7+slawa/V0JJ7HrTZsW18+8IZ5sSC4GPNK0ltPQe2Gdi
	 yRzKadams0lTQgLXkQLGekPSp8vkHpp+G/E9Bsm1/R4mCsY/K1C+Er3UfISmQU9+XO
	 EK8wHDyCIQ8M7yiVgijHeHwCJ0oxNCmr5DdBV0kRy59bWDMGV3WEeg27whBFxP1Xef
	 n9PmvXq2oEVsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F69AC021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173948873364.12169.2362602356790494227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4e922109b3ec1bdc98f1638d4b08e10fa4dd3e54e369d4d7ff2a3f9ed5e8e0
Date: Thu, 13 Feb 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739488733
