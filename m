Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2296735E526
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768561435; cv=none; b=XR+32RGCnp1HyEVRkw1wMDvwJ7R3ZARZDEQl1BHQzw1QomIuUxEHdqmiUX2/DgeZNBxfIBYy35ZXrHw02N1HwjKw3EuptRdkVBhhSy3keVUz6OgxB3+b7HCZhfnZw4W7a1+vy4aiyI7FwuGNfopI3T5enfcN7RxYuQk6oKeSIB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768561435; c=relaxed/simple;
	bh=sDOlTL40VTfPjBzSQGkSyUZ9jZCwTnK/IMT1XIvlXUg=;
	h=To:Subject:From:Message-Id:Date; b=Ekfcz2P3PXh11KCXVb8/MZMGrsNy3H+1DqelT66z/iPuoJt/roM3rAHSK9hSq4Oi0qNcWusseMfJLgkse9AuLgBjVLjmcoSoWLlAedZIRi9mMWqdGdCzm12QBghkvVe/+GNmWx7jaSoOE1IP75CirdQq0V694pZekcdlvNBon+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqrI93Ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqrI93Ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFF9C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768561433;
	bh=sDOlTL40VTfPjBzSQGkSyUZ9jZCwTnK/IMT1XIvlXUg=;
	h=To:Subject:From:Date:From;
	b=WqrI93UrELaLkxm0iK8aN4z+vTrMd3QhOupzjN+43hsYae3rRDFj/hxPCXa/DpOca
	 R0jXriSrq4hCxoOVTFUEFLgc8Idff0jsjwa6c31cYK1veyWGRdiUxr6IyaR6oXjtZY
	 Lpw5XqMnlTkr6VOxmEp7pW3IOgGAWgrIEiJ1QFFEwe+PgmcS5FzUwclsclDhNYFcAE
	 IYVQQIHFNvf5CGnPpYaeS2FbkMs1oB7f0w6t79BGraIeHW1daEbndWe4tKY9CRDlwR
	 ljqEm2Q0Nrti8SvMEOrTUShOTtKJzTzOpt4jUtCKftCpl7gvO2QQMD8KeNd1+WMAPN
	 M1zuPJkYq19Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90963D47CD0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856143358.17801.12316897680896249108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1b08f451ac817270a04f6d405775f32e11a42537c9d146ad3eb624f30b2647
Date: Fri, 16 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768561433
