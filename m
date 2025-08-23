Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238DF393DEC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755911994; cv=none; b=HB5J0oJZRJbpjCl8w+c98JoOtVv6wv7tFgGmePI/TCQ9gRtFHHvSwg3xVaAIkhMMBGI08wrJe0gRYa+jXU9ywzzB6gXtSzNu1n3X6eQyEbyHjkAopJ0W3kHrQgNdNRUe7EM4r36CLN2c2Gb0zVH1gviYs/Lc8TTE6UN8bDK/XZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755911994; c=relaxed/simple;
	bh=hin7kpAQg4Fc4OgR6sSEMbUWgjcZxJB59a44FzEha6E=;
	h=To:Subject:From:Message-Id:Date; b=LuPqMbSwMhBlJL9zZxAReiEGROznq3aB5xOzdlYpv5zDB8UcrApriZ0UqVcxkCYPZbzehGryJmlfhcrX/AyP0Gi5KrhHeKp0WI5wnoXAGMCYtoHKqFkSKbRB2Ik3QL/3K8Pqm3TRBD86c/gvfmGooMwoUecOhGB0yHql7xGDTAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdLPX3iK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdLPX3iK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50DDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755911993;
	bh=hin7kpAQg4Fc4OgR6sSEMbUWgjcZxJB59a44FzEha6E=;
	h=To:Subject:From:Date:From;
	b=AdLPX3iKhBfpUCjYCtPnuMAoS1r+ccbbHZzIHVffgs6pGIZCv65SL7R4mLLsZnlY8
	 QF+D00uD2IByVlAltv23/iPKFbLBXc+PeWMbBcsj95CUKZ+xxC/3bANfBoH+zAZ2i0
	 jQ9eACg6FtGLbPcP5tIjKvPACZDtZ5a1NuqW7ecG3WGYS3fOmcSzx+x/7kX4tl+9U0
	 zuZUcIKNRAUBDZYib9c7RnmZ9LMEyMKWQkjFbtqBNMSLy1BhYAnwySjD+WtRmjWpf7
	 wN6c2p7tSft1inaWkHmbuGSTLO/f4qkaRsrU08ZHyzqzJQZ7FOku545zWjw3xjskCB
	 UNclHxxUBgBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92047CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591199357.18053.5584314838323070214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225774b3f0b2b5643595ffc8c1c185e86d2a5023107566403e3e03379ddfa96b
Date: Sat, 23 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755911993
