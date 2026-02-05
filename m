Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBB83A9D96
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770294834; cv=none; b=BXjn/AcwvAuDGnmN1k5jOL+dHPJzZDjLKheRVASdf5jOUfq76ovx5tGVrdmdCqnuh5quHEbrhttsoxLfCEW9HLfYcb+sUMZHDCA0+meeNdAAt4dw41Bw5Op6D+npFtatwdbwcAPiMkpLFSzCm2rLQZQqdePsSKWLMXlbfLHN6DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770294834; c=relaxed/simple;
	bh=IxV6tew0ouT4RAk/riuiisCrX/haVBK3VhAXfw99h94=;
	h=To:Subject:From:Message-Id:Date; b=DjXIPztvrEnhOXboI2UlHzxf0QBL7gJRlS6HDMhlnvWxSdhJKU3aOgld4iBG1Ej1IOd46e9+R+MYFZRh0e7HjIkCc7ce1vb/mIKGT9/O7o+PNwUxU9aZf6DoqOQzfqD0J55CN53Sdf72Zr2Sa7cqReyOEgrg1yKu8wwVXh5QByk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPM1lqmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPM1lqmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A2AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770294833;
	bh=IxV6tew0ouT4RAk/riuiisCrX/haVBK3VhAXfw99h94=;
	h=To:Subject:From:Date:From;
	b=uPM1lqmMLg6YFcG67gndK4T3t6xpYxIkh9GHSPZo2fuNOJ+e37AbzVDsl6TgrhON0
	 vZ9loMoV8Ai3AIWq2hk0tnBXma+Cre9PXtVM13SI/ZKzucYBxCFr7ftUPBIVTLm3ZF
	 cDIrIogS28VVPFcL3SVWcuGZcw8ffN3ze2UIlSdyV3xnNnzAitNpV64E9YP30D5tD8
	 V+kWdY0VYvPZMReqkWnYsiqg13VYiVwQpSSXLNBMi77nWLstJe9PL27K+uc5IZI1Ab
	 f6NtS1NeyZmoEbmKQcM4hSGkUH0BdSrjNrU5FKvLCdwTjK9mBz3Q+UBirW1SHklbqQ
	 PNmXK17DDojzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DC7EC1EA5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029483358.21323.14677697611845621840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d517fb8dc3aa5c4af32a566a5f917b7562a0b5218a21693798012e112f32a4
Date: Thu, 05 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770294833
