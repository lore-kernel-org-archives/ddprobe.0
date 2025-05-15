Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C6F28C2AC
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747299595; cv=none; b=cwU0tsB0y8a3LFYw2MXD0twdzMlFrzTZmQPVfkSxAgIzLneAzN86SgLyMJNn3oYKao4nr8lx0Xm2tzJswI3XOcNzxzFDK3bF7l9PaPEbn0j5VewYofvoUX9xVyHoyyeE5BN8tTM+3qmgzGwBrtwPysj4gEU9Ib/JVFaGtCwVO1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747299595; c=relaxed/simple;
	bh=oii+p5KUQHeaDf4XoigDcPW9PlxyIvcQLb++RTsdaGE=;
	h=To:Subject:From:Message-Id:Date; b=drYpUdnKAG+QApk7wjTCUyEZVp3KGKfG3yThe6m6MSTHz+De+0Lr7HE64bJTIHL/G7BrcQkU1xUs7F79gnn5NA9oO29zilu8F7vFpTTzDJjgirxKNxYDBMOEvtE/MVIlDCBlyvNDUq1uM6vlZMepvwBtNdEf6JMs8l/ovfdJ1oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8wNfylR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8wNfylR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0875C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747299593;
	bh=oii+p5KUQHeaDf4XoigDcPW9PlxyIvcQLb++RTsdaGE=;
	h=To:Subject:From:Date:From;
	b=m8wNfylRuXM8lB7xnXCYntqmYF5vLh1f52QatPl/30FiLTz0APAr7FsWn7k9+RSrV
	 evQvlcgbHL4gl9GZ55Df6JbejFRS0aP9aADI5NZ7obzVsfZbBtsvyUcUXwtvVy0/fR
	 QnIDRSxaoth51y26H6+t2lABRQkOsFc2M+jcQDFciiKX3tIM6fNOsfu8Te/G4UzBiq
	 mhtxnY3pHmXXr+72pCeBgmVb0w/L52ryTZQ2n6gVTsabawXMzgDfThw64gq4iEWuT3
	 z0CKemMoJ1pU8fUksED++TNxChuiO2T9l/frzIJpcHZd5vwzq2Sjyw2fMqIKjHoiD/
	 CBHLlIykrgFuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF21C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729959358.5702.2608313633860412091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2bb6e96c0bfc09818303b6e24fd1657dec8a7f3ef95f14c73253bcdfdbdcecc
Date: Thu, 15 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747299593
