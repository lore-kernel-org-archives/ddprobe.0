Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD5518BB9A
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729854954; cv=none; b=EK+Ag8EtcfrlAwUOaDREltSX6I7ibT2nepQsPThI9L+mTohqLU/gnY1BPtghAU9OUDDQYtiaHZClzia6GraIw3H94b4gUhhKtFx08Lyk1Kuj3C6YQyRzzXH1jV0IQPer0GISGM72nGkEGmcIq9Vp2IkX29/kQHSs7XLdoVN9JrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729854954; c=relaxed/simple;
	bh=INCffuvAA0jAGRFplbf4v4jRbnRotsucJeT2WxP6Z38=;
	h=To:Subject:From:Message-Id:Date; b=sJqHWjsMgHkudRQP7wOWUZhOadh+2A8I1YI2ZcGb2JJEKKjj/NDbFFBYZkd0/N5yp+Zj7x/SE4C9cYOdEM+IBNYSRpT5+QCs5gHQdO0qeBRDuFhBgbRO631tBRfmSKWUmnR4UxOhlohAXwUqYNYfpckyokINCOwP78zWM6iB3Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir7yek/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir7yek/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFE6C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729854953;
	bh=INCffuvAA0jAGRFplbf4v4jRbnRotsucJeT2WxP6Z38=;
	h=To:Subject:From:Date:From;
	b=ir7yek/CryeiaEJ5Z9nkKUjYxiY0ruNhusQxnfmqk99Js7FKVK9lBptnf/HuD0EP1
	 Psd2zFcbKyd87wJ44ZcLrIz6ovaOKqTkiS1RklU3fGqDI3UADsg5xCm7rfvzenncRn
	 nGbKaNKr5rLOi7RslqMIMwDm/dZ57vczCnKdxuY2DDeVsmi89ARQ4PhAUac+UGc+pY
	 Rz5/Qq200LOcWP5bhpBxc0mPzVzxtiz0NrIM/1MAoWOcY4k2hKksiPutTe2N2a8Urw
	 bC8i8/oXJRZSnoaQRqVWs16ZbCOQKZMaoh9nL09CaoeaMX/svIv0ZqksN9Oau/THVj
	 ldXAIk0srDF3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98918D0C600
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172985495361.12867.7907833261580161235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cd1204b1a3efbcf0fd8e9ae570ee6dee24fa5e97a12675c9edf0564d0200e8
Date: Fri, 25 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729854953
