Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9D73396F7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768133634; cv=none; b=SmTK4mlaewFdTZgnLhkgyfwR0LJZcxYKHMwxXrx/k+VSiUV8bKrUFudTQKcp66MSBEy8eoVF1osO2qxyDggkCQcvji9rN+DmdEJnIsFtZDgLvEyirWfWWRvRl+pr13TygEdmPgY5xW7WxrX9jBCOFxWIW90gY6+x4M948xo7GFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768133634; c=relaxed/simple;
	bh=WDZhg+tZKMTK+QtywSqEiMz7ivXTPTi8ejenz+ePT28=;
	h=To:Subject:From:Message-Id:Date; b=OTGYOar2IN8F2vi1KOw1ZqXKDHeIlJLCYD6MN/QhmrVX1WpIhSxPSrYScg+FGN1jwl8bSvqUQyKNV8u+w7v0PxHtK5yuI/lBuy6DonZ9gFpClVUcmPjKQLwXUBYN7LhdcVsSsq8+Sj7001T8fDwkC/iLmnpVYEppUEEaW1HnTOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COXO6GQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COXO6GQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5805C19422
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768133633;
	bh=WDZhg+tZKMTK+QtywSqEiMz7ivXTPTi8ejenz+ePT28=;
	h=To:Subject:From:Date:From;
	b=COXO6GQbTwd+4pmGV4DXLRzieR7QrA9ig99u+2YKuuBQGsSOHV6yNnyfk1C3U7D4R
	 rmBEG/Hg/uFTmmdh3mBPRdo5eVTgmxEu2gsu8Z65ClFamvC5FsOsyAb0nRnoQ0JnZj
	 27ukpjq0fKZeclHWeyDzjCfhNcsTt1bQ1cOCykzklyKoblFW7+zF7NTW8Ims9GfC0A
	 BptZbAzKpcyWZtBJGwIrVxhCt3oeA44qZNappjpvkNn9Kknh1LwnVfN+WmNhRJxz8M
	 ruaXygso88TikT6iCe3KNcgbm8urkqVRludfFSaVTbBQWS3aSp+4+Hik9o3rpzzppF
	 3qXbPIRI6ejIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D8ED2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813363358.15657.3216340489350754376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a0971bd07fa6ac56aaa4ab2ade0fa472a8ca07b5d12e2a3ca08d5659455c58
Date: Sun, 11 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768133633
