Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C912C6B0
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712405297; cv=none; b=tXEdR6SRcUICERxk+gL3USFa6I+1efVAP6b7JYbOXDAYJgcXL1NHUToC4m6m9KfjB2yZFXPEplkd4wQHR4/F8QpPC/lmejCr/79w9p/b4Af5rgp07alDfwZ7Qo91kk6MjuYVsdK/4J+xTh8cPmAdpeV4/qjK/4NkghL+32LeGbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712405297; c=relaxed/simple;
	bh=Bikqz1aiHR3PYdu6oprjqCt5cx1MayT+XuG+REeCCZ0=;
	h=To:Subject:From:Message-Id:Date; b=Gf4oFvg8JbTiwFQYqSuJdRtr0EkD2TkrBsiPp0BjNJZSplyUscyByo0APQhOhzpDDE70aX2ra2ucFEwNcGf8fRJWd4H+IC2vxkSyfmnKSYSWFk9JASFnUq45/S2+LZaeuSruERnFKuUn9YyJA/1H+ttmPWfoQwumymMYNJVrUwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2/0CXfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2/0CXfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A6DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712405296;
	bh=Bikqz1aiHR3PYdu6oprjqCt5cx1MayT+XuG+REeCCZ0=;
	h=To:Subject:From:Date:From;
	b=R2/0CXfMz2AVYZbxwE41iqzmy/QleueF99UJW9IrrimZLuVlbFvXg+s9Y5UoT8HYM
	 /+GXcUTSwbyD0MPMggIbLhLJIS9ePOVlA3YLBMqF7q2LVt3Srl6E1Xa1Z7FzSBQiOn
	 vbu9N5CGzGq07C3a1M4wapcbfGWOgFfEL4XXzOwfEMomYn19CEQFlHA/H7i2z8goiD
	 XDiA70Nr9/YXFKv0JAyUyWuCZsqwO/Np1xFGz07THo7zzwJZmCvAJwOvuve3bwVvB4
	 wqUPSR2T4mTAcUnVFg0sHlD2CxbtxcEX301hCRsdJ1gatdWKvhdguIvSLYFVnSIqkK
	 zgUJstVD3Mcjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5DBC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240529636.25834.7866051158836135124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e83987800b60dbfc6c74c65d9f885c67507818271666eb59bbb490c2177ee2d
Date: Sat, 06 Apr 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712405296
