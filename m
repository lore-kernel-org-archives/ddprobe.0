Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331699460
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772895294; cv=none; b=fk+w3vsXWD3QLJO+hd7FwFTdPKZb5weEAtilqPKzqYgSrg3zSOWaJzYem+hUhYmy+3rJUPLLpotABQiGrux5Ps93vnP8hFKnUABs701nO2AjFihFKl9Uk8BAAYme5dt1EGrw8ZTUqgzsf46a2S+BQPaeVp/cWlM4vGR+7PfDgD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772895294; c=relaxed/simple;
	bh=E3uHBZTzAFQlIrpKLFo/TUGtNku/p2WRhWbEhXFSNQE=;
	h=To:Subject:From:Message-Id:Date; b=X6FlMlQIY4UJ3CLENZWolcTUD1mDn0g96zXhUmUCj6tecvPSp45BCIvvXoesl5ZhotDz/IEGRPm3eFwk1xWTnzME8smeyY8FyH/n7++4xPjdARrvhH8zu+roWK1JQ3wMjIdklygpPsBzvukh5CbbxFxzuWKDBCTtT+4SQXfzZQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMi7rVVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMi7rVVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4DAC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772895293;
	bh=E3uHBZTzAFQlIrpKLFo/TUGtNku/p2WRhWbEhXFSNQE=;
	h=To:Subject:From:Date:From;
	b=FMi7rVVk4BDVIdv92UoY0f6TM6nl1d0gRZslwd08QAqR3ARa066a+wl5+JmcpQARg
	 8RcyeCgjnO6yjlET0+zgPsKqPn/GyAy33rFuWeOh4vDDWSivXtWPqviA6/fkmTb1be
	 A6WQ8XHVmuhwZooPeaURAl68KckDymxj6p1RKCM0NN6jdx3RCZTMDPJUX/BRX6P6eV
	 4UY2SlXx3MIan/eYjHKT8/64XKMtefHj2lgRZaO9McyHGmzU2aCLcPJI5rxXfLSSWU
	 zhlVXaBrXxyRe8RaYWmh5ahk95O01iGJYi2eQsIBhIDPAhCvWxktYK/msYJz6nOKhi
	 nH9wogly+13eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A227FFC9EFF
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289529363.9203.7094927417893189460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78280845bec5739bc16ba327da6ec865eae206c12e39cbd64eb524e6531ea0da
Date: Sat, 07 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772895293
