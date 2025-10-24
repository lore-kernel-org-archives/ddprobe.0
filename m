Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159B82045B7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761287994; cv=none; b=NoDEb9WfFgoTraJieUNfYv6zkCx84E3BMdwJHruzdyqrNHzXKkaEGey7NZJiMDjxQmCpnbMpt7XkuZTjR1L+wVPjsgRBouocuMq8dLY4kxmbbrlaSlj3R5eQn8A864XLkL+uEjG8g/hjHIZ1YyrpZy5SRkTAXMUK+xNU2tKNS+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761287994; c=relaxed/simple;
	bh=Jl5JY+868UFG6Nn2h8PWsDN0jjEQHgxBOdSmiP6JHUc=;
	h=To:Subject:From:Message-Id:Date; b=ABllcRnrHJYoCUx82S//V9ovzSIT2hjLnFEnbBzL9GJkkpLoL1ht4CFRZJirIipjjqXCzpVlITd3Qwe9gVQ4B+3nV9D/9L88yZtQjrWMMHMLOE8jp3mcpGCHd1vu2pAX1YcjkVoWM81FKAYyS4GdCyDEEtieAtgczTutvxQJVz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRxo+54z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRxo+54z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB1BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761287993;
	bh=Jl5JY+868UFG6Nn2h8PWsDN0jjEQHgxBOdSmiP6JHUc=;
	h=To:Subject:From:Date:From;
	b=NRxo+54zJpjBzk769sHAdz8zLV8ebY3kv17eOgennYKoRqadBWczqW8aXqbM/dhOa
	 1w/ikONzRTT5bhQUUQ1YSvwIK130loCtuxHWvQpK4EtGi41yJJ+Y12ukn94iaxa1IP
	 VZ5FQvYCgtDbirvMpoMsmxZCF7WreLa4V1PQ9g2dGckJRuYmoX1OvVunTzNduiXF+1
	 bOT6kwt8kWlc+2p4Z1fGZIGTS9+U/w2BHG7h4s4PjTxIld5KyKKsq2TIhXPW+wbdu4
	 zbWwrEQBaMk7gEXH95hlV7rX807yRNm9KrpEHFTEHDYi3LT8PnOwG85XeC8hxbfZSq
	 sZKNZo2aU5kRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE2CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128799357.9205.8443690178420228442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9259a74635e37b043d9f0f9d7ec68b0851107d040c3d521e682b3901461ce0
Date: Fri, 24 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761287993
