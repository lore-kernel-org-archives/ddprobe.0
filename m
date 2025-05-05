Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9A01FECDD
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746440394; cv=none; b=o540O4E0GQxvWIaN0WPO2AbkTTHmqc2x1L/H+rctk/1mqrSd2kr8y/xwMyKj2Jd4t+y9k4kW9TpKyn2fsvUwRJS4QJnG/OkBXyQI2D/coyAGcJmFH4DUrp8fgAE64yDcy74+zrwbsM+Sa1UdgwGg0qZl9vG0vp431mdeXf/jo9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746440394; c=relaxed/simple;
	bh=wkA2iE5VNktVGTQ2Mt32SrDCskB3qM9B50QEL9sPYlA=;
	h=To:Subject:From:Message-Id:Date; b=MKIDE2pejwTVpshUaJkvfUAgMPxcWXoZFLZ6a7/7NZbIg1eI2iJLtbiuk2hNqrRCki9w/9m9wQOYBox3ODsbUQsUtdtnsHMkoy4M4BQbjU3X8elXJHteXdKk96UMegd4heNYXaPE1HhWANQVzX0gDalgOLRnsZWGrKoXjjMfffc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTFbbwWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTFbbwWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8220C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746440393;
	bh=wkA2iE5VNktVGTQ2Mt32SrDCskB3qM9B50QEL9sPYlA=;
	h=To:Subject:From:Date:From;
	b=qTFbbwWqJXA5ZggmZi1XGzNSfwANYqO8jJawIH/qKHoFdNYsQgeecAr4oQvov4Afj
	 LoTjMLBL3Y0wgIOTTAzSQk2uyQFT1wwOBde1cQOQNSlQf6hlfXvHQn6a+V5KfXDmdV
	 p9wk3hOuAOyQE+a5r4I86ZsqsKh2YK4Qi6+OPfqUc4CGZ+Zvc41Dw7RrGY5dQvl5ej
	 jqCl4YllFlAYRC4SuHvidk5pL3M7YCoBVeiRP2wyISLjTMc7pA2emW96w2CnInwgsr
	 KdUJPOgTSxPgC977rzpwBSnkd9+0hR8L3ozLmjio5b2LjlkOP6of6w3GSmwDibgwNi
	 ZahV/ibMP5sLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A2DC3ABB0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644039360.14803.2298853660894625505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844ed500e920e82f912245e6e9e206385356c3ed0a0028243afb7570c68b2eba
Date: Mon, 05 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746440393
