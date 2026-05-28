Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE633F6C33
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779985954; cv=none; b=f24OfRqhpdfFA/0F/m3UtU+IJbXFZP3+WqY68l3Mi6S/09qoveiQQne2NY5dtnZT/Lr+K/B1iJ/3jY1A+HIewOEV72Qf6M4Vvmz91E+q0nBUD6GMDcQIHP7qJxpyPg7OXJRIB1JsOWoXJokDkMNFLr/WY1PsF0x4i0rB9GydCl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779985954; c=relaxed/simple;
	bh=6dCzWoaQf9XLJcpvkQ4vr8EXAn3+YePpKmKmDQofbaE=;
	h=To:Subject:From:Message-Id:Date; b=ZOrC8302AafXL0Xn+gkRPtYJ40eFqnDadQqVAaZqie0mM9YqrvsqZBsebZLjE5pSt6KZIzn6asJncb2GMCfvPdLsbyISA9jc6f2pCpOy++zTPih4C9DIfyBWAcgMvLdYXmSoWIZZJVqDMsfN2VwgNudcsJGi9tsn7xlmr9sss1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syOKsnfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syOKsnfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED1AC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779985953;
	bh=6dCzWoaQf9XLJcpvkQ4vr8EXAn3+YePpKmKmDQofbaE=;
	h=To:Subject:From:Date:From;
	b=syOKsnfk/NMYbWOy3GpZ0wMTMJbt0VjWZtlLkWH8xVpsXtSUyMIIdWddDmePz12RK
	 KQaisdNy+UPuy6hI9ySsKmn98u3CqIu9vvQs00yoFWNO9EAqTJqUq3LhNaxqEwq7xc
	 gP4a+SnsoLrRtd6NTEPXtqMvmJp3FQdlxoV/Wimkb0pWwlk3ZfmR82sxmGfXFJK9zi
	 2n0prMs4hDAuGjK2LZy9AxOPXbL0qrAzs+LAIYEA69TY7+roRdAx8NvlvCqutQ8lt6
	 E4iPRIWOP4prMr+faYqNyHgB/txu/lerL4ahA8HYtE1OIkszKaPEVwitfgQ5s0CiEs
	 9Uxl6KnsuKiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9092CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998595368.21114.8184393309808460852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e11db929e39bff952a17adbc9f04f2998284b8a2ba5a6c8e9ae9a2f99af34ac
Date: Thu, 28 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779985953
