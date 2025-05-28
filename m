Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3590A3C01
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748419194; cv=none; b=Bqud2XfrQnV6C/0WOdEDJUMSdcJ7NVIYqs4Pb5Okp3ThrXfRRiV5t4b/4GM2s9zQuPE6r39phQ36hBDI3asHuUmvKaozebSOWP4wXkWrBsTEjRp9MgEvJpF6AfCcDiLCm+RIilQ+/OFjKYJsuCHBGxR455uVhRKA7s3IcZ/hkyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748419194; c=relaxed/simple;
	bh=+9pLLXMxUUcfHO7w/0dVFJozuBEuOP02TVP3yV/M5Jg=;
	h=To:Subject:From:Message-Id:Date; b=WZ184PB7wMLo7N4LfZyLUtkvfgbMcF8I4eBsv+uzzZtOCrQMMdP0T7upN1+ZaPMx/jYxHxY7HfD9TDzgrUmkrIYYsxzPZQ1q6t9+H6hgBiNIdhetQHtbBtVyNgj9G2XnYDkv0dfnv3Uy7ImH8o43rUsyhqTzkisU7tUMd2G85Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBqvk/E5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBqvk/E5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2652C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748419193;
	bh=+9pLLXMxUUcfHO7w/0dVFJozuBEuOP02TVP3yV/M5Jg=;
	h=To:Subject:From:Date:From;
	b=FBqvk/E5FieuJIIWcqaP/uJuI41s2gVlxhwH7A+yIyLA7nrcpJG4V7CeQkaYlceGE
	 mlVaf2whkBeYV+nbtLlZ5DzlwRegd1aKKe9YP0LXr2UtUZligDRaMM/PpgICN9uxjM
	 fUxGyQAmXrzmHWL8FemsH8lnKutgTFgp8lQbcn6Qhube77MLQUdYk7RG9R5gRi0A/n
	 qtR4wbXpRyWm68bco56ToarDUXYr7ehTBtr9TQgMwlmKmkoL1PAtwGieUf0OyIIC/t
	 u8OTWV6bdE8MeOAoc+NIO5x5FwZoi14POaU5NOPQ9nJ81yHUqr6/2j8Rf+s9rBIiFN
	 skThDh1FDXu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED57C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841919357.10093.12193151989123600348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28ec2e489fc3e98c7e2a01ad09962b5177402cd86c004cdb4e13072ff4350aa
Date: Wed, 28 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748419193
