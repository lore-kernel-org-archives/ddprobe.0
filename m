Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5770118EFC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719422603; cv=none; b=Z7TARCXvV8RJAsbnp5kQDXzIibcKOgTTPkwzDrxV+yRxkfoOctm7mfxQAHxl3rIosPNQGuugWNmoylTqjsuIVw1aovmPri6hptA1yz4zXEzFT4jJAAR07Klabesmd51qvX9OgqKzHDze+pA0npodmvwmEm72cDaoUaUDNSRGGxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719422603; c=relaxed/simple;
	bh=xoOnlTuEz2+cOd9q8l7xyQ2g74P0BP+9DZnJArw+LjI=;
	h=To:Subject:From:Message-Id:Date; b=OghYwhM4eR06AL9yWj4Fv1kwv0qba60fTXsPn0CKq+m0ec9vjiFto6DOoZeVSHa2+0fxb8fClo8QoZHhHFM5uYUvK6VI7aI3qu0HkINtnUqCj5q0In64sTfrNFjcroz8jJwLtH9kDH+uMbTqvA3r9A1QPkZTIrEAbWiybEQt9KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0HX+IDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0HX+IDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71A0C32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719422602;
	bh=xoOnlTuEz2+cOd9q8l7xyQ2g74P0BP+9DZnJArw+LjI=;
	h=To:Subject:From:Date:From;
	b=I0HX+IDFa3Pt4vz6aTgAjPQR8wMe9s00omqpnwYe4eu6vBwA1EKeJCb8orZTHX5hS
	 tzOdBqPxw9GdeWwpOz2mUN3EcxxOc1bRoFp/uFCj7tV6qVskcFuXKctatI/76MQzJC
	 EmkqscY37sKtqZus7aR1s68O4MSYlYzAp1/JYMNtAS8xYcXtj7pOLsTVo99toVgEjR
	 9JXgkrsCGxtNF5vYVZ7NXA/Eozl0yZ+UmwYGXeSq1MgXUw8lw6lpP60hImmOJMEBo5
	 k6FeHJ0qMCLCGI6dIfNnbaQFeGDIC69QGuIveIrEjY+IMxOl58rb8OU0Xdyh5NizBA
	 oWTecqgSzJAlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0134C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942260277.32254.8782639188622588947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba09dd42c6a1d02b28f7454737fb63de1e1f317a29f018ebea2d005a88a13043
Date: Wed, 26 Jun 2024 17:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719422602
