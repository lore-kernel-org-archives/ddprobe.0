Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110F6284B26
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772005494; cv=none; b=rHl7C5raT2iu5iR8N+TTUoMjWEsgIyc6lO8uESTVCho0UAUtPIjgaIusm+hjQdQfH6PjXR06PEKOxc2M4ntgaKuVLGcAf4Xik5MEa2Qfj5l86tBDr8xT7lKA8ULv9FxNwr6ZDc5AjibJ+zZJ3LLKsXvaQ5khxP38Ksifr/ky81E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772005494; c=relaxed/simple;
	bh=ekieMzdtbvr6d4b2KqTV7IDgydjkoph3SKvFa56kiXo=;
	h=To:Subject:From:Message-Id:Date; b=t1i5PgfKwjwQfoNjUcPqg8CthbCJVIexDJcVPTofGUhUVCbBzpsTmSxF6GTVh6/pVUo3Y/XHtZLdu6Yj1zTQC47U8nLRiCgCvxxfXsFq1OeAwEwyD2JkgZoZwWrdHWS6trZKfgm459osDMQ9ZPFJBHZ0KEt3zonFHgihOEZzZ8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Exk5ws0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Exk5ws0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCDBC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772005493;
	bh=ekieMzdtbvr6d4b2KqTV7IDgydjkoph3SKvFa56kiXo=;
	h=To:Subject:From:Date:From;
	b=Exk5ws0jW4r61g03tjBFTRWzKT0FWBKvqF8U6hfazp7w8wvnhXSbd11OfUYc/1M66
	 CNJpB3BFaM8Kn6gubqyHOfCRTcbLUdTQ2jDbPI5QbXf929XnI/CUS3GYbz6iRGUqLs
	 mu8qMdWHuGQyZDhDn5zfYw9yxvscQSFb9FZboG206PCdqMs7g4YOU1LtmcN2OCeuBM
	 rEvH/nBoMrNGLpIixkC70pQsMixV1dcDpwk1Dyb33weRJKXi89Rc7AWSre91hl9dcv
	 eQNROteWVf8au5aKN/a1k1AUJjCt5rZlNEVdOi1+Jocy9a1L13HO8FEYc2VlL6WhTo
	 GAF517PYQi8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D57F357DA
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200549358.9434.14894372167232813339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcb699fd59e8ecc96983fdbd494ee6bad0ce921023695d6accdca165486f30d
Date: Wed, 25 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772005493
