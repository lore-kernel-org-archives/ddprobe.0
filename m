Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599C75464C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787312434; cv=none; b=uC50oqEr79rfeEGbMVbWNRl9UZcFnvfNItdXu2pL88qlRtrJeE1UU02NxgtbP0nTSj+YwKYt4EUNMxVOexOoAu/6D7LGK4jEn79BA7b/wiPntN5Y6qZfyHXMmwEPGCKTZtM/FgnpP1ZqX7a/5+vV5YfXQNcYfwo4fr12aAVmV58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787312434; c=relaxed/simple;
	bh=H3MG7NJrRZr2HLt3C/FoFIo6AiNY01A5rhFNACPCUEE=;
	h=To:Subject:From:Message-Id:Date; b=onIE3cTmKS4hO8kxe0RdOc+3Olyfdlyy+M1tGTb1zKtZhe/8tchOm0BbS7ZJyOaUDy4dbgYxBnErEE1kNT4Sinb22T8X8+58Fm2RUVYpDF2ucfBL+bhEdKABol2agkaEdfhEHja3seHrdEePkqdCkf1GiXr8I8b2Zqf3f3ToI2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNg9sfm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNg9sfm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9ADC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787312433;
	bh=H3MG7NJrRZr2HLt3C/FoFIo6AiNY01A5rhFNACPCUEE=;
	h=To:Subject:From:Date:From;
	b=kNg9sfm7lEcLJl16LHM+14qGyxTguEn2TYBadLGs9GkSSnsBh1glsWfztwgTNHZRx
	 uLtLp1Ao3NSsxTF3r1t86ZiWVRjBHkailTWbDqrfZyuEluKOH2SESJUKwHj4TbHVLL
	 wJmhT/w8KqkXT8KcI9LBL0h9oJO6f5yCHUpL7eZnjOqTZMUjV1GshO7B+wiDoDJ4QL
	 zRjbIqXQhhoSUeIaVBQnxPFu0Fx6Lk1AtASwAOONuR2ZPzMa4k1K+PwfP9IWLkhnpP
	 XjHc6vE3G261fR0aC9OAq7A16Fzouw0rvy7S3HcRYc0J+S59YyVjoawU5yS4amUVlJ
	 x/9TG5LOjYhbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69B6C5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731243373.32615.2836925319183892348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb737a42ca6e618cba728d9b81d917f6c47b51674573d2e534a00a940cb8bc3
Date: Fri, 21 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787312433
