Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A6D1BF37
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746114594; cv=none; b=ok2+Z8qz3pbh48oIgkucG2lranrl17VdZFUquBbbOflUxbAVyZdoapLlwTcyT3GGQ1yQGa50SFIViZ2NL3az1YtaBRog3hbGJb5jOz1EHqFmSEprspsasPB7NkMa3TPEbzTdeNyfTMTvg1n7x2w4Y42pxA2Wg2PMZkuHy1Z2bfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746114594; c=relaxed/simple;
	bh=7vjMgMyvcpqvQRO1mWTVd0R0bKDtIeik8iT1sF8VXbg=;
	h=To:Subject:From:Message-Id:Date; b=fxC2YmnwfPYbulriTWhNBWriHO1q1ZuL2tJqzKOSb/ROpC4vxy/FW5V+8HV3VrGrAnTpbwp6gmGjWXHDjlpXmvSHVln8imIhw30Cudx3ScMRNmpo4Mg+tG4V9tpB6V2fB1RpddTbebBxGAXUcMJv65Xp8eOjRUGTHygMAiDYzNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMQJI+pS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMQJI+pS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746114593;
	bh=7vjMgMyvcpqvQRO1mWTVd0R0bKDtIeik8iT1sF8VXbg=;
	h=To:Subject:From:Date:From;
	b=jMQJI+pSSUwi4XKNrd9fG7sHIaJSPkiB+QbivxQ2slNJA/A3+Iqj1TB6wm+bQqg9e
	 JqSxV7Mps6xvVShZqcIAdO4MWVoiLGyAKtfP7sFE1mqPxYFuLjkKtzv0s3giX/9O5r
	 6kLAs20Mz64S/4Tc5B5kFVlPS3ncMLcwCn+MJs0mGVLtMCgIePdyMci08m527+mbla
	 oiq/SYfqQVhnnwFg5WfTAQjC8pTAfLC3bdy2BIKcyZe3zzCYXL7En63ucNXFDZfmpW
	 SaBHmSMTbXMmFvmo3S/OWpRt3FP5zyOHSJk6ovKpaQDa7E8XO6dJla3gNQXYYJtu5n
	 cF+hZyPIvFfOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD9C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611459357.32116.7748682395125486150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d843c3e65505a3d3a9857e786aba8c2de8d5ada27b789e0f0c6fd3a5e688cb8f
Date: Thu, 01 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746114593
