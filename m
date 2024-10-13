Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2711B231CA0
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728861354; cv=none; b=jduiTjbl3iIysP7ztxg3M95imz7+eQSFJcmGQPyQbIQcJGjiIiQgZXQ16/FHdFMnK4k4OI2bcd6k5BHuY91LMdMcLjsHyuviumqg1C84qgwN7iB1J4dtSDyypyklDka1/m3WnG1QOwBO5Y6q3ln59RWtCu/OnKwYxfEJj0z/5Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728861354; c=relaxed/simple;
	bh=VFEglQ811R0GDUcl1tEVsvJoBV8TfIukKyFFsyV+dEU=;
	h=To:Subject:From:Message-Id:Date; b=knDGZtcOAU5rA6qp/VFYM6UriViqz5cC+cHtsdoBxkTMCYrLmjNXBfbrXjGWyFWciUg9KGlwiNUA+JtSdNrBSej8vUZ3wmHONlFxX49/0XNGcTSEqmxrKQ7CYia/wn9YKW8sHzJnGCnavbQjK6/DUTUpFCjFThO6vrYmHO2hV8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRpdwGbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRpdwGbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD68C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728861353;
	bh=VFEglQ811R0GDUcl1tEVsvJoBV8TfIukKyFFsyV+dEU=;
	h=To:Subject:From:Date:From;
	b=XRpdwGbi2J85OhKt0SNq72V4FKf7yCAGISpKyR86x/cLPh5jQISWJ1GQiagQZRY43
	 yj7Nsz0NLfw8fm+W1qPLZiwIWYeKGITLjv1w9cB4a+2N9qQTBsIFDFkWMuDa6zGTRp
	 PuT/3G4pdJ+b7IQkI1Ip9nEaNWtjAdBGtfVaXS4yF2fzH6A6aL/4HAvMnfTdoclPYu
	 yI3GWSeoTldjGbm9JRfEb8ff9Ub+EwyyZwlrGfkqT+9pijtUw4AlxGgKJ2rkH0YixO
	 /qFjkvY4RaSZRmaeVVJu8Izzd832UkTwgTJPyR+WKHxiLQx2VF04tMP2RcE4O1sAEv
	 sTInax8fomXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E6DCF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172886135359.9647.16034686077009945098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9db85a4ab7d11ab3b40be645d0ce2ffc531a0270e49a5f8fa5defd3bbcbc8ff
Date: Sun, 13 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728861353
