Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E48522E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720595183; cv=none; b=UMGEnfFpfa3YQKelPNbOQ0CwDFUnNPpDYLsO9iQBcZ2zTHhKi73Ll0oYkl+r3fxz4kJBzuKXGknzBeBGpzz7DYNKpK23+SlvYuQe/WgPmF7KOgYLnheWrlYKQbOcFTSTtJJnIur2jyJrvU6cTJ6G+MYogeBde+30okkRIpfDRAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720595183; c=relaxed/simple;
	bh=H6pd38X1qQZ64ZsKHbjM3L0JACtqiXdrb3bp1EWsqhc=;
	h=To:Subject:From:Message-Id:Date; b=JHoI0bY8cVsMIjGBY7xONuEHERNd2NHC3lyaJdHk05+gdmO/zEGOOJAElW35c9Z6csfx+DBYusjrOSm46+rLXIneWo4BnnzqhSRKeoqlLtVwswLtVa0u9S/D1lAr7kNg8sQcOcU59Z7GFyPq6uwg+jle9S4SK9qfiu0RSAcdpTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL+J6Q9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL+J6Q9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCFEC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720595182;
	bh=H6pd38X1qQZ64ZsKHbjM3L0JACtqiXdrb3bp1EWsqhc=;
	h=To:Subject:From:Date:From;
	b=oL+J6Q9j3ZrlLmwmBBiwYJaD1aNRZk2nNB6KsrHfwpjoNzxyMA6w6dUxjlPHN5Muz
	 tuLg9T/lS9S9wPzv+uLBGMBMs532xbWr3ms3PfxrUjtv28aFlp2AH0VtZBYVMLzjxj
	 VeVCJaqbY1anJDmWHI+3sbf3Yzaqdgr3E830jQmbmWjOGivdqrvHE3RuGQJJV4dmzk
	 ErOSG6w0TkVA0yLsdPej1isV3EkmSjAbs+FNkGHw5+U8WA8jNHKxZYOTdQUjUm71pi
	 iz2XmsVnycjdwKmdlzmLTgIbD5oFOd4fPoev2AWAVEkYic+8ajVV1pPhsiItoa828V
	 nHccZR5ziiBTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59A4C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059518280.14993.13639250154002233913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c934f09f51574345686cdee8e50d4c839e1e841cd63a20b979ecc5569d33107
Date: Wed, 10 Jul 2024 07:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720595182
