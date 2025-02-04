Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091B5214207
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738683354; cv=none; b=cMdlzrRq/OLxejJVjcLs5+ljnhWYkolZ5kzUKq0VeXyLWNARMWBhwEc6GumBidbtnQvKNhnWT37ZEnUrO7AmF9Kls0zUhE/yrnTILxFS3JAR/LihNUf+wmbSOiuPDpnkWE2S6dfsajhkEvlxJIYdm5fm8MuVJHRFdDGyyJvjuB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738683354; c=relaxed/simple;
	bh=mjYIeVWJcsjIu0tRiKBiFx9PFdGXv5tqaXZ7Cjhsnbo=;
	h=To:Subject:From:Message-Id:Date; b=qAM2F0fJNfd9iTMkOGoljph9KYBdQ7i1Q9QSIh5M9zRQJbmlOLrGr49OeSPbj+dPVZYkHMz7P+HFHdhGP4W6BsQ3eE5pogHzA52uJmwu2JXSayrBWyKzlUKz99dvXa33bA7KHuNxcfrLjJooiGpvCmXqtKwnTzrG+afuP5Y4wbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5YFS8Xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5YFS8Xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF059C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738683353;
	bh=mjYIeVWJcsjIu0tRiKBiFx9PFdGXv5tqaXZ7Cjhsnbo=;
	h=To:Subject:From:Date:From;
	b=b5YFS8Xerd054qXk4thZ0GZalLEV9iKIPwo3foct9p4fYNwz64Hsq8HAvZeoAB0Tk
	 nq40x3A8nFttye39DHF7ssPubfoqrxsp6YiOHhWl0212UUMuY15yfgSqfQ2CasApS/
	 Z7urslRDYYrVepWgRMeOknthpMoGhUS6YfylTONmGuhpIOvwZ8wX66a+IVX2yp4Jf0
	 7MhNYtTOd0s/8lM+tmNpDlg0bGU1PlcariBkdmA+Q8oaZnqsL4D8P4x6UIpS5atKC0
	 ztwyc58yyWluRYYT2r+zH+t8MtesooEgzq7Dy55j2R4oB+0xrWFa+XqrkbN1+vIoTA
	 srop3BvwdAClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3733C02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868335365.6874.18419923119778066473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c69e27e231b049d89981264cbbd99cd473b94eadb04780ec943091ce32d1e4
Date: Tue, 04 Feb 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738683353
