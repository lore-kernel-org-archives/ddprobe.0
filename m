Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E1B2F8EB9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778245654; cv=none; b=qUcgeWCiezF/Z6BUALqxxOM7oi2haTx2uHWnrPnz8pRIeNY6A6tU1+/GnrMT2CX7ZUsfU/7tVLadLbPczFYnAgEa8fT16oAtDpNWgZe35BSbBoLVIPskvCoWi7t/+YEB41VFF3zFq2JrPtDIN93vClcQtE3oUqQRE6jy2SWuafo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778245654; c=relaxed/simple;
	bh=O4/jQauHqYprs++KA0mPKtS011BqBASHGbRFGJ9kaYI=;
	h=To:Subject:From:Message-Id:Date; b=eGOl6a3ckrMb/83blukzMW19/8NvUgzZabaUf7MH+boTo+e2tf9zD+6cLU4hBaYIwwjhZcR/Q8GVpwjs7KXy1eFvgA5Yd0/Hqvij4Da75n7xWoUCmKeAGL7Eisaev528K4z0PYtsBQmMHxnUa56Y/viAegFqibj5LIEZ/hUAjAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD4wbRqM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD4wbRqM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6A8C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778245653;
	bh=O4/jQauHqYprs++KA0mPKtS011BqBASHGbRFGJ9kaYI=;
	h=To:Subject:From:Date:From;
	b=lD4wbRqMssQMJ79zqMwkSAwodWr46ocYNDjjwpKbMclZkO9T9y0J2c72MpQ/WyYwb
	 zUHd+mDchvIkgzLwNGZzSxcMB/hp3Ls/ynGFqBusKHdiosNYOCLUIWd73Ny0mHLO1j
	 L5ubSGuEbjdprCdRRUjpzvjQkYeIcRhLbcYIkBHRNgHIsA/xn7Z6g1w3WzsnzQlrU8
	 5p5cmx82hstXqWQtQ87UcsAV75OggbiZ29lcBpvze6bM//FJzJfVvGvcnZvUtIjtqe
	 jSUn+Q+3a6dQ6kaChvUeeKcEFu7t/Dyxpfa+3oJGgL+g6UTM+JseccmYJnTPAHcIY9
	 V0Ox0KHQYGCdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB11CD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824565370.22767.9691751200755296208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9aafa21049d407a69c66c80132ad5192be2f8233263651d1f99fabc27ef1fd
Date: Fri, 08 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778245653
