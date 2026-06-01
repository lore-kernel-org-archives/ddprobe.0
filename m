Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AF03630B3
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780352674; cv=none; b=BvGAc+vFjAOof3bXgD5g6HBjkkW7nqpewwxfHe6a15DAdMoWMn/c7OTeKVzvsuBrWbihgYOfxSrRk+BObLJeYMi3swBIKOvtedaGxOtsXY2nNBMkn1pTgijO1BZXvTa3qUyexJlUICwzElDZgFJ6JlpLeMwiubPTZ85J2JF9I4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780352674; c=relaxed/simple;
	bh=DQJ4mdlU1SSxhv5vyeAI2XvzqSjoKh2TIxshXa8EKq0=;
	h=To:Subject:From:Message-Id:Date; b=lHUXl+32GRPrjGmQehbhUjuihGyCCsR639LX1jFSbmqdPP+B4oH919dBasVPiyVn0ZPAoC8tTHo1Y5V9lMXQmXunW0tGwWzPL7PIOsOar8u3MlvcHmihQfM64ojuQUD9ylErenqkJrtAE/9u56Mq77qTEy3Zr25KzOyWVPdAKzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+1PWmpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+1PWmpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5519C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780352673;
	bh=DQJ4mdlU1SSxhv5vyeAI2XvzqSjoKh2TIxshXa8EKq0=;
	h=To:Subject:From:Date:From;
	b=M+1PWmpQZ08g0mv2vQ3sjiJQCdYHBv60PHd//YlThOBXym4HHYUqzAx494sTkwTAV
	 ABsrw8RGaTnaYq03XL35HWc/wjrrTPJgUp0Il+r+HLLGB9zZl2C7RPZKlKEoWblXbA
	 il4Q8N7gtqsh3zELhdOF4Ti+DReQDAg6/zG0J4CEw+DVOcnlV+kEY3wtcJMGt1vfcp
	 hhYF0mx/TpnYQ2rTNvWCqI5zl0IHp9FfyIGOo+Puq7u+lKOL35W2h1jhWc4HrtdCBB
	 spT9uNHB+7EmLHjobFoSNODDXtYh+L2i/sAJI/IIsYdAi9tT2UK8COFlLt0ySVM4wz
	 QG8tej21NB2Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFC3CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035267369.10869.4651379200952615463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479a409ed499ba3303ed9390279c1bd3fd5deb795b4a7c5f30ccf3987496e85b
Date: Mon, 01 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780352673
