Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2033DC8FE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749614395; cv=none; b=m4j1JnCIBmtKVyyS+XoayGgUx9rEUGKhsCPzLJep7c60Rm4itU7ARAi0lwaHjvBJFDvdt34a8Ol2o/vCJEuI6ztDRIbH9ymmNOqoPTK/avpP8JHd6TXzKk2snq6j3U9kNUEiVYbhp1M4ivznJW4nW+xBrC6XanQy966O9xdDY1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749614395; c=relaxed/simple;
	bh=nPxNWohD00jX5LlJdkVLY7khk8bdlvlOrcLxgAI7xoA=;
	h=To:Subject:From:Message-Id:Date; b=Fru/Sk/D2yvHad2iQ6I/8ZPHQWTBZDtNminK686oLw85Xh9QN/6swwt7hHF1bObNcaKwQKVm4+eFbe7YIi4ldG3tOhDL2ECuHuPsqbCALRq/jwgSi20dvybEPozWfybk5CknXvgCWpgaRMJQw/F82EnZmaBEI/CYj5vOCseJP1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfQyiaN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfQyiaN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EECC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749614393;
	bh=nPxNWohD00jX5LlJdkVLY7khk8bdlvlOrcLxgAI7xoA=;
	h=To:Subject:From:Date:From;
	b=LfQyiaN/ukKjDEani26+f9tZ2542rsECjdtI9zlZP2gtmYAnEdTcW5uEauXNueX1x
	 AmPs6h+zzBd7nmmqHOEwUFMCFFmL1R9T5IhmfC+9BieE4bfBj/v1VLzVaBPtq08LED
	 r5RVC+ffzXigchnUqBoxL+3dT9EyQeFK/lgbYk6F224nIHG5N21pWEdph6al6bqrF9
	 W2I7EGxGLIBTUr5TTe8ZucWKKpo2hB1C/8EKeOJqwuWYSohZPXdboyEYpw8gXlVtgR
	 ZGmDFK07m4aRQ2Cg1MuOpN8MypMAeAzfrqVsoqdzeB7na5Kv/r/zydj6EPDVrZAty3
	 6a/DdZtxxWYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9066CC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961439358.31613.5316544592282682210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29c25f0f32c04b131cd30ecd4c8d2799a0bad13d209d0d1952e6e450335a080
Date: Wed, 11 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749614393
