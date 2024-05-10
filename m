Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A50A17556D
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715383344; cv=none; b=gY1Nx5iO4RrEDhlWYbYPwKLtyMrSu2uV6BBiJpxOBzTVkrb66/Ul8ggLKeyOLfyGu+N6G04NQ8/6bm+5xgKPhLkELAHd5s4vZMVMsQdeqskBbf/TT2hrhUnHiNmBWvPLffF7HbdGYf7gO3CeIRHcS6gYWMk4ffjxnxzug4RaKrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715383344; c=relaxed/simple;
	bh=s3IgfBp1aT6Ec0bYPswYIDo1/M/BDIA9YKMUWF96f90=;
	h=To:Subject:From:Message-Id:Date; b=JjG2WPyom0pFo7W/5UYJqoBvLQnZr80lOEFOJTqsNE2Ln17Dcm3c6x5aA+02qFL+yr8JyjztX152fU62sknt56WSHgXrF03bzzgenSOY6Qqvi78bmHk2+y0wlwEx8MewW2glYL+4YdlMjVendEJgmVtTUxAQvoL5gO7OIsSJ7ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeVzVQo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeVzVQo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 323A1C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715383343;
	bh=s3IgfBp1aT6Ec0bYPswYIDo1/M/BDIA9YKMUWF96f90=;
	h=To:Subject:From:Date:From;
	b=KeVzVQo93TTC0V/1Nz1zaVVI6UeS9X9JLNRSaH0TpPrUBafVV2NxzDqbcujqkJNmf
	 N9YXCp6T0jlBWgYy5+T/9sdjr0DuESxInKvxtS/TB5rx8gsamS+s7lhiTjDMu34iQR
	 PnmGK61Y2T5FSkksfBLqyjhnUwuUnuaFaPhHWvLUjH61Rwbig1eGs6Wy81hQd72yQ2
	 TCRodiCvO6b+PdtauC/j518ar/5G0TafMCa2k3kcU7c1sD6VoU4vqzUlGLETXXvRe3
	 akOk+aMixmhD8NW35OspH94TmsWfyPXWdK2Y62A2IiXK+bq10pRA8+/ZLV/nyxcsrJ
	 3vO87Wq6LjkSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA81FC25B5F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538334275.27267.12013305635995993731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc7976f8e37fa9c3c119503d8d1c78d1efdbfcc1d6127aaf4831940d9b39c94
Date: Fri, 10 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715383342
