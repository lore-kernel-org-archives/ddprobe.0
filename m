Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5814520E702
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791597634; cv=none; b=CJFkecHgDqIiSVzwTS0zNJwd5M+sCYUaFf61AiWAXVmvCzMJ/Sa/yNQHCNn1FFDm3DCG//XFAYbBTaO1m4u04hxfurUS8f+nAMZsHOEqJLBiamplJOwO098enD8I8OUzS2y5LKmwSigXDKwqZkAHfm2KOmZ+oS7ytv+jM/3XTo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791597634; c=relaxed/simple;
	bh=OANTmcA8BLgnl5sIhCokXGCnNhtwM7zKFVmhYIiwZYs=;
	h=To:Subject:From:Message-Id:Date; b=pc1wh7nJ26XxcTDhU62zIpaYH5Mj3yHF98CDY+BJ3XNzYpHkLrGMbBwLggNM65bAd/eCCQPxDNeooFccySi2eRI4bQLOWYmjSMW393G0eEYkniWgKKAPH88zK7wHZPrrLWgl/85Lmufiv0VwB7SR8fhDI3nDoXYUxhHEdjWrVIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw6x+Go4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw6x+Go4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD07BC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791597633;
	bh=OANTmcA8BLgnl5sIhCokXGCnNhtwM7zKFVmhYIiwZYs=;
	h=To:Subject:From:Date:From;
	b=jw6x+Go4r47RURbkb0kixpMXqWs+gfJxE7iWV73gSj1RzIA56JbWMuSSIClTO9x8f
	 oqzAuhzy9iUWhJwPeh1CEZ/Xt4GxJWGHOw8PZdiF+FTGBgiP0hAZZ+4Qwxezmb8BVy
	 guLCifCAwL1zcdlYLrPLdh7kFlyAyIOtofmJYmnD9lCu+gR61Lmv27pgoj4oJWZUbj
	 jxs4/XtG1PfACwy9tef8uN9j2FaMr29RB7awbkmPsodC0JSqi31mVzWV4ZzN5o8i63
	 2gCzqF/0R869t5zyyQP8TzdmwmbS5NDmeOICYyE122j9rn4jRgoFB973nCY00yqeyr
	 xLKQUeMPrzCTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9445CA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159763368.28166.12482670059615791128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ea9abc537b781ebad55bc1fe4b07129646e2c5da327bdc0506d2ce489621be
Date: Sat, 10 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791597633
