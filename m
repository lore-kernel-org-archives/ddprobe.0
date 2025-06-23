Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD727255E34
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750685393; cv=none; b=TT6U8qU1iNvUSvNIj++lf5pwft4Eal0JOnOVxfvC1C60hhyA7wK3WAXis4FFJ5sNuEDADkYVO9KrcyPNl4ZplKGpCh6R6Cez69HOOtZkTJvGhjsB7Mc0T1VIrGIaRoBtcRAWrJ+EMWTxX95IiDFEM5/wbZJ9VGsyC4p1h4hoU8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750685393; c=relaxed/simple;
	bh=TDYyEEqPgGOBqpTY3buOssmiUAkSSe6HAhNQFpzQXZo=;
	h=To:Subject:From:Message-Id:Date; b=tflMceiUDQDDlNbzHdaFvPG5ADAiewgnI5NEmHD5B1MQwsExuNk3xldWXQ49bPPQe4AdXlv1Z8cV0xcR+zZpuvRrPBQPgIn8lROphNqMuVB5FCQLUaiy1MgXd8vTyKf4Oy5DDmDDXyn1tWOZ0RVJqs3NLehkgURD5zQlhZNUryM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFdhovtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFdhovtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF0C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750685393;
	bh=TDYyEEqPgGOBqpTY3buOssmiUAkSSe6HAhNQFpzQXZo=;
	h=To:Subject:From:Date:From;
	b=hFdhovtWBorBQfe+yPYFWM4+lKt7LHlzFuKyoOymVJ71mzxRjCJnGwm8bka0Eh8LM
	 RfQeUuZaQ87RD+5CN4yw1TnUdHLQmL9Zpq/ZNILqj7uVuAVgZcyZzRPsNdOmrksiE4
	 BEA1pnMKOOqqih+yzJhpxU9Ebwfq0SXghDLJVENxYZYJDR/4Fad+R7bKjkfjC0DwmK
	 lxH5A+Q7nccQ0GIFmSXKU7exGByovlqihsiYFEa70XhL9QQo4ygfaOH8Y3W2M/CcI4
	 sa2UjjiXFpZ2rIuS71RVAghMPHyThwebQctAnaSWJI0stI3tfjA8aG2VFdZ/lN5F3k
	 9BGPQpZpk3DlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B8C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068539357.31631.18376882167555761617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa9de3344bec74a21e644c0edfa4cb2903803d22c6a3654059e15d3792ab3cd
Date: Mon, 23 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750685393
