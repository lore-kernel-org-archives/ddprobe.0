Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353A925A65B
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755053394; cv=none; b=LIyO4NFPMCXiLcXcuURRGJvPsfQUOMytk+crnV9Ommaz/qAhkOlo6sKFcjYEu1jzuGLmvGPWvtAp8rj4p+178wzSTUcQb8B6VCdmNNOVG5i2qKQ2NnMOpwcGchtCDM3gstd2LfmJh7pDZTvVvdY1Ff9mVKP9YHKnNFmtNcjcbIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755053394; c=relaxed/simple;
	bh=VbJxuYqOu6BfIPxec2d+t87qvJEWpMLnP3Hxq81lq2o=;
	h=To:Subject:From:Message-Id:Date; b=TKpSbkzrVCheuyQEiaYUtmQE6ftXH+/KV4JBE4aeydGVUXSpcYI9TER8DtkeaL5somzSEK8+VO7jXVZqlWCnlgNYcBzWRpJD1fjGuJfKWgHVYhxF0rfLNBjdQ28rVen6qN0dRUt57JxttvYqLUPPQ+Gq2rATzXmW/zfXBGcfy4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d48Xx5DK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d48Xx5DK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B9CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755053393;
	bh=VbJxuYqOu6BfIPxec2d+t87qvJEWpMLnP3Hxq81lq2o=;
	h=To:Subject:From:Date:From;
	b=d48Xx5DKp/wbzX+NzpNEI23K0G3ZdxFGp/NzlpswFQuA/AR4xKbsErbSvKVOG61Ux
	 bQy5NrKAfTyEpCsY90pQWN3MXnsiqQfhfZri/CvbTvpMQIT5imGL9s+I6eVYjfWG5T
	 mpPg90Oa5ZdQZPSpJqs3l6XmW+6zG0DQn4ckatEzpXFwv0Cwxk58xjSYuiHlzLApkc
	 R1+Qz8faLF7DRwboahukBRnxCw8VfWXepfJ2yLGm5XOk0wBgo0m1GMRC5HU/kWKfWD
	 IWfEssvfV4VHy1w0m9ZftqMlIgXor1vZnjsl1uYoB4xTNQ2KG5E1B2pcIv71a/dkQO
	 i/1bHZ6CiOMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF1CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505339357.1054.11143192038064413248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269b403c6d3e4948eeb2255110810dc4cbf8fe10db8743aad6154cfdef797b8b
Date: Wed, 13 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755053393
