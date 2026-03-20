Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397B52DB7BE
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773971694; cv=none; b=XaU4HijEgfccHspug3SiAQrv7cnYlfFS7dWrdLTj1Xi0mbO9ctmJS4w2g2Kq7WgZf0zhE9m/Y6Tn0/uYEVXRjB76hxF2KaUeVmfkNVvDeR7Gadvzdyz8faSgyHvW4k0H3+8kLUD0LIMGRbpezkt6PPHRsUg+nBAy8ZdVvrWus84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773971694; c=relaxed/simple;
	bh=Oh/qicjR6o4J716cHune+4A/zdu8Ad9xBN8evsPPoFE=;
	h=To:Subject:From:Message-Id:Date; b=aHNVCpzk3KLrnNc0A+A1pdVB7t1R/pkJu3mZYrYperK3EEENSMmLh5xAyCT+FWBEIgBPxNubjj9SSWG38GABNp/K6G37s0hl0pJotI9+7PZ86+23Pkl33+U0tdkvqrPgXPceUnmjj1lGGLTZ+heNwSPPlU/Rr7ioET/v7I6yrmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDcgNGsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDcgNGsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F813C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773971693;
	bh=Oh/qicjR6o4J716cHune+4A/zdu8Ad9xBN8evsPPoFE=;
	h=To:Subject:From:Date:From;
	b=JDcgNGsOgV5bkvMllolo2jnc3B3up3rDnP31HXd4d8Bdwz10q12bPurfY0B0J15xN
	 4FGQrt9XaudlU6VDS4REeSs4i/tOjPjLWETuNuKpacg7kT7mrNzbbpxWolZOTPQvFo
	 x4S+6xzAW5hBmBUa67mr036dxHKW9L2isV76rGWNt05f5wBbljBDlURgktbXWHuSPH
	 Vxx1AHSbOrni2EDdnFB3e7CzFRitAvqW2zbaW03I3EIdWe0Ot+izt/NHR95wXv1/w7
	 NJZhW91kJhPJjzqU9LdKkwE+Ur1MuFaXNZqhdnhawRaAUYygio4QdPdc6kkQFXIJYA
	 GnY+GZrD1zm0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB381093168
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397169357.19201.17727760775247534082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17ea1c5a8a8be755f0a0f8182e29b6a2278cf86f4abb740c19c1f485244d82a
Date: Fri, 20 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773971693
