Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1369719309C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773021294; cv=none; b=K780iX4RlexzPGUz3HAsOygsOiFbLeHKRhdR1A2AQOZDgqjF4azfKjTswfpYiKg84Xyu7GiIjD4CBV/ILNd2raGqyPtD/08DAPWnV11HMsSpPZ7zsAqPYGTKapNg3EwUJJ0N5DkrD1suJVAfvFQMjHGEj0hdO+VH8g2b58UZLgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773021294; c=relaxed/simple;
	bh=HmggUdPotdmnADxJlsQq3HBhgEQub4NqnUrUmyuhLf0=;
	h=To:Subject:From:Message-Id:Date; b=HrKsKMmlNsXF3DAJODYNz4z0Fq8jatnez3oeoU8G4GaZjdD8WBNYoUaxDPI68i7bg+jMI6LI+RCHnM8HvLUv25nxcY53sho6A6ce0VdPOVfzjYFc98fDCsflcivKuFnY2IGi1jPaGcT01tdXTL2mnjeFHZcQzFGE2OlPtr8tiaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7vkC9S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7vkC9S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A0C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773021293;
	bh=HmggUdPotdmnADxJlsQq3HBhgEQub4NqnUrUmyuhLf0=;
	h=To:Subject:From:Date:From;
	b=k7vkC9S7ddjlCQJp6/RfuEQGrWvP0WjGg9i7t0gDhuq+PTSDVZHzrWyLxFa+Df8MP
	 x+HwePurViEZxoDqlTYuTbSmxSg/DMFsHhXKdB/hv8eJE58ysxfbR3GOjyaoxg26aK
	 cKXIyd1ErIoMn0Odphwi2Rm5w37fMvFtO8GlSylJEOsaESNspEKmykd12WRXZgt1pC
	 RN40Go5/HW0rTB66crajTfKnecMb8+Nf173JPvs23roelmQxIjsbc+O6gMTO5RPh6V
	 Zf639wIfwyX0wWaiCGxZkbEc4lfrSJur+KT6bFzy7tSv76m0ICIpMBfFKO6d3haBKM
	 F4xSczb4VouRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E30EA8549
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302129358.4076.15706220332382675125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b483fe7ac50baaf6d673b3df4824d976b479aa911ad94398b10b8592d4696133
Date: Mon, 09 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773021293
