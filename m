Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3853616DEB1
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759974594; cv=none; b=K1TmNvLW/+lOOL5TOO6leJwwkKI0lxq6Sx4NU16OQ48dI20PjKPBleYp3cjGq3OsNaEv8pVgRPnCCYlesWPRZE7zfGHBae7pw7nlsmk/5yJitMEZY4sWO4jMMqnDM1rc3rsRcksqrnOdiLT2EdxPAgJKUiHMe4lHuw83GjvCAIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759974594; c=relaxed/simple;
	bh=0EO0b1qjEhnF2kgdGT8RWIkHWWKsrAPSCWhbJx4xv5Q=;
	h=To:Subject:From:Message-Id:Date; b=fvgzJuobnJWHLN2TAFIJ8+JpYYAL4+2DozIZMWQ3NV/I1mh4rEP91Qltok1/EWVycKdg6udiGFTha4RWckaLrtkYgnDvAgLe+7nm/BePA5qpFMJPL3+TWiCCF8rfK1WdspA7mvpkzyxAxqgyzO/n2vq2uj8RUMnDU5v3MgmMGcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFVm5Cu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFVm5Cu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3776C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759974593;
	bh=0EO0b1qjEhnF2kgdGT8RWIkHWWKsrAPSCWhbJx4xv5Q=;
	h=To:Subject:From:Date:From;
	b=TFVm5Cu5VpHfYx4R/TK0+BnlI2xMD3F9R+1kewJGfWjDWpN8xHTdXqW5cVU5oJ+B+
	 2fHQgdfOG8sxP88v9snFyWB0YFDpGbAjH9V8MXkOSwCFwksm4lE7BmGPpRDUAROYOK
	 bE5wbVNml5vwuFzOTxg74JIZ2O7UhcE8M/UG3o1gnGvytjXopaHISPd9Y96FvEx9sZ
	 tCVEdeKh/06GFt7vlME5ksCokkrBMgqdf+eFqNHA78LfE1IrnTt7yNK1UsqS0l9iC/
	 oQnHyQEcRLe/1r8utWPtANNKGY2m2wiO2dzpHgIjt12LvXFjZ39X3Y/XHkkoQMmSoL
	 /OkWZKCRAuw0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC17CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997459358.6561.15962096585222288339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712e5512e530f51f8d4d7ba9cc6dac9069e57f7784534ba0e5bc473bf0ec33d3
Date: Thu, 09 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759974593
