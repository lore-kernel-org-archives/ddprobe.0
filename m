Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FED78F59
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759871394; cv=none; b=CVmsNQDiqA6T/IEqIuYN2tM+dGMzAVP9EXUy8I13ACYtsggsQ77MEJ6B+g3942RAS1WnJJYiZmzG+HdHfbple0G5VrqhIVwjbkomIBKK/946jXtotQN68IWEyr8Ghp5ILzp1hZSf6tKNfhQiCvgzZ/LAhrEaFBbxNi49DB1q4ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759871394; c=relaxed/simple;
	bh=/wsybx+xXtm6zMT17V9gueN2LOxvWDELl5g6pUmF+HI=;
	h=To:Subject:From:Message-Id:Date; b=HCk4Eqyxp1S0MDVdTf+8gfW6jn2M+brf4iU5UL+3jTt4542qtqmyC3beIiQoN9zP3JVAhz7nuYHMes5AE/LN+1wfbGOohNVYBIU0iwo5MIqUIGtJuWBwsNxwsDHM2zV36bYvd9G3Ouv1MaLQwiRltacAkykC+vI8wwQxvim/AEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYjanBd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYjanBd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759871393;
	bh=/wsybx+xXtm6zMT17V9gueN2LOxvWDELl5g6pUmF+HI=;
	h=To:Subject:From:Date:From;
	b=TYjanBd6CuFpbSHTKqtkuk1SQvTUsyTaIBTvMssWWPnM/WwyI0L71/H44q+OLu1Q6
	 gh/U2MIGaZ6lHh4MAvXiAJVB1UQYGJKAWT/MGBmmkdtTCGBFWqepLTOezCbOPuZ6XN
	 4ZBEDdTPDks9s9ZYeovs+J61NFliDvMVQaCZkcMP5xjr/QKRCKUMj8wPaDYn8emZDK
	 dsxNgqfxSrnFkICrl4UZRm7ADAAYkNGe6YE9IhelPXOK/1yP0e3zgyswy2tlpct8f1
	 yVQXdKHA7sLkyCJDX2wJIVdhlxFPMTlu+cUbIGxIs5oIe1yA/BbwdmCKOGRAJ4Ix8t
	 dsxhXDOpUrRQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9BCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987139358.13722.949929984451316874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b80c7810bd55073de09c2311c2c872eb390fc58e7492335c2cc994e5990221f
Date: Tue, 07 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759871393
