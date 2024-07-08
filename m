Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5290679FD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720463183; cv=none; b=EjaFweA7Dj9X5TKfGT0i1y4Go620O4nX/Uuh/r/817we9ezFpYPwv76D2xVdRjDrIicH+UtyYLQdd9v0gQHY5ZrC++8vhQz+VEiV84boFb0hBzfKMeRpXHiHa1vU6MLzh+PF/6R+GsK3tEZwlPpeRGtUksetvzEZCYllvsi1k+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720463183; c=relaxed/simple;
	bh=4kfqOBakHpE2BFZ0U4/D7Okj3IbpYTwZUDWIk8GrWzY=;
	h=To:Subject:From:Message-Id:Date; b=jJDyWtMpQHr9pJJdS1Hib8hct359UspI3/GNgWI59r3qzTgeVhwcJ0OoCGMqRKRIsqaQitfdN2g7Wf1ShQ4db1ycc8zivMOU3EbHKc7uEqIO6RTI1QbGNhuZPvJXmKsmNPA8aTgdBzBwzNF06HlF+UV7d0IzDrzcigcL1hBpUo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLd8xveB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLd8xveB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C2DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720463182;
	bh=4kfqOBakHpE2BFZ0U4/D7Okj3IbpYTwZUDWIk8GrWzY=;
	h=To:Subject:From:Date:From;
	b=lLd8xveBiLvUyUxSNPeai1wsI6Q+NYScknT7Q7IsOg0VIaWO0k/fTclMmKy0HqXHn
	 OQCnLxtYoJeV0O89DoWDDP2J2EfzlO9CPiPakBFjFkZGhv1S3tFKQbr+tTEEwKLrVn
	 X6UXGjsQkHMwMMu0CnUKhdvAaWPyzTnnaQ9yI1DLfEDHL5nvsspTlbABWox6Nktroc
	 8WsiLq+leHhZ+yIU3+815V2FuAB0ofml8si2Ovrmfqw2On+A/iSgbOqYbToce2Fjr7
	 5IytlAsfz/ru9IW8tUdiRFpo1DMBTHkq0+71gWICXFGAIfyur8vilf3SCN6m582Uug
	 jseMqtqxPruXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40CBC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046318277.24128.9804111171167049750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb87d323275bc64d3e7f7e11cc20b2fdf7b347125d274d9cd9b786d9fddf581
Date: Mon, 08 Jul 2024 18:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720463182
