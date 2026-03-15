Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F0C25DB12
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773560694; cv=none; b=E7ZU5uvIFOgKwN2DIB87bPJ3C6PPQ/JnSeWl6twElPP1xowP5HrUt+cD2ScOqZ7G9fLlVeU2qqMy6thopOzAdMywz/BimxowADx+WZy0MN8tlLAVSvQ6t2BtwHJ9qhKfHg4CqvFkUWHHNBYUV7h9m1ALvxqYO0LUMNWvE1X+ma0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773560694; c=relaxed/simple;
	bh=8WmWnJQPCSAnamTpQ7mpf4YR5JI2dKKpi8LGfUQyXQ0=;
	h=To:Subject:From:Message-Id:Date; b=JLesEill6mriT0zFFlbVg9ngUz3zsdVizHeMy+Ya2ufeoGRWVipTNuIglj3a9728p3icRw0wN3pIIdwAc0NgF9dVWq8RjGKOPahEhBe3kLhe5NFrbySn47Ud5sdMIGxaG/HMi8DWM+i1e48xnWJMGFGN37NSd/Otv2d/zLrmagw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P96pKboc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P96pKboc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7286C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773560693;
	bh=8WmWnJQPCSAnamTpQ7mpf4YR5JI2dKKpi8LGfUQyXQ0=;
	h=To:Subject:From:Date:From;
	b=P96pKbocptxq/RIZlFNGmbM+tE/ZUFpmoXcA+o1en/dVbZiwAYlo3WVW0E+UbrQ5V
	 t5fazZzK9BKmVt/sc8bX7Z4WR+D1inL0Ybtf6Dz5rLgSDr+xgqE/oqMQ1XDU7prriU
	 aednk1e9LjU3tM9fD1pwV1wVsR873gtWR7TiLz9Ktj8Nco8DPryZwoEEthLlgWXuNn
	 AKVPR1tOmpkiROYnb99lW1izVXmn9oQSy2zQZojpPSWq13Eah7zxGH3Ygp3AlE/BCm
	 t/8SzHnbbPQFhk5UF2+Zh+h9v7dZoddAkmBXxZTz90Je9W+cQX0SWualztl0BSSQ8O
	 5+jFjntfudRMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967D5D58B08
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177356069358.21918.12771183358537986910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ba0a07f62de25cb0c02bb91b765d0154b8d3fab3017c5603c545061780fd1d
Date: Sun, 15 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773560693
