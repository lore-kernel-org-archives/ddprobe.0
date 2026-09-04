Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DD049362C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788531034; cv=none; b=Ic2IZOfT25jI1SIzYApW0/ZqjKjsthUpwzdzilU8W5YnNSyXOzm7doQkNV9zEvGpDhu3+tFbODA7HhQOuznzcdMlfROiWqJv2U312IRuVPoMZoIEXKupKe0XZuAUJgHSbLtsj/dLWQEA/TjOJnDMiXSfA8TmWdwU0/q+Wn3OHaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788531034; c=relaxed/simple;
	bh=fXtB4Bcde4JAai5XS4c5WkPDBQqSYiSgLviZVcrBn+A=;
	h=To:Subject:From:Message-Id:Date; b=b/0RlWf5DCpBUnbVxJF4O7ZFwuMx4s3iaNDVouwgeLM0YZ0aXlsFpl3RGXAvqnKCIEO25xLmN6/XlMsA0jJdAWVWxZLlWe2pfG5mnJe0ls+WLMorjAddityq30U0/IXfa/rpBya1Yhezj349cz/WuPlNk4ZmFPBEZ/hjYJ2+f7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGM1/x/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGM1/x/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6087C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788531033;
	bh=fXtB4Bcde4JAai5XS4c5WkPDBQqSYiSgLviZVcrBn+A=;
	h=To:Subject:From:Date:From;
	b=HGM1/x/lyszNRZoI221Y/Xz1YWBLGtanzB5/J0zk5lReipYNbbNrmfvwoabM1uH8d
	 qMHHSReJZbDF4yFYic8GxLxhIp+zRkpyY2Qx1m3khAjRlG4rMs/JoTx/G2jJ682LFY
	 yvbdyci1JsT7pqNxwIYmAQFx2Nf8+GTzbY73wpRSXEKJGk054oyCOoSRBY5H9iOePO
	 S5a4GcYsS6Kg6woTjBi666n9cTuKfgF5jSKGtE0uuou/U7UrL5Um1QuEc0vjEtdWZv
	 S/aiUDBSQ4KV0GVkkZaM/ttSVvXKI7XmcAjozDkN3jrm91a95F/4nBRc+zt/d2YwaQ
	 d7iDPUUZLcJnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5ECC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853103369.4076.10226883975369088142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed456d72dbc57af4474dfcc3873b7fb8d0a3c95b0ab3e7f429e58364bc4a240
Date: Fri, 04 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788531033
