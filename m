Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5E7322B8F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790904634; cv=none; b=kI/SVmqjO1QW8W4+K4PTNrq8J/xfiFgGYSQFZAAolYKnPG9Fddkq7Q7b7obhsn/Bh02zVQAxUl90V9LnuqLvgYD+R3dWPyblD0DWxiH0A58ZUA6dYRt2sJNBNLmXhOxqwhBxB3JdeEXilNj2YELIg3qe7k/zMgqBdOci8KYqsgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790904634; c=relaxed/simple;
	bh=XfwEPoPkCs+u0CxPoeDkemOcQwl+wZDpVM4vmy+0Erk=;
	h=To:Subject:From:Message-Id:Date; b=nBuochqQsw5Y9yXMw+9P60o3nr/fLyJGmqj2+vSla4wQWy+TgIFrfDa7pwFuc/C9JsgEM3XHxb+gfIa18YFBKysPuBz7DxkfyUeC6HvbHZ7NpS0spft2qmNH7JZ+n0FQkmDFB0b5mvHEnbwDTntXTYhOWldIkhETgvXFaeGIDNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1nes+JP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1nes+JP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD667C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790904633;
	bh=XfwEPoPkCs+u0CxPoeDkemOcQwl+wZDpVM4vmy+0Erk=;
	h=To:Subject:From:Date:From;
	b=X1nes+JPpf5CU2jdSOAncQaA+OQ2mIggKv45/Xh/GC8CiBdUvrJu9+eWS4szNEIhJ
	 kOlwFjxjNlUCFFvOtoCOkzsLP8i8paOHufybeBrG8AgO/iS9j244xUiHd85tmLSZjv
	 mLpa+fiAUWqpF3zV2P+gonlx+Pvqb6NJPEs24U2UNZR1fSVI1eXdlgouZkVKd/fghr
	 vox9DKRM9dow/HG5F+7hekwOu6x4xZsiIWxeuu+IILPy28nBacPkKO1YOIgTl4C4ky
	 s0J+c4+BEb5BTy2h1r67eCZ+lsJMAj1JALYcw017cHMijwPp9P7Pv2tAFjpywO/KRL
	 BQzKhaKerjOTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA187CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179090463368.8196.3952610465590671900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c0dd387985147fd03c12cbfb5fcde6bdfb9613c014e7807b8c0a2a75996ba1
Date: Fri, 02 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790904633
