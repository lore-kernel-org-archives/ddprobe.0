Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD92F42
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746402594; cv=none; b=rIlHg5R+Cg+3swERKujwJqk4eio/vJ11bxI/sUMp2Fxx8yKFhTB8b5/NA8CRm9S7biZLXtgoDSdyolSBKQ5QOpVOlDzvh+FhwPHHn698yNISgKF1mPxIVAhf8y0uRkIE6jj1ZqjeerZUteWteHEmFYKsudptrSXiW3HzaQlJnfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746402594; c=relaxed/simple;
	bh=WJS0Zo4PKF3SBl+nT8PBm3V46kyCGvmdiG/gyFWTaSY=;
	h=To:Subject:From:Message-Id:Date; b=doHgqNwl2koEw8Ak9te5PMw4nNEhBZniGQIBJyTYysH0jJvu5KEQz7k1/6rQWu2PXqhM087RmNEvFvtJdIRBt0ziQISpwE4sQtcNc0ZRDvsf09YJ83+mamYUtIxh+v05nolmlJjWXjGfhhVZd5dqQiE8rXAv38zGmlUWUO2nmFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2eN1gJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2eN1gJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2946C4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746402593;
	bh=WJS0Zo4PKF3SBl+nT8PBm3V46kyCGvmdiG/gyFWTaSY=;
	h=To:Subject:From:Date:From;
	b=a2eN1gJtjDXNnYqwrvry0q6Pk5rnG2vmvByoI3aKX2kqkjQpKzQ+IzGdrbnbaBkSN
	 /jMYnRgMWv5AcJbjq4gBpJB4SRHrzgmPCJmPYL0voc5eLsdxRfTOdConjO5a1BXbNj
	 KTf4b1C9/X+LckEUoH4fYSak4ZxB751YC3kmTadnA3DwASi48zHDBP/G0hjSkXq4h2
	 eXUrs8k8Tgxggx/E5L4D0cWmtzQO80i241zeOZMsBYEqc4Q+JQVKs91Qiwj3RVp+vV
	 GSglRCVsi6/7gIPGYS7M7o17pgW70hUXntUOrD3WOSuWXWLRc44v4FsQ7JXw53+SqM
	 LbgSUtW/84JOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B1CC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640259357.30834.4555020098082232707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50096dee6c1d5fd159af7eecb00659bd00237d23d4cabcf7737fc7c7caa2b222
Date: Sun, 04 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746402593
