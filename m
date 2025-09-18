Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E912DCC1A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758177594; cv=none; b=X44NcIdRC47TrhOmhiXwCMCm+byUHDRjtpL6emVC1Ke+mVsebmGdgMAuY5k3vbjxwxfcstIbSe7/6MzJOvx0xegVUJtpOL6xUeEVITPXwENnWDx5XIku+LEJ/zPTgjyUouVJzZwZfAIzDYDnDFnx/2d4qUNbXtw2ivTg4oEFYWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758177594; c=relaxed/simple;
	bh=MTESVlVamzndePN5NXcDdsZSQYODM8Dl/W3wjR10S10=;
	h=To:Subject:From:Message-Id:Date; b=N/LHdFbgRYqYbrYtZucK/e5e1uLhjiE2jsrb31D8YodpFROb2CvcHx7+wLlm5mO3vPKsBQiPKMJ/6dHHGYBxC3vxjo2qNwNCteD/1Gt0ANgpWztrie+4ZnMXfmt9JEsj1Wy5uQs+0vvZEV71CQvmYQOv+T5ONoTQWaB00tiLhg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIOwv3sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIOwv3sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758177593;
	bh=MTESVlVamzndePN5NXcDdsZSQYODM8Dl/W3wjR10S10=;
	h=To:Subject:From:Date:From;
	b=rIOwv3sWS/ATMIAYpDA1ysUOXx3VD7OGsQ3UU9sVmNClfP4d+F2OxW3UeoyzCW8sP
	 xFv7zmNDF25pyelj6x7wKQvBdznXraoJxqY3mW8w1LX9Rsn/bTl6bYshqoOenmR7uj
	 Putk/CC8Fq7WjIa4XYTzx83Yu0b33VhqvlDr/Euy2H9GTc3xvV4r6XqTAEG0Q+9eFm
	 xCtDz5zp06UmW9TlPSWeGqvuzSCJ2xqPfriM4+6xQ5gTrDvRZVNogjK+hf4B3/B7lW
	 m05W4g/3NRNf5tPOUjw1E6QiVjcdHBPvLrS6wfqQwoRIa5TiT2h/LPgHkQfZYEr6MG
	 1ZL7KQLJxOZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACACAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817759358.1005.234477807153462236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902c99c86dd7d611a4c51a63c4f5039a4510910bbf533dd805232663b13189ad
Date: Thu, 18 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758177593
