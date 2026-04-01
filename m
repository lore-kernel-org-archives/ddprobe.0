Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E1C3E639D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775083535; cv=none; b=AQsUKFMDrhhYMPKRUR1IYQ6Cb0Ne8xBmsBGPJ+0h1znoQX3pRhoeTuUIGrL78SOGfm6gHKT5I5TZcT6NvkHbJ7l2gxToFXltQ2M8DEZVX6qkS8H9eszt9bI+jiofW1FvLrbNJvk5vN6T+3AA/B5z4V3QZE3Cht7MzvPD6k0mTiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775083535; c=relaxed/simple;
	bh=EWvZ9WJhbDENX8UQu7VSLHzGRpQAJSZbmpnffMl10ls=;
	h=To:Subject:From:Message-Id:Date; b=fprQY3QWnHDxW2GISgAi5Emwj3RwrxBAb2P5pPr7e/wgU+9YVet1VvQ222ZgxUNYBcEmNY1BF/NNXS6Cc09m6FcrYU07aceCu2yS6b0fv/zkRgtemVz9LYmZHl0VJEns87Ig5hB4QNsRohVLaOgoq+vU6hMzQkJeKFzkFqX+Mcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc5q7bPd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc5q7bPd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC83AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775083533;
	bh=EWvZ9WJhbDENX8UQu7VSLHzGRpQAJSZbmpnffMl10ls=;
	h=To:Subject:From:Date:From;
	b=Dc5q7bPd1xACB4gQ9BHni7cCFTtpXJueVnugr5GyVuTfFIZS5EgqoTha+Y56HXBlx
	 Wl6lv4CTAGQL0t2tpWiI9CUWK+mqCpgQ9fYtorO+rAr6AZoZ/72mKuNADeYdP3ISGf
	 8HjiwLr0Jnnt21ngpKCL5qQxpqX3A84BSLCQUZRIhSIhKjQI/029WmruLQczD+ITBM
	 u6ipNxwg1LT6SMEg7c8KZbI7553NgE9txTHiQMToORmzTPmz2EPOSkLn1fojlpK9k+
	 Pvv/iHty1PEjXnRdef5YTtnsroB8buycSt6cfImG7AJrY6CxIpfcgW7YP+Ufc2dhBK
	 oIqgg9ftY4Sgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA910FCAD2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508353369.20537.13685352545429531440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b524958302d244afd18072e35f02dcbe36e5585dfd2b8db14d45ccf00b6ae4
Date: Wed, 01 Apr 2026 22:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775083533
