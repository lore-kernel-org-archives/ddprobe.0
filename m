Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B3D194C96
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778105854; cv=none; b=jnn7iG/ILG3NP5I2yYQ34IQfAxumXXl13JYZBcJZgvBcOkS7EuOjua1mriP/3BmcAjtRuJMA6cUE/S3I/apPLAJBBL9l9Yu3UtOW/skeTSKFbGfxgBpESFuBPySuh4VAYE6rrfsopmfMbLmXkZddq4klyUwBaipFgUAmbH8ZNlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778105854; c=relaxed/simple;
	bh=tHUx3PgetT+eJrNUA5yMc/DQMDTN8lG8YVDB/MZQWco=;
	h=To:Subject:From:Message-Id:Date; b=L0ZAXUlr1zU6aDV0/KVeRBxJqqjCnPIoKjs/aAdOAs8ilRVAgNIVBCVd3qD1oH5zn7PXcOi+nbtUOcyDehVhOewp91P6eBlpUUBqZ9YUoZcMcSRYkxPxjAFCDeyoMlildw0zXYr7Ys/0oFGdxggM6D7LNSDXXXyEHoAD5MJBv/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjWPLIqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjWPLIqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5D7C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778105853;
	bh=tHUx3PgetT+eJrNUA5yMc/DQMDTN8lG8YVDB/MZQWco=;
	h=To:Subject:From:Date:From;
	b=UjWPLIqdT0f5blywmsfr3ksSejNwtClTYuYqJ5uo1uYPWw7Vg5oMXx+E/hjeMzjge
	 TZzdI0i44CHzQagG9EvOWWiqP4lYRG1FPGJ4JZ43MIIqYSEjueUqZs62/yyFwX8JZp
	 LENX6f2wGwW//0aNwEDyieJmZIkxWkUjcJb1vLiIAXnAZEoEhweP3+RHtHCAL8sORs
	 cnI3amjOc+tCHvTeviVzMfLgUxImLrtSg2Pfg5JMZz19J1m19gkLMQCT3q+7fmU/+R
	 0PjWs2UZ7mLBeNPyzdsSk8S3EvvbS5pCkxdflN8iTmmmuo3KpfRbMw4BX1TrPE7EPu
	 jaJ9NtwPPDa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAF2CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810585370.30780.1011111538494683023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 625bf62fc08d65f54c1676ed64a1d91ce6410aa2261ebd267634e9bb9e82e42c
Date: Wed, 06 May 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778105853
