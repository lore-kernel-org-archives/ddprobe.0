Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234D6645
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754622594; cv=none; b=aUU7yOMMhDBVq2825GUdjIG4rSFZ/+WJYm9WpOu6TlcIfUdVekgRjRSZ/r2/GwIYeermqtfNH+hOV24Z3xhRIECOTZDM7gdYTP3YIV9mijWlxoeAD78jc+lnBJP0zz6nBd5vISaahQmxnI/r5Jmas2I032nwqy2omHmrJ2v9d64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754622594; c=relaxed/simple;
	bh=Shyr0xc4fL+r+kTj6pxmOnv/rCP5mtTs4gCq/GP5B90=;
	h=To:Subject:From:Message-Id:Date; b=O2FBQd4EgW+0QL/dWuzTFQmcjKaCK4tbkhrqwifD3YFZq+C7nsBPHglUmXZ3/LCuuoLv8zIyL18Dre3GQDWA7PeIHOHuEufztimgNv2kph3Ttmuj28VJz46YF7a+kpFugM+D1+1/LNczrKIGchxyqJJz6JCFu6BW+/uvWR7G9JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLj+NSoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLj+NSoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8EBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754622593;
	bh=Shyr0xc4fL+r+kTj6pxmOnv/rCP5mtTs4gCq/GP5B90=;
	h=To:Subject:From:Date:From;
	b=OLj+NSoh2wpTkIjUQsHA1UvZ3yacibQgP9XBs+1qtFWPYFVgOnJRnnz1xd3wPc8Eb
	 XDFGhBMaQUqL7J9+X+Sp5XQ1irGFmMSmtHpn5ti5D5ALK6ihWGoMktqP3cyXrY208q
	 g/QHGgmQHzMWyfEbXfLpxTccy5Fx6E0TDcrWkWJoO87aqp5CUF3fVJR4GCk2Y7gi+Y
	 k3BPer6dTRDU69UwcCVY0ONrW+hLJdrFz3Hka/YqVO1i8QwOkBuq9dbNQXH11+IDsP
	 0yZRnA4Vczl3tNSDced3FTUWY1ocKvmuXeVxr/kHExVoMhq0wYYHC/ch7+sH6huwXD
	 KsFCAT2JJrzaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71BC87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462259357.19957.4277536219789749274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5b1e23aa8b0aeab64de7f529e2b32e7ac1fb57233b5f30421fcfeb3520082e
Date: Fri, 08 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754622593
