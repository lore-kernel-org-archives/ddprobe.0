Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F023CCFA8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778257054; cv=none; b=uyWgZaX7LZkXXb0gKplomZRdnJx2F44bW8TEiV7NzLKoBTlzPARk9E51uKPUs4oZ0lgvaiVU4qmPhwR+AHpzGPTVyOQ3dpnw7lssXgOHlHZSfBHMYQLy9DLIevAsuQtbQ5VfDhgc3jECZem2NRJrY+vqqZQ8KDYgslF2s56H5p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778257054; c=relaxed/simple;
	bh=lHDWVVxMFVWScC/Yj77a/hKuxfCoQS69g3YVZTvB2IE=;
	h=To:Subject:From:Message-Id:Date; b=KO0GpmXndgCO4Rhv7NeuKisfvCOK12YtNi09n9c0d3fXX0f1z8l1AQQ3A7Mmx9Ggb12i/tMfSJXWryoTpJRz6a1a+oieD2HvmPRTqHeBDJWK3UPBHHX6bifDCtCLPummIO6ctoU4XrPA6+1hp1ONMMrjNy5tRhKxSJeFARkkfRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkAEM0gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkAEM0gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC766C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778257053;
	bh=lHDWVVxMFVWScC/Yj77a/hKuxfCoQS69g3YVZTvB2IE=;
	h=To:Subject:From:Date:From;
	b=SkAEM0gnHu9o5Cv+qvc3UHPNKgQKPNV5gCb2Nf4+pIBYQ+11V/dFeJ8KNGRXrhWJS
	 93OElUvCElmfUW9loCkAub8asRsdnr6Ehv3L29BE6PzKsIAgBCGIoDltyUYKnUYuCt
	 TDR9VDACuJMAbD9c41xTKXmgj7Oi/olwiqMRIJyyVAfolCLvSUqdFZdK1nwjhELxj0
	 JkE+sxkUGINRfUkcyS/Rrj4nucGKscXcQEeBkO688KyEImBoYr5EeETpmsiCpaTA2R
	 WHWgLlZuZLBuuKtWCo2wlTrJ5kPu94/Hr7gEqxxvyBNpA92gWSBbF/4oRaGOD6nt7D
	 I5+TQtBdANvvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEEBCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825705369.20370.2547491292786523810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0f5fd57a7ac068f8433103aced43860857979624b379e0587cda891f8c38e9
Date: Fri, 08 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778257053
