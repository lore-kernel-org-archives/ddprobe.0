Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242122E282B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775897854; cv=none; b=IDoYWKu8Qk/OMju0mPuE6b7nToWINQAAMgzJU/zPOym83nd4ah26yT/55Hpj7ncJ57qwT5OsA4zmgVlNbJGKRua0BJv5wwIn16AMWr03hx+D1nf1KXAE9GZSkT+YxLKZigizCyXrcKZqwxSYRc/EgP5W7NNsE7vs3GeThr5cxi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775897854; c=relaxed/simple;
	bh=AOhdHc6Xbvd+HjGeJTThg4k3eg+CNphDgWBczi57pIE=;
	h=To:Subject:From:Message-Id:Date; b=EgXTsz4tTnEfF0uIyx2v3JZ9KkNreffGNjn2OpaQIKLbZEgdLXNISTTZ4YKMKs7wnrzVDuS92fhrjEu6+p6QAgr53cDcAupqQ+ZsOigyL4LTzeDes6cknB0DvMsdypDf9zQokpBdxWspqzLD/W4tlEs/dBOjte2Xp79h7dwGBXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hilSfqqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hilSfqqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE3BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775897853;
	bh=AOhdHc6Xbvd+HjGeJTThg4k3eg+CNphDgWBczi57pIE=;
	h=To:Subject:From:Date:From;
	b=hilSfqqK5rdg+TilPKT53gc22pMg/PKA3tEbPSO33eNkIDhflk0+L+FExYhkEe+6P
	 Xb3Xx34aZsZyWCAomoy48PAEvHTzbjUWx6Sbkt5J9bEebQ9HMKb1IKvO+zXvEIZ/Z0
	 YQzx/JEke+IaC0oR9/QRPcDF0mwmqofr9Z/AMbZ04+B88FMm4sRZoIcSnk5H1SpvUV
	 cg8/XigarrGej9TnEClQJMbhCrhu4iOxPFtrtC417bBX695Jk36lSGkMaM9OVT6IzL
	 EjrixF3BrX9lXIbPqM+eDF3Ln8KWCYBzcV+mqKhgERW5ZAewC4341PBicxtlmmb/Tf
	 pCqzv+36jcReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE61F45A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589785369.26346.2428931359305710948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fc4220029fc13f028a46cfdc2712396a45daa8eab427c3638f5c847f6752c9
Date: Sat, 11 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775897853
