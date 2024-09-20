Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B246E2AE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726869954; cv=none; b=P1iOxuO1e8RujKHtNMD+vitJX85UobUzt0lkTc7o48zGUNZuqJdkkyOq2kSmVeQMVUwRJIPo/5juBoS4hYgha3ckeLiiFifj83PorBG/5tK0nxv7Gnnx5gsa8E7sPpEzcItXnGgI/DDq98hl0yJirculrFMScLat2NCNBWYJpAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726869954; c=relaxed/simple;
	bh=J5Dybezx1vwBpS+Wz9M+y1mclrt9EjqaeiGubz09gUc=;
	h=To:Subject:From:Message-Id:Date; b=N1zryGdcpVdt5KAA6ymwRGbU+OeLDIuFrn6HZ02FJXpvW/MeACJfZ+FGEaMeAbGrYSEqtLlSbZ4YH5Wv6mjwfj1Cd5RyVHvI5FRnryt/++d2Bi2uJKZqoBWVpHCZJgKMlsL7BAtLIU/rtlllf9U5ESaRbW/P8S74/UIDnV9XGLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jY5qquMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jY5qquMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C4C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726869953;
	bh=J5Dybezx1vwBpS+Wz9M+y1mclrt9EjqaeiGubz09gUc=;
	h=To:Subject:From:Date:From;
	b=jY5qquMT4CpvxLI7kRacVbZVPDiqyoRtvTgvXY8mdD7ZXf4T/9hG5yLWDtCippFw/
	 XJSz3nYFx/HPbxMEziTMgtxXGlxWo6I1VM0jW/aIQmvm8gvz8bWdB2kDHf+oXxiqh3
	 4DUeUUzz01hc12vK5iV6nERFkWpLWMxZ9Oi4MjARRHYMahFS4ZuPfpVOVqlKZHFuLL
	 1KysLBNS76zFqrCcw9lreBorf6qNHhb/fUj1P+Hkw5/d8gXhPBlN2mm3YrZiQSOQXQ
	 rkpNXlzTdYmHqqw4AWzSLcfBhZYEzVvRgFTYmjVrO0B5yuOwetzasHbrStOm/ApSyc
	 VaNu+ZFLgO2eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FD1CF9C69
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686995360.23612.15673760191184501283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9428ad42e258a311e3360da2fe8ba22967f833e1f87d98c3047d743a42d1fb3e
Date: Fri, 20 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726869953
