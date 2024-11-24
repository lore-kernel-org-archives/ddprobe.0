Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259D6136E
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732437354; cv=none; b=HiUyeP2lMWq582uS0xwggvg0+gvAodwcW+dMqWX+LlfpVl7oHN/Bw+vLwwZiVQ75L36cIOB11NkqcR8sx2CDqqIyRllV/h+aOfO8dFg1QrRW0tXDMDnWyZhbBcJMlq81lcusHZEgep9CoCdkAZ4bPqR5ImAdPavWtu3LuA4qXfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732437354; c=relaxed/simple;
	bh=3oJJmzjnN5nm0t0MDazMsofWckIfiKNUKe69xNJUTtU=;
	h=To:Subject:From:Message-Id:Date; b=P9ukW9azW+S37tvckN7WUw9qOdX7hs26HN0feqTbotcvX05EBYyPpo2Mc3DFkY1OHdqiLYNd0l5wXoMXzxJihR76LI8p01/grYmHqR9zow+Thsbg6+uEoTv73SWnEZhwRnjaKmVkIW5msUPeToznoLPXxsbNL0kDCxW0Bu3FVbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNy/xa0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNy/xa0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA65C4CECF
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732437353;
	bh=3oJJmzjnN5nm0t0MDazMsofWckIfiKNUKe69xNJUTtU=;
	h=To:Subject:From:Date:From;
	b=sNy/xa0Vr9bsuHxvSmeXs8vpBfTAO1f00rlvUn/bBzul9uhCoZrxoGTTah5gbwGqm
	 8pE2SCVyZ43NDzv5tkvRUX+38jk8QlOhse6BP95PElr7YsVqNz0izt8qKr4zad8Xr6
	 ci25amdKGptXaX4geCLse+DqTLw+L45Z3i/acXBkpu5IyQNntR2ba6T2QQYF937jda
	 x8sVzfeIjix5DXD+/9U9QeF6+mB4JSVfRZJBxnKNiz8u2qXtW7T0H/8DOc5xHoLAq1
	 P+76cukqBzAqnjIpVXVLQQeUZwXxqQTcu9UeWTNNRSuYjPn2mK57OHcRmPznvTwHo1
	 pHojPl38iyuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96020E668A0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243735359.29599.16841785862233894644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25a261a32c1309eacb48f9b940bb6438e2a749b9a53471630f94eb65fca80c7
Date: Sun, 24 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732437353
