Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3160A18A6A9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747119595; cv=none; b=AJ7SxQfZNKERZZlwpFz1YuZFiipaH6TXmtx2nThmc8h/erSOhTnpEt/JVvRTx7QPceLkMQrCBbYjA8Td3P2XJuNgwgMl0wwL5ti8lkw36eU4Fm40mNbeXKLDRenYzksD4kGKvmyutz8KMsg5ULKEfefv+2XWh49KTudd6gjBUoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747119595; c=relaxed/simple;
	bh=/b+1z4zLpSt7a68stKr2xpxu+fiwRySYVhho2yUM37Y=;
	h=To:Subject:From:Message-Id:Date; b=NbKwy1Zw+nyxG7A/rEst289HAwCSpQAt9s+162W1PfHHXYCFfYIOqTERArUAf4Z2/7jxtcmqm0UiGLGluVb8+ep8Sl4qe/iWARDcjkgdd7mLV084rtdHxYygTah71cp0oLQ7oWPuyzNauR3i2BiWq6MoVYLcFH58v/355jcMsgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxKSiv8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxKSiv8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A08C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747119593;
	bh=/b+1z4zLpSt7a68stKr2xpxu+fiwRySYVhho2yUM37Y=;
	h=To:Subject:From:Date:From;
	b=QxKSiv8uvoDizYNLQK13ALYiaMMuHTVpkpJ/qNUK14fuVoWOriojKdz2SaR6Wh+VH
	 RHhNUNT1K7KlMZHC6JD05aMmy3QF4zBlOzBR+2h8A8Xqe4QpOgKF89ul3FLnGBch+o
	 4GspUfG9pyy9rx5DBRGL3/D3sJpO+6RSkltxsmmz2P7pPAJhscY+Yb3lvr5rUo3dTc
	 ogcol6dYtsfD4diBYF41iyiMnoHpalFU5TW6gnl8pYOTmh2LkFh36Wy2zJC49U2OcP
	 sKLlqGNVjwN0LFg23+zzbc7s4sVWDdn3PFceMP7BIgW7IstA0ylC+VFQtWK50x8yHJ
	 +dizHqjjdVopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90837C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711959358.31274.9608669570641580737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a104c959807641b2560800ad84e61e5d2d41a6f06d6a4285d36373a9b66ec5f8
Date: Tue, 13 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747119593
