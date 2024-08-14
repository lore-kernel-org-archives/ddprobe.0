Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3865824B29
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723605954; cv=none; b=BvRbZAGikSR7T7S9M6aYMxKdgazNkYdu6yXlDjHaR2pQQlZRNQKkVc6PIx168AakNn8jGzmwRewgrhPg3R9+X2a6DWfIW/ONZTRKMhsEJH+sQ5nFL4JZglcsbhzHkEo2lQAvz1KhyD7Iz2eGzuuaB566na9obs9/WcztJnSlNp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723605954; c=relaxed/simple;
	bh=7U72f9XVh1ecyo09pHfK+N6FxV84mLrsw6zVRjkRSaY=;
	h=To:Subject:From:Message-Id:Date; b=cdm3f8xZtgKYwJRsUjyRDIvKApu8tMLWIlNM1VfrLsbpIv74rhscc2mbigfyTOgcCN7JEzn9yJhm/UCarHUTH2qdHWfraMYWSyTPy0WXrB/xdFCOh/Mr3OnEepZ9lvda0jmAfelmYTQ6ZQo0abDwz8CNK9SNFLlTICQ3SRfLaO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnNmy92d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnNmy92d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FCAC32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723605953;
	bh=7U72f9XVh1ecyo09pHfK+N6FxV84mLrsw6zVRjkRSaY=;
	h=To:Subject:From:Date:From;
	b=TnNmy92dz0CjWHHtaj5Io1WdKt7HQfKTvMD/kyY1iYexs92KOa/U9M12F27PBICnj
	 pUC2oYqP9Y9CqLqNEQeGWFBfRJR4roYGf3SVvT5JILWSAce+srkVmAropt1K1/x0lK
	 kRxU17Ixij5m3f0kkefLlYKHV8B/rC+AEPu1P0eE7PknVWhh8gpi+Ji8wL2alZoL2S
	 ii+f4+hsiLT0rEsdHw+48Sg22lCYvKNcCWotRcaDzw5ypFDsHU73AYFgFdkuZtzy06
	 xHzq6w/92orvPd+/4JBk6S9cAvV2fObWSfgjev9C1fLGk4/o9gkrzuRUZR0zXoGwM9
	 7SOBJX9Y0mR8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B20C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360595358.28190.14123925648571117793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e00fcfc2bdd869464755bf41bd06650994506d5d24329b81d0d4d3bf7e6c75
Date: Wed, 14 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723605953
