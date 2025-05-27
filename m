Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3491725D8FA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748346594; cv=none; b=kXvhkXpu2JuMuHjfI6tuMw4xMPFa+vZuZqPd+sXhz0p2XRml2GdHrb7s3/6Xp/DVlIDmHNg/zAH7O/Vab4BqoJ9tBCTeumwXdvpFsFPHp+dcjK2YK+wH1FPY7zvtbaedwgjsH/NKVmjCXBLhUbQ9FBuqbn+srUuXT7WPUY4Xdx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748346594; c=relaxed/simple;
	bh=0MKnN3EG5QV3fjYuWqJ4cyw8GNE6xSTkW31l8AgP1Gg=;
	h=To:Subject:From:Message-Id:Date; b=nJRFXTKbZ7AjmVWixBELUaqh7AVDJnuv9hH3tm+kezU2YdwoF8F5moPA7j6H6scqDXBTJdEeTGJvw+tMs0ZnCwImUda1chAaZ8T7vZDgvLl3nwS6j2UBQhTXW0UWgDbU/RWsQhsDVn4A/Rj5QMj5FoRiIsYjSoj3lsRQjUmwPRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTnAYNeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTnAYNeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748346593;
	bh=0MKnN3EG5QV3fjYuWqJ4cyw8GNE6xSTkW31l8AgP1Gg=;
	h=To:Subject:From:Date:From;
	b=UTnAYNeBiJUdxkNcPKnyeSf8Wa/86TV4Ws8z/6VJBHRLpz+03mm6gVUuK9tq3w6OQ
	 qB07vfGiBePHfaSDBKTYsfkVAUcAEtC2kO4ApJ4rOXulExvy8hwh0ZDI8XhWaa9tOI
	 Q1LIT2fK3qcRu24u5uQGzLOWH4BDkd4mFoyO/wRVOVHqords+yXoNHDHTAU9K2zWe3
	 mzU96ENBJ8KvgKaGyOzMsFE25dONfOiUdMB4EJK6b5hO2LW9mgM8IKpQJxuwJkFmSh
	 nJXw/tUP+lyWdsz8ISDrX5S+uEqGNkaXi5Y/JUZCEzK85P8h7XkwsSHw1qUAPRRdrs
	 JnyAHOG0U4jNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14FC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174834659357.12896.14151029456700223069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf1123e168a340887c48d182cdd9e3e2081b81419b95a5f6ee6d9273e73f061
Date: Tue, 27 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748346593
