Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481CB1DB551
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780858474; cv=none; b=nwQCawFq8xUVYt2wkhkHdyajWl66p9N9CEwkcZ4sJP9LpgG6pprPQNJND7SV1HnrhzFq8vU7bec2lDB9NyNPbIQoEYKMUReLvGsdsmWu3wgrA8NcrtboiscSl+07XORVJTMC+7ydgv9P69V2GEJ+zzknJuhMS+6IYJhNmhx8Hf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780858474; c=relaxed/simple;
	bh=w0z1d+L3vupHUHMOljS51eyB/Tegfg5ICTtrLjeBFto=;
	h=To:Subject:From:Message-Id:Date; b=cUqNzDW0/9NMQJLWizWtbVc0L9tq2YAFzpXh2jslXxEOdk32/SCYTEiSOTkXoFKcnIAzXdsgq0xcTJX1+QkkiVdgk/3jznQKuKoGicpCR7Z22Tw/c7mui/NDLsBDP71yqrv/mD8qmId0BFEv8sQ6Sm6SeG70SNHzJvmxrNqXVXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu1JMjMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu1JMjMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC16C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780858473;
	bh=w0z1d+L3vupHUHMOljS51eyB/Tegfg5ICTtrLjeBFto=;
	h=To:Subject:From:Date:From;
	b=Gu1JMjMvwZ41IZ5zJFdBWa1pLQ/jZ9UvAHUI7fmuEAFiub3ggao7XitW6y23RzMhr
	 RIM3Ta2c06Ex7lZ4Pdi2jx71xcyHIODDpU93H6rBrsgt7WT96munOgC61Fy0kxnUq3
	 P14lFLJxDlKwLBukO+BPnvZ/A2B8Llai0HV+03yeEyev0RC5+GXF51kUuz3HxAkcp0
	 If5IijuqGFj+Wes4MUov65lN5ktWIw+b0ECnyZHJ60rOaw/laD1SSdmn5P5cAkcHgV
	 p37NiCHcWZX9a2qd6FHT7ybmOPFztwZC7mTV2FJkN3TBx38Yv61Sbm0Veg58c0y4nI
	 +nCNXqijMSFLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF275CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085847369.13633.5109928277054896443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e25e0688da02ab33ecb30c77064b70b6fdcbf2900a743d8694b23636623f70
Date: Sun, 07 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780858473
