Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C5838E124
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778320654; cv=none; b=lOd2kIWKw8IUmBNTreXRMR7THxguovywVQdZlt2VY9hM5ATNPAoSXst1W+gcAMsRR+aiIS15fUChAE/HIXHkmFr9rjBwZNkwm7CfRTNpMkr5Y13QIk4+5/P3LNFa2KDYa6Ua/XZb/ObuG5/7HqE41xNm0HDblffw8+qUJ14dmMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778320654; c=relaxed/simple;
	bh=vLzaRibcHPUDlqLNKa2TUWpZqUoBnd43Yqw4t727bgA=;
	h=To:Subject:From:Message-Id:Date; b=kBfmHU9hddngchyaXmHQpHyX7AJgafABsSZxf87JAT65uQUjbmqEUY78ZbjJgVwWrHXo735oV+2kMTpKsBp3SNgk+qDmJeT+HJkyI6BmiBliGYukEAGZ3y50hAt8UzFLd+0glbuTkHIVQJ/e8ZYVzQN+Ibl2Zq57Gwk/RH1pRk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bM0BHuPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bM0BHuPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39818C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778320654;
	bh=vLzaRibcHPUDlqLNKa2TUWpZqUoBnd43Yqw4t727bgA=;
	h=To:Subject:From:Date:From;
	b=bM0BHuPViK0aF6J+dFkKnyUmDGAM5Z1PCUBMtjfAQcwnFEsLXYN6qdvY0c5RQ1MgU
	 OYeeE3sg6/HUY8acZJQpK6l/psHRaMpnbKueHzVuf2vLINx7pq+6kajsa5CwZVl3mE
	 dbSw++DzQUU84KX6gHywH3yVgHhzD2S6Z6RId8tXmu/RR8N/CfNQ/5iuMtJYOuI8h5
	 BIm8M8zCQ+QptB66WSZ7vH0sON/k15/uzLO3iRlG9zOcftphRFzRqSru9waUtbG6YF
	 +Husc5cCcjfgLZdaDISvQF42L1paQ2tM4PvlpuWLFzAewllEAoWU15ZMWd74ydIgEb
	 0+CR8Wbfk8D0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00EC4CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832065387.28184.13210416165827462763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5e571db2c436a1af6671982a7272560a74c7877b6465b7d01ed4911a663064
Date: Sat, 09 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778320653
