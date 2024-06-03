Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94BAC383B0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717396523; cv=none; b=LAy+xltFuvymQUevmBSlzr3m2lcAQsEgJyzq8HSoQzkKDj0JDBf3jrjTBcWyidipV3kKkq4a6WW8Hhgb9og2FEw71CGdLK0/JjThDyUvViAn8A93SLGbrXd1RGk29lh3Q9pqF8GikprpytUs7UvF9g6H+QQdM1d+lo0+IaiNNOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717396523; c=relaxed/simple;
	bh=mXJ1htFRTYuu48o9RIevKtMzqde3zJFNboXl/y9QVxA=;
	h=To:Subject:From:Message-Id:Date; b=ZQ1yfZj+FljrHUT87w5mOI8u5nf5rCO36wTauUAt9/USKUgwhOl/z7iIKNxeq4/bU34g/AXY0GtJM2JB112h1BGbDum6IR5FbWjnd6o5L8dALxjpMfAGlYi4UgfVUZm577FRn20V/k6GoQ5qac8ugPnO845Zn27ZYj6TdUwUtzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abyeNTpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abyeNTpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21C5C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717396522;
	bh=mXJ1htFRTYuu48o9RIevKtMzqde3zJFNboXl/y9QVxA=;
	h=To:Subject:From:Date:From;
	b=abyeNTpaiI4O9+xeEf1As4WTcg6pCY8FTHMgHzpcpIC4XILVe90W5i8q3o2+eKTAZ
	 28y1BSNVZPm7qCDvhKIGP9FT7un9HvijWGoc+icshr13rGS7/vVDWvGZ0ozJ0kCkTA
	 xo7Qea1Db5iSov5Gad2BZCgANYfB/Rh6NYUv3Z9NQmvxRNiyhO8EKiDMTj4dDnavbu
	 /Dvyc8vkNhAiLiNuuahMQAecQcfrBl+ouG/K8dKIBWKD8y4YaVmPX8w/960aqlEKan
	 sbFV24PCyKkGMwsuHbE+psGHGTD/qpy25gunGA2+p1vvysz7WfYNxoXZbzmr3CVe7k
	 qjB+Fgb7Ji6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC954C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 06:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171739652282.27771.11351557032492007627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae674af5726be6bd2a9a137ceadc1502552c0bfe885cb52219396c84548da29
Date: Mon, 03 Jun 2024 06:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717396522
