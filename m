Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412A133C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720160123; cv=none; b=MfIxO2CZo8gEfOCV7oNso8rUPH+DcTdLk+TIanq17HGREYZpu5ysCfLub9RUf62Hgi5ssWGMi74FoqY9o3gtWNEosNZYEgQwkPPbXfklkAolcgtDro+12v3WH0eDj84OgiLp9B9yzQo8QFHa7AEA96O+x8HfiNXeJLfSfW2Z3FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720160123; c=relaxed/simple;
	bh=kRXlyNoOpds15YLe/A0rp15I+pLQAoey8CD2iu7EQIM=;
	h=To:Subject:From:Message-Id:Date; b=W87I/0C9Q7DH9Rm341m7Ijq+HAs/+yGiorN8mpoLjoTFLMJNRL7py7J9Z9GlZwFOuI4e0TS9Yco4Pu+uE8Xn80ULGibhX3zXo3fX0J9uH71po5LAh/dd1KWI7MkeI9a+pM1lUu+jHp/fcRzkqSn9mTs/j1svaevUs1ysFBbVpIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWGf0y5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWGf0y5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87F8C32786
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720160122;
	bh=kRXlyNoOpds15YLe/A0rp15I+pLQAoey8CD2iu7EQIM=;
	h=To:Subject:From:Date:From;
	b=QWGf0y5/Xkt9iyvykBZSXc/GW36YE6GJe8dwf6pXjtI9njeTXh6XDP+NJNtvxVpb7
	 VnJhvEwWKhijnyc4oRbLgJvfcTlAmjLTyQJFHzo+BPQTbDL433rNpcBm2xaH+h7gB6
	 ppWpjPtVvAZwmqC7Uq1KMmUY7PwYT4g5LOgZr+YLdypZv/ueX9aPaLLCEMWEjEZeKB
	 NpsTmSzOF/jlTow1eXkGLyAski52jK619JVmFAQAuNd8yB39f9op15T0OpHQDbbxw+
	 yuA4Tx9pOsN1pc6gWSNkwoc1yxptYgxj1k15Nw/jIxMSxJZHrcRqio7JUcXG1J2Wdi
	 74AVVGjqJdBmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F6FC3271F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016012279.27982.16578611503075392361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b440a464be884669256704068669aeecbec3b810ffba902b192de0120a4abbd2
Date: Fri, 05 Jul 2024 06:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720160122
