Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340454776F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706894897; cv=none; b=QohMVakmsjSkOjePL42b6EpFkmtgxjzbdLYNhjVkHQwt2MT5n/7cG6rk4ibIc0Noz0MpYpnbuLoodmGSLon+dn6TOxJE52C3TgJzTfdhzATgWjyCfisNkMqALeFyofac/A3Gf4GSNSDASfX4dKWUjtG6T4324HVaaI+Miq0h0lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706894897; c=relaxed/simple;
	bh=HeSl//L6iFD4rpr54+zBULPkpW4TyS+sbyKQPL9h/mw=;
	h=To:Subject:From:Message-Id:Date; b=mNJIpPCmN7GioggCSSGfOOUO6JXwrxGS3qpmaBqoEQD9sLNvzFPxcoPYvUu2dgs17GQWPwaGqaa8bhj7//OzbmJBQ0y+QbhlJdBYN/QTQLlfxNb2z1gwrd5GhTjLxoMhUgU2DAL2Vsfa6f8KcgxJozD/20hLb05KxFDoDKaYvbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbJlk9kZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbJlk9kZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9013FC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706894896;
	bh=HeSl//L6iFD4rpr54+zBULPkpW4TyS+sbyKQPL9h/mw=;
	h=To:Subject:From:Date:From;
	b=cbJlk9kZ4t3PFS16Qk5YtFzRhL/owh50dBRxsWztLpd0/7Gu2HGBgMzLT5B3MZxUk
	 oapGRHf/ENpC/XuGJ3FQCMJSqi22nmiRUjFaeFSsgxx3exuDs3btueiox2DcgRfzQq
	 Aj6JHsgpxXfDnHync7UyVdYPs2fKWN9nOgbkmsP7dkJgM9YsvukVUbfmmzkvhl0ViG
	 ykcrI8Rm84lfA35zpdz+huXS67eEBLYVLhRIvpskZ1I8ZmqnTZQRxV4ietwJFwZxD0
	 k3Tedh/1T3er9uMsUHIsLyFnDRHsfZkWsGtB917+gGV4vN7C3L75Tb7JXZxs3opqFx
	 WfFbXjyYljwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75425C4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170689489644.25464.340409773220342402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ba4becc7423d65f47b05eb58eaf4457e2fc0b66639523c9174bf049acf5864
Date: Fri, 02 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706894896
