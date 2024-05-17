Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64726224D6
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715931143; cv=none; b=V5v+1+FlfvqQhXuAkSQCD8MgqzPvSUfKShe/RVOeFk90fkdmkrtz/PwKfrNUYx1GtH/diCxv3nLb7qvD4NcUVP7RgjbbMVneXwv1uN5tRR5yUmH/CNDruMO1abT8t9OsfKJfXAKgl8ZN35YYbIjJDpge1cvFXv37DVk/w7TcZaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715931143; c=relaxed/simple;
	bh=ot04Nvzd0Vq+MD1FMlv12uRW4fD+i2mai9y9SLaGERA=;
	h=To:Subject:From:Message-Id:Date; b=hb3l2m7acaFeUQNNzVScTkkZolbOSk6ei6JPOEzremWeZQgeGicIdMZ75MpbZLdKmHW+kgPzxeW7pkBqZd3VoAFasN1u+WJdm3bm+zakl8jxOOXzWWnJsRtpSM0wUBZwL2s10r+wg5WU5PMrd0vLYXEuJM8IXcFBfC7oLcsc5Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2XyAvEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2XyAvEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4296C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715931142;
	bh=ot04Nvzd0Vq+MD1FMlv12uRW4fD+i2mai9y9SLaGERA=;
	h=To:Subject:From:Date:From;
	b=A2XyAvEsc8f0+N75It1E9oukGEXor5kKStI+mEAnYq1WUYZ51cnT9bQOuAP27H5eR
	 +KLHnfz03L3HCGUihFMvsvfF/JKWovntTtBlkuHk4rO7kjPQUM6ZBoO7jprWl/NS90
	 k/eaHzhz1cFOOPptOs9fnOSNsEiRX0I4XBqRvcfHvwAEUY3vubrqjB/6A6wA+DtCh5
	 Kx57MEn2WHIMuB07RO8ZHjB5gUw64aIWQDYfFF99m+MN/n7bh4Cw/fTSd0DJGaOKIk
	 YBS8ATE6V7QZ7XviD8cYjx2qkfZf/jDBvwXn8ehXKP4Hop7xqS3/RPIL1rLVWash3K
	 JHC33RNT47N/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C311BC25B78
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171593114279.20378.14208438200534135816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7478f9a78b9869206110a93e43068d130599dcf7b0609377e8a28942a6effe16
Date: Fri, 17 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715931142
