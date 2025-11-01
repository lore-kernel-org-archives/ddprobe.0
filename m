Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44897C2EA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762017594; cv=none; b=VE5cC2a5CvQjBOdE2IA/NIom8sTiay3wFw8gt2yqzQUzWgp0i/6FUNf+MpflVvLcdA5byCA0z8l0RAisBH/rFknZfMsSzEXn0pjRW3RVvtx6RPRAcIBEqw1qI2GUrCOzcOKgmjaV6J7dejNnPXgp11/amaxs0IyuFz4XriEoDag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762017594; c=relaxed/simple;
	bh=b6VngH++CAl+KlgFMkBcC+vwCfuHTpHHi7xW95Afuzw=;
	h=To:Subject:From:Message-Id:Date; b=kalbTeEzMyuFYQwxKp7aor8Uv6tmVswL+J0WGmuE/jyCpf17ZgM7qWS929YVQSEBap9qT9WCWbWBBhWTXcyqnwWpmT+Bn8fsGORvk6l0qjyLn3Ci/b0+qt4OHAFFuswexzudupYMZzJu+zTh7T3JBzdepg3hV6QPuvqL2N16J48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXN/Pky6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXN/Pky6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB13FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762017593;
	bh=b6VngH++CAl+KlgFMkBcC+vwCfuHTpHHi7xW95Afuzw=;
	h=To:Subject:From:Date:From;
	b=rXN/Pky6jl3o0SlcE6tY+Y9U4gFV67VFmy7kZZuN/xzz7tI0/K3bf0CCUl+NwzQPy
	 QpVLyWe+MYb4OjGRx6RxjvCYH6RhHAGbK5YWXFX/jAAexhzcOMD1hccy/pO5sLnl0M
	 jWyHEiHdSjGR7SYeSpeuLkWB0gdyw71kF4SH29gunAgkH4NxEKFewwc/Dx1eCAXxfe
	 lZLUvjPJeOX6ilA0jHWSUVheYKES11qO5CprlADAsj3nlJBx32tMnHdIrI6aM7x4av
	 JPV19iyhMrx410+PqMk+Hj+YzGR/WbqY+hwO6qFoZ2EopsxR4Q8PTQfxwzlV06O8Dg
	 DLykl9gxRrErQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977D7CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201759358.17956.8277420400902366118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5131780de67ba34e7073a12036042bdb3fc4ff05107a31503305be5a59b9f31
Date: Sat, 01 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762017593
