Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AE2350D4A
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757073593; cv=none; b=G4s6/dxiam/N1mUCvMYbv+1SJHDVbTBHvO6wEfgysGtym5Jjmdu7mRe7Dp2qEnLT4Eq1p8qUo0Z8PpzHCyqW9lOolAhdQILeJC2yQFZi8t1c/g3zTCcga4ReHDHiDJzoMYYZBLor5iweGZHeRXI3QKXbFFD3hEiSl7nUhuBsWTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757073593; c=relaxed/simple;
	bh=s3GItpph/xES4QpLprpoB0lLXVyje2GuFzXnprgtciQ=;
	h=To:Subject:From:Message-Id:Date; b=l59RayV7+gZqC1+TVm+09WFLUHKnbLHqR+XBxvtp+2C7lUv4x0IkYCS/rQf/Ept/00wlMxqp+9+Y0fnVY/NZulsb5THnyrzq66F1LQGcnyX0ng5cH/+oaLZlwVDD0flOu3fQ2RKLsp/jOtfq+zvaiWFeTiq4h6NhI7XMj6YwBdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUivIw7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUivIw7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A134FC4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757073593;
	bh=s3GItpph/xES4QpLprpoB0lLXVyje2GuFzXnprgtciQ=;
	h=To:Subject:From:Date:From;
	b=aUivIw7AEN6Tr6/GG0BAf5+UJJKJMpVgFJUWPn1DtEsoTAlZxCUkoTOR8QnwPeH0z
	 pBKJWok+P83BHLiZMAobEREGfzQcTDZjMlzrvxZciiWA5pJN2zmGmKaa4fGEqgHML1
	 aZJHZXLWJDOqQAqWwDVCoxrq1yt4eNB3xVp3+rCbfn8RVMiIIHmhQ3EXgSZDdrQzlV
	 k+359kBUl27fHBLvK9KiHZ+p3/B71vytQ226NWT5vRyCfbWwNAmljBUiWzdSCkRfsS
	 nPeTOIc+zFD9MJaahwacO7JaFCIkwl6lsAg9kgKxOUWIkoX9dWn/0Z5+uk16mcGjno
	 kr0Sb47kRvygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90697CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175707359358.27233.7438856939327665919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579257bd5ad82efe749f7f7f0e6f2fbd9f3b97a2f165c76df368aff476c8975f
Date: Fri, 05 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757073593
