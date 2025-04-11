Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB03A94F
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744334994; cv=none; b=DwUSpuwBcdIVDh84f8XFcJzw8XpTMGMuNWFvSB1pdpmEPtXVFDQZ7idwjnHvPhGY6oDFAQW6nTzzwiNO06JgcUyPE8oBqpqqF0N/QDzknDjnNFOTzjfBzGBdWwnN/9jHdyzWp79rJwJsV7ZV24/98FXuZjr9o4vzNfoBnAESMI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744334994; c=relaxed/simple;
	bh=y5V7fnCmVBmLX7BNb5sQCwpdNEBedjpEod5uPF5305o=;
	h=To:Subject:From:Message-Id:Date; b=Izfrp6Se3UHWnVxpJP38LcrzzqXYQjIMI2AloIM0XSX5XcXMrYhQryZI5/8pY1JqZoK7zVkRBOyIj5LbiKk2Zh8S/tdDtqwcmqCHMSa5rmHsLmEEpjlM0sczv/EIAzIWsjSQKdSaRvXjNyOzjEINps0fHc5wo6X76wGghMuVRaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxCnK2rS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxCnK2rS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B70C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744334993;
	bh=y5V7fnCmVBmLX7BNb5sQCwpdNEBedjpEod5uPF5305o=;
	h=To:Subject:From:Date:From;
	b=MxCnK2rSPF4A8yUiiLd8N1T1HAAxQY/GkZx5jbs+5JLoY095M1I5vy1keVid30Oi4
	 +mxPhSUjTr0XiSpE2CeRE1XA4eYI2MMygoTmRZYrvwR2olccEWirB2C3do0rLpLwwX
	 zXA7bSsonlsjJ90XPj9OAkemXyReOZkcAzD7YO73se8hy++v1ZO4YZgsNe3GBpOrVD
	 BNsUxOAuu4Bcpzi5efE+F00ciM7WkBBS58l7c6HZesQAzzXamb0fOMvaBpMnJso5XT
	 GS0hE1bZu5HO+oF89+ZAO4zBoeYhVPFC6eR9YHijyvUn+DVrVQSo9ZEEFt6Bx9LbUm
	 A9LWlz4mqcw+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90B5C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433499367.23484.2138865789216428746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363580215c4ba99c8164f7fcdb5afde62e1f6ab089ffbef588f8cc783fa7c21c
Date: Fri, 11 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744334993
