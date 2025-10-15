Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0317931A542
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760518794; cv=none; b=daVs4UXgjAnHM6hbk87MDMp1HRizGynrGqKgkPaxYfnVcXAkc3zIGYdF22GOt3cQnMYz+d7443uAgTU4XNIc9GVKU/645ySCmhG398yNzD+u8feYaIrGNGZFAIA4vCMIgHc2uui9wU+YNKDSRcxehaHFtkkuvU0sNKSBD1vBxxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760518794; c=relaxed/simple;
	bh=FKdBTc6WgdhPvl8QpuRC7hgScXglU82YcMNYUB5nLgM=;
	h=To:Subject:From:Message-Id:Date; b=CoGXz6AmvLfM5SenkKQWKeDskquLwLAGXGLRWk+zMcI5B7rgu9XvkO6EdMKnIjbrM+VYzHoLIY9wXXNjGY3mc4CcIQPJwpDC9LGJfPjEEYiK577mdG+JOlLogEVS71hHFISYK0AuowGJE6VGBSHS3QAJP1O4RO158Bea9w34eEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UelkhEW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UelkhEW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3674C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760518793;
	bh=FKdBTc6WgdhPvl8QpuRC7hgScXglU82YcMNYUB5nLgM=;
	h=To:Subject:From:Date:From;
	b=UelkhEW6SQqIW8zHpRHiTMWJLq6puSTVPkqrihCORkzAURvNn5NCjqozJY7Kh+EkG
	 RnVgrKNmwHZlx9Kxwxv0c92Cdz+KoIEgAP5XPhCiH3eiPvYUyjbLbWLyNYo17ZWf3n
	 T3jDu+qPMP9FpHIx9uTrTFHBHuh73HflIFEW+8rPOyCW3+K4ZXC3QecSortFOohzeK
	 JywidBpv+lrTjMNEMoRXsr5BsFt0KcyzFBUs1RFvel0RC6gFhjQNwDXInfqj31qz8d
	 8mPZhVtnZG+eu3T5ALfTeItj3+NowT3BTrBa+aIcqZzEiMyuP72o1tY6Rug1tWJjFx
	 eNDovqoAskS5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908B2CCD195
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051879358.25407.12961711832466003887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227ad073ce3788daed45f1e7255f27d9f8f144d38a79b5cf2b309964b42fb5e5
Date: Wed, 15 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760518793
