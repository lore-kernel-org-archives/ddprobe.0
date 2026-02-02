Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73AE263C8C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770054233; cv=none; b=gswi03+fbUVlorXoIu81WkFaxm4DHE6ZIWhvoP70YkU/0V0ya7PQa9vNU9uVcxyXm/C5mgT/qvCXEK/sEZvW6hAm3Faq6qTUaCqDNPfEko0x23nDXagSRzQP8BI4oC5KtAxl3Rwr/Y+g4pTy+0GEzJXAQsqJMzZvESorXl05ekU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770054233; c=relaxed/simple;
	bh=9ABj0dPAUm3aK/JGFQvQr6r+Or7Znuji7thTf9BKkYY=;
	h=To:Subject:From:Message-Id:Date; b=qdhXZFYT8ke7ilbmg709f8zV8rYF6RksRDd9/E5SN6b37IXqxRpNnhW+2xWwS1En9c9lngBP89uHI6/YZvnUWrANcVKnx4jSz7pzLqvxoCYavrJAN4++zsSAbRpWxiejhi6cmo+sJLKTy/91Hj6EjYwUDaKDzVhL4cUxSQSxYpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laBMRIlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laBMRIlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0ACAC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770054233;
	bh=9ABj0dPAUm3aK/JGFQvQr6r+Or7Znuji7thTf9BKkYY=;
	h=To:Subject:From:Date:From;
	b=laBMRIlhKxdi2Qqp0e/ob4z2jTrV00P2C7oCflzxa36IkgVopZEXN5fr3pQ9inCrO
	 O3iL8VAFxB3Jg+LUHwJZ0q5Jy4d73ZvChuerT6b7wMFO61XhIsnXdwhDjHpxYKYpEw
	 vK6GjFoWKzDNyp679kxP09JU8QucHx7KN2x2StU4HuhASkz68IW2VtfWjRWrZzCfO4
	 SKnATK3LbGFcnVTLYYiZzeMjAZOn4LbI0uratgyEs4dElwbz1xXCEnRaVEYkxlITBK
	 yzBr7+aP2Yr0u5DK2YfYMWkkTmNU4aU2j0kDGhabQoIFZhmIuXKBHrB68Zb2qst6VT
	 cKco0d9Z1VOVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97078E7DF13
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005423360.24307.2435533119380448390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b62dc1b02a5bb73702ce73829d6b5d5fd607aedac7a1b3d18ba564a0500c56b
Date: Mon, 02 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770054233
