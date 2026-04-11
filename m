Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201FAEEBB
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775939254; cv=none; b=AJPDnY1yyHavqeVYe+J9NdttKEpEwcW+x4muO5/A2iFv+GZNFSB5cmI7gJ+qXhP7snPN4L1GYqOcV29Y4KH3PPQgO8pjTlCeRBFubmZ7BZF/R2zaIpQfUhMhollrPQ6ZgXUUwhI/bmQQim/H790T1J3G6qmp1mLEOeFhUa8HaD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775939254; c=relaxed/simple;
	bh=z7kWlXiTA2kF0qfWPsRgjMdvDvNBRAvSNtiwyTtanVc=;
	h=To:Subject:From:Message-Id:Date; b=iMW7km9xcM3i8V6DIfvOc6DPdk3atDypiPSraHF+6kmC/kix1ZjmfFm/oWvAPDLAuXf8GhMxZmi0FhTbCFU9BElK+IY/t5cilOm2+M+kCPaPD72XgL4EIHfHS3dtv32YkdPy3j+SD9molxC7ymWn8yrpjMHZKFQjEbMcmMF0gUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2/jR5uU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2/jR5uU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA987C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775939253;
	bh=z7kWlXiTA2kF0qfWPsRgjMdvDvNBRAvSNtiwyTtanVc=;
	h=To:Subject:From:Date:From;
	b=u2/jR5uUJmK3aolvHNk8KDqXI6nvoVWCVitMAa2XRZEvLP2vopAH1pAZPdwOnMuTz
	 zy6Bysq4jTtI4SnfaFJfPGD1IH3GRwad4wvBiZmAc45SzJ+bpD+0ylqi2zdAFxtwBe
	 ykSigObSYaHBxt46Ba8J5L/3r7bRDdZEDEVI1fKXsaSIlg5mGMijIiIj0xmxXZxTq2
	 EMGCsCeUD+9/YUDJLzeVmXrAmII0DMbJGaCSoz+L4yR5biWjYa3C8zVwCHH07w986K
	 RnoVzGBM4ArVEfiLwYnXb4p9Wwu9f80lIOPoDCx3oa/T0GeMklrNd4z0nMQ60/bZFE
	 hKIXb5yP3lyAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA283F3ED53
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593925368.16622.3317830405362129343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd08c761a8ea15de7be70cb92958ba06aec55beb3d47c1d3945d89f1a4cf043
Date: Sat, 11 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775939253
