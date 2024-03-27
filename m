Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0731D14D709
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711560497; cv=none; b=LDqHI4eHePn4lp//lLuHJ/0vUPzaOitL98crxtB9GSo4qEyMVvHQLoWLMKuH2Zr2mLcyyaJO2MkNEc3zuk0BbDSIW60u3xb2zLrRO4n/wdik/BTDAEIRwyuAhSMkcqy3ynlnvMfndOf1dNy1UdGfiJSuqemPbn4YgJWCk/aayYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711560497; c=relaxed/simple;
	bh=eRYvr1MT0qQXUxWzZ7P/VCr7ctPk03EPmPTHhBUu9ac=;
	h=To:Subject:From:Message-Id:Date; b=BNpxytCVWyoqpju1Rk4/wbgKlyRPwo0iqJc66MpWMrG4rXf5Mn82fbXhAr5V0k98hIW+KVOFYvHbtsAw8yBsocr4X/HY+KJ26Fd7hcc76N6/FXRuM/ANkBfLI8va9AOJneHatYeXKws8PCbmaLBebsBxPElbQl0f5CbgEiPzTsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TTgoLEvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TTgoLEvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C81EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711560496;
	bh=eRYvr1MT0qQXUxWzZ7P/VCr7ctPk03EPmPTHhBUu9ac=;
	h=To:Subject:From:Date:From;
	b=TTgoLEvw7kHTMSISsyrsw4Ps9wTyfPGQOASGOra+QCMZP0e9EZ0DWbonxAWAmP+Yi
	 Q3DkMQZXt14NqtIQ9y4vx2dLl2q0J/j0zztNzqZyx7SyWeGUfLYFjo1SNhQ+nwU/YF
	 6yZDbREDilePcPxQ5PiF7Svyfp8uGz/6l70wecWKYCKeBBPBGgr0BUsaMJeo2Llw94
	 1mz5c1u6PR/mwwx1+J9n+Iy5+EhNFCduEZpYHJO+PF3tfmcX/t9zSEaNKoJXZB9jrV
	 FPjwur8HYd1MBWsrWo+XKqqm22uR6aTAdVX0PomAXJGIY7APX6UP1EPybqR1CAsKLK
	 EsW4zMP6LEyBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72517C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171156049645.4676.5813392454549339868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755f580999b49a61b362089dbef16c044998472da6133f9acc3fe5a35d54d4d5
Date: Wed, 27 Mar 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711560496
