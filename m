Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8AF13B7A3
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744796994; cv=none; b=FyAhsIB9dcRzDWOze++Mt4w5PUProI7Wln5CS4BcKAH/XtMTDGqKa1SEymGMR/6g4hJGxc4fSQHenidTYxggqKNSoUJRZnPOb+WiBZA3NWxwuyigW+b9TMHTcYAjJ868SBJLHxdMjx1b2437LbyJgOBdi6N14qSC3oaZxKSJn+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744796994; c=relaxed/simple;
	bh=bD98faSMAQ/2NpQ6z8TIW+XC0nhrXbkrgFxR9ykCndE=;
	h=To:Subject:From:Message-Id:Date; b=Pl1OYGwFrvzls05WeVgjMSYc78RPZry7+yS2GMDlnU0ZSdgMmWkJg9fUdQJY+6JyB7Q2NTYGbvYeczD1UeSq5NWiKSEPH0DL/WQ8WNllxkpCM82vTEe81svTovIN6qs9aAyXUf2gHnJ1dcke9YFhR/2kfsxorKCHdPHh73JHd9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNbtbGfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNbtbGfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0621C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744796993;
	bh=bD98faSMAQ/2NpQ6z8TIW+XC0nhrXbkrgFxR9ykCndE=;
	h=To:Subject:From:Date:From;
	b=ZNbtbGfSTo04e2HgeDXD6F1Vq6Jj/Grc2CAjw3o+WVN7oO0lVEQCQNY6v9MocBj9B
	 2NGF6ubFk0Ox5J/uG8BRmPIp03L6edLnu+Fed7ixhATLLyp5nYQcNz6ndbJKL95Kgg
	 cY/qBNNrLCXIJWo3B+m6ODvnXNfOReIfSrQcTSIqY6h08qn8DQhJHhTC5CEv3gKG6G
	 G0bVWe8pGzYhWX/tvDOyQUTEr6wZiGpIQDll3pZyChWHd0zuE2S9Sa3C9FHjqeyo5b
	 WcJF+5ltn05yQkvXECc74zA9Za01lgACdXeml9zix8FeryBeYyy3Ah9uGOvMqSGa81
	 TytaVNNkgxMhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148EC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479699357.14641.9652245633497431324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968354f4dd5849a510bce8a8942fbd8ccd3d6f33a5338faeac67aa99c1f75970
Date: Wed, 16 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744796993
