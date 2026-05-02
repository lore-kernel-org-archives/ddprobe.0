Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AB01A680D
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777730254; cv=none; b=jXV+Jf+0DTfDUSAHQoKZBkCYggGPPHiOItT0s1ZUS68Jz87XpoEeU4a7kzmOidaV6OJvM5/sUV0I6H5pgudBR35sDFJALJXlb81OIqan3+DFrkqt6PgX2Xt+S4G8LiYN9zeM+/lOLb3x39ubyHD7AyrXUOQlon0CTgYuimBhPJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777730254; c=relaxed/simple;
	bh=QokfvzGOjeup0LoRl2FEgUfOinVti3qhajzn1/Nn6wY=;
	h=To:Subject:From:Message-Id:Date; b=i0Fjq/rCvmvn3PsTuuypc3JYHzGQZ7bL9fHraZbpGYlfPF4riYFhG1vqwyRiSYVg4W+uYuiUJvFmFQTwNenUYjqjdj80hlK7pHz3A+pndNjNd7ylfIIQF2XU0rE3Jyo7ZUnWLUeKkof74I824kjeQ01B7eEbXUcSlIfuOnVYHP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FajA0H71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FajA0H71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF55DC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777730253;
	bh=QokfvzGOjeup0LoRl2FEgUfOinVti3qhajzn1/Nn6wY=;
	h=To:Subject:From:Date:From;
	b=FajA0H71gQYIEVDfwpM9+Wh3Y9MUx/wBg2RFoM25886UKllLJsfxVdBKDFtUQfeGl
	 hA3xmC507k7gIi8IPnfI2XvCK9a1vs778PWizV4100rQX4ji0AYDcCdy7wefjkmyAV
	 zZPWrSjdTbsTPANLxtqgO1LqDePP3H4T/pJO0syinddX+NpHubLl2vbW/d7TF9O9U1
	 RUIW1ADGZk5Im7y62SzO3CJt3esycPZNt5AZSGqOyGOCyZdvI90pvqaXbg3RUYQp+i
	 i64Q389F2IGFqdK2I9JkJsRjgjnidOUg/74o8NREwDjLaOoZEGPToxU64+kVcOcdpZ
	 aqIXk8qw5ZZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F4BCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773025368.24274.18267034077395683898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1decf5e9f202762802afc5aef0b4476e422e31d9b633dd5d7e4ab445334b6f18
Date: Sat, 02 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777730253
