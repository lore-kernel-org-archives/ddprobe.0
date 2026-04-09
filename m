Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84335280A58
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775727334; cv=none; b=XQoaRXKz9fggcujcB6YGd9A2QEh+xu3wWVTh5tu5hwINUMcJWWNIhophH04/o1rZzuhIHAhAQWDAahaOLV/uz+whMfj9PNMd+UpvrUwmG6DGhkCtiWi5vtL0eJ13F1EqJ245kfY847cGur4KRmDk5HGBUrPJiX5YriqG/jmrNcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775727334; c=relaxed/simple;
	bh=nUhdThpSxSluAuRvGX1YHqgpjL5tb2/XY1dS6YtLTRE=;
	h=To:Subject:From:Message-Id:Date; b=dV2SqCDheFTZEAAmBS8juUxepyvki+Ny1mM4cGh2UDGfzi1JwioNE5gUHAJxQdH16jqQfnlpPeYliU3zHE7+6qreNzaAWPg5cKFqmbBSdLC3XpHu3dx28UnxHJT52foBNEMPsgXEqcazn0PoMIH5N+o7oEGMlRVX1qlWiPl8HpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jibht2oT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jibht2oT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFBEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775727333;
	bh=nUhdThpSxSluAuRvGX1YHqgpjL5tb2/XY1dS6YtLTRE=;
	h=To:Subject:From:Date:From;
	b=Jibht2oT+gNKrOeWl0eIgwhwg1d1hdcACJrpPJFy/quQwrdnl8qzsrSUrGb0zu9Mz
	 EJLeDzvoeV3HNvyOizUZAPOLsps/URHvNpxcDYCV2hLH5EG84qWlfptPoQMCEcweAP
	 8w78AENFL2O7Soh9IoRERi9wfaiZuzPqLu/VvkOjUAk/8TxeQQJX0UV8ZU4656kOBa
	 o8q6ZCjObblTBFB232A92LzYwJ0zKIZrGEsvyqbMbbDedyCH6PdeGT7aZSu1drczoy
	 76RNWRKd6GU0Rk+ndRXFZyLm2sQC+Zoy9LOq7xNZrZE7ADf6sifuj3K2XkRx2fXUjH
	 GydbjAZ9+kMMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC58DE9DE6F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572733369.13196.6944907083995190539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941778ffd6e8c459fe4ee37eacae618423e0fa329a6dd841f3fd0e9b0331b4e9
Date: Thu, 09 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775727333
