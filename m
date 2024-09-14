Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313C76F066
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726351554; cv=none; b=KgatiIorTtsipjg4lODjBlFKFQgMWnZ+sSX54GV126gqpcwQzf+e+ZzfWjOumHvWVplbvnH2q2j5+Kis73368KsNRad77e6eQ2w1HoAtEmU0gRCpWqZw3nlYlE18Vq1GIokg649L/IJDpArC6Il83jjn/PipzGQdn/DGfNbO1lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726351554; c=relaxed/simple;
	bh=KQByqVgTYAc0wKvHoV478ls62bEbPGxo8so5T0WHqGM=;
	h=To:Subject:From:Message-Id:Date; b=UOwzAwhRMus+omaNshT/Z2ukFFDkKtPp79d4zcRmZOcXkS6KWxY3x6l9/6NAJBD3ByXF7jnOvgWozsbA42INJ08ZGixLuu7rqgy+Iu+orVRuO77CqE3Cw5tFBCw6LNGm7EF1o7/gndAAaaz2/IQUsGj/Jt0S/LdTXsooXyxWqIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl0BPetX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl0BPetX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E08C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726351553;
	bh=KQByqVgTYAc0wKvHoV478ls62bEbPGxo8so5T0WHqGM=;
	h=To:Subject:From:Date:From;
	b=gl0BPetXtqVjrUFJzT4RMfSxkD4npwSPWkKotm6ZLKLDwjsXYsNccfxpxVdmqlBrH
	 WZMePKxME4FZPNUP0qLZVS8h0QdwEr6uiIkLE9oDknHhUOCrJrav9tmxQqjj7IOss/
	 7cUH0KJvzG9SdZXszn+wE2mxRYpmdm6j4gwun4UrlZzgpBjC8/HFL4lck0GP/ky3nK
	 us9BKFe1sYA1p3vCr+11OtsB/vtSJ1oJrEjbwbSE5M0v4wsOw/7+UY1DxpbKXzAAyD
	 FbfyxwOd1D8lACPGBHH7CWKGCpsP5tAWhhIcmSGhZ3RklkiNHB+ZHO5d60mqd0ORmi
	 //+3RkOFMCe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94223C02187
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635155357.25786.4079459343819052708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0c5071c430e6da6b6efc0eccbabed64e2f36af4a9b02bfc9f4b9fd084bc9cb
Date: Sat, 14 Sep 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726351553
