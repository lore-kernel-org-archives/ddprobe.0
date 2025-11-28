Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A92425333F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764307374; cv=none; b=Z3WMYGZtzahMZywi4sNFwnVOauuWNFlmhf8ogLzIuFeDlRnWOpW98qS/7+3FzM4ym2ieqfeWtYAAT5gp522MojjD/9bhHxbZWvrjtLTsKqnjUGq7MJXqTVeI39boP0ATS6dxdzIVi7LwCVjcv9DxFa+/mdMajU3P4Yb8Ge9O/z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764307374; c=relaxed/simple;
	bh=Boh4DKtjvXwMhXcYmrvhZHlgeQrN2u1fhdT0hZhTzdc=;
	h=To:Subject:From:Message-Id:Date; b=ntiyR4brj9tZ8wP4HNm7Q5V5oLtt5o2OOzWFPXFWghkwJrK2su3qgYapfkzLe3MALXH/c4vS7fs5nOWEFBy6zCN6rvP9JdNto8wh8XQakMS3oAE8pYBpbO8zRvZhaeHVal56rE1vM71T7zcFxJxFFAKqIW48wmzqSgVyCx1Eslk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op7m6wb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op7m6wb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2547C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764307373;
	bh=Boh4DKtjvXwMhXcYmrvhZHlgeQrN2u1fhdT0hZhTzdc=;
	h=To:Subject:From:Date:From;
	b=Op7m6wb0Vo7XFEvZC3iJ2XPqQ4KaEjKAeULwm2O4FK3urmu76XHysq9g1i7t2vOv7
	 sKR5S2WbzAiCdEJapWAUWDFfYohKiXnvldA1AdaqWRkswEF6rRvkEJmvziX5iGj2PF
	 IYwEuwDDLIRvrn8Xo+8WmpA8ZBSnsebzv+YObeRrpqOHIwvMXjq3Cy/lYS87p7fS83
	 F7ec2cXd1xIEBNKpPVnyY2KQpsYn6thbETf6POmVSG2fP4vg5VqXQ1cwUCZEJEopdV
	 2mZJICDKUTQjmucAoxV04xykEh4IlwlQeRcdBBCqPwp+gFXUPNXp+KWYQlzt2iQuvL
	 rHHLn5lHMtyAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064AD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430737358.11568.9427140882406537070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cf7c59b94ccc94d8952ad1d4f527540336e850643852854115ee373a3d24ac
Date: Fri, 28 Nov 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764307373
