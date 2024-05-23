Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F80B84FB1
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716497603; cv=none; b=jfPnsb6QNmoD+BM8zLlt117yud7MTwMMJ/RcMF2Sk/n9CXff/tj+qRfl1tZhpsyc0ku3hLftjTjz5w4N+nnw/IhE4eTIz+/5b/ml0LhY9D2nZZ5Qfv8NlA7EesYTgh9VQecOtGojV4M9SPQsMiuZVFblI4OUMvW1zFhoba9ToTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716497603; c=relaxed/simple;
	bh=HOtCXzfQHUQHRnLx2ySn2ctQe9tyqKpjr59ODZI8O8U=;
	h=To:Subject:From:Message-Id:Date; b=V7RqaJvf+DmPlAQAMJwHm50qYSBUcRyP0t7doKxHztgvVEVrldoViuFoKvztUla+oasQ2amaSMxLvKGEK+h6UYYxDfI0khMEpxWeN45Zp7KsLeGJdRSf/XYU7jbJQ51E0mKUkMwzBaK6HyxGhQ5CFUo1usgw1lUnMfWODEys2Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OT+L3/PB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OT+L3/PB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E292BC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716497602;
	bh=HOtCXzfQHUQHRnLx2ySn2ctQe9tyqKpjr59ODZI8O8U=;
	h=To:Subject:From:Date:From;
	b=OT+L3/PB+XbbbnEx6hcFEpYcIbwmTZuT8Wjepzz06uMQxAXsv/KeUQGqPNYcaqCAW
	 R9toJKbBf/PLXtlD8Q6Qw/VW3BvtZsd0H2OiozQ7yvIF9Je4o13ulfmOj1zf22X2+R
	 bQD8kCFKYihegAl7d2y55xh8oJ8TbWP4oG+XMH2Lnq4iN+SRFw54y+lLXUkz5JJLjo
	 liaEnr77r4tsd7gSSX0elnm7kTm+MGeVRqf7+GmoMfKJmBD4uIUHUEv2nkTuJAT6/6
	 cbg5B1XeAzsuXQWZdh3ZR2cdWMvnqFfsbh3B008TgzKRLHUT0XJrLyBMdtzOKiTV0T
	 ZXD7rzxrnae1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA19C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649760281.1636.4678283810671772603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ef44d7d51d62a617e831563d51364f84663b7c36ecf7b687e4a1a452586bf6
Date: Thu, 23 May 2024 20:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716497602
