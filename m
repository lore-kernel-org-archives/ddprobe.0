Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3BB233721
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761841194; cv=none; b=QlhNu2sga1m/Pue4m56kyEGid3NC90qcwawgVxwJo8I+REvhXDjPeeQVg6gFFKJ2jk3NXZY+HFd7xQbboxbSbV0TRZUYKtNuqShol+MJE34DZITtqXB4RkEKcj4gqrn1yNH4tE0HV0L+M8TVBK0IixyDCSqAi6lZabX399AVeWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761841194; c=relaxed/simple;
	bh=sbfD5srF65BDDEXdknpKnar+bJ/PiS3iInNrbg+k39Y=;
	h=To:Subject:From:Message-Id:Date; b=BKmbthxKM+D23uOoOKgOJtCxDRwPWtIB9tY9Ey7ar6NmLiRwCpp5YPH3xk21DIJZDkFg+ld6rhfQYEMCpPzqH8WtclcJVUmlqJxwMCGHUnrHLPX4F86ra+Kr7ilGMjyzUxq0VPQsCpwlLey48EphvarIz/9vNgMUSkL3pwLKb9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rngJeSQA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rngJeSQA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D100C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761841193;
	bh=sbfD5srF65BDDEXdknpKnar+bJ/PiS3iInNrbg+k39Y=;
	h=To:Subject:From:Date:From;
	b=rngJeSQAFynNULBrKNHdP5TfqaFMQNLgOSXCAhMhVdrVN8pvSg4hgq3CM9tU+PpUq
	 IqT/A0d9Xhcd336wZKh58AzH1jnjNOZU2/4ntZAPypPIhm2sDcbiCrglDlt8VxS4+t
	 2rgwMKreKWWPntWY7aGhg3jq+3QFt9x2GH8rJU4AwpN04qZNK/UOHq2rIrtMVSmwXZ
	 Unbe9lBvTiel5BWaxkq0vGSEOLqRNE9VRBI9P/X5jZzBGNT7haXB3245DZ2gEtMgVd
	 52lmgv0soYhQqrUX86m6XuoIWh7ZVaVyedY7Ife7fzyOACFqbfVpkUHy1i/omlqe9k
	 eWdVe+5DPTDQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E4CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184119358.9741.2234725327911444116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d235d842481d901206e51676b6dbc7800978ab12eb903e08c7c9335070bf571
Date: Thu, 30 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761841193
