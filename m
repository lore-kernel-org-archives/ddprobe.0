Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F917FB
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719016343; cv=none; b=teC7Xk0WSxbzvupllHErp0aLjGJF5e50AHIVqhT6Jn5zFkXsVA7+NJS+dBoIn+ZlcAOzGzxqnA1cCC47A3Dgg6PsO4lzyXQTOv0GU2DDN7rA6kXciPH673HK705yvH6V4rD5PWfvm3RqQfZQ9DVU2O6VGwszwk5GCWRsGA/y1Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719016343; c=relaxed/simple;
	bh=1mYyY9ym6UVTTOqfWHSAQmPEVap8mKoQABXh5EQKmbM=;
	h=To:Subject:From:Message-Id:Date; b=kaqDnDl9+bHEMAZToZxkkTfj6M67dHQ+bxICgK+owsyycFpe+wfdB5EwiPZBhjm2B97S+RUd7DLR9+OmzarccpDiW2oWuE0lBH1vXDPftvQ1aFotrjSWIGykkRm9IZQC5pP80uaMeFG7FTvpBUsOWYNRX7Fg9065XUnIFhdGmLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcM3nh9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcM3nh9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB15FC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719016342;
	bh=1mYyY9ym6UVTTOqfWHSAQmPEVap8mKoQABXh5EQKmbM=;
	h=To:Subject:From:Date:From;
	b=KcM3nh9ZaTW+GNiPUcR1Ud9a3hfJ/PqBhwCA0P0NSK+rmh9pBsD55vIsnZMCgHnwY
	 GGxqzhT6UGjTbAAjmwETdeezmlLacCpZmtt2o4nmhXgdL2qlEhq3bMbEIROqzBapY0
	 RfkdA85SnzDPKSb7j57TvV2dtpILzHJIReHqyQG5YmpyohFKAsMGuTLvgFTbWkmxew
	 /uZfj27pAc3f2pLegtnTWODGYfwSHCWK66uQHWx+UlIVXNn7CnIz7tpo7slhvHU79t
	 ybsQhIPbpiBB9lVp6cVJ7oxPR0vwdcykcnQwkFhBPZ+zyWNb5SMsLlxZLynQaD7gEZ
	 FlT4Hp4wkKcyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADBDC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901634278.32672.17262206488760435201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f32702353c5c98f7d5f3fde320415e3a6904357f6a91076e424def21656c73b
Date: Sat, 22 Jun 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719016342
