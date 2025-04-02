Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52A338DE1
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743602993; cv=none; b=ludJM8n69fX2hxrVheflq2fYxuL4+BqSdoojmCM9ujAs6SXr4XknnGtzsHjeuny6akrlZybhLiRLd5EIgD1dA9JuNw7FvIP1+26yUfJU7zHHxFZxqUcuce8T1oL0Slmkzia94s08gfYGlNqBQiRlbH/tvLTmm8isemVHgYUSZ14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743602993; c=relaxed/simple;
	bh=JJfT0WtDY2+eCv7X3Y6biZTrFPBhYQpbKaQMB50aVrk=;
	h=To:Subject:From:Message-Id:Date; b=RiZcIlf3aLh6vfQNpPBqEYPSKeZSObIzWmJqPnWVtjn6tHfal2kWe0giYiZ8qnzviqqF2UomBPQ5EBjsZPmEPBj9DToXyv2GdC0fYA0yhk4XfNODjYGZrBTWM05fuc78/Idyr9S1sena4/lc7bFharmxzgCUI5vmeK1JiWBz6HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXWzVOSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXWzVOSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B2C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743602993;
	bh=JJfT0WtDY2+eCv7X3Y6biZTrFPBhYQpbKaQMB50aVrk=;
	h=To:Subject:From:Date:From;
	b=HXWzVOShHE7pyRAVI9+trmchHLBAgqSmt48NxiKkv6zGPKbK4I28g7OEzYwZKlw1a
	 rI7DAIasvo9hKv3y2fIaYXrCqhKV5kW16Apd1iQRsVF68JOkq/2C63j600W00UQ0S5
	 eKdkOtlV9DoH2yfuBoQV53aLYo/kevBHZHNQYbo5+++oSpgfCp7wnIEoVlHf7zkpBY
	 xZ/9tTwagdfddSdn7JXKjA/Pp5ApQ4cLtrL2SBWYWL0vRlk0LRKGsSg5TpHK8gwBpv
	 3BOzNPFHC+p/wa3unfSQWokh+B2b9jsRPw0oTGY4/3sVP/WLYApVun2kNfcXXwARVB
	 ytl4kekTGLTxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D4C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360299359.14465.10133928601950978253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a887d51acaa66a3391ef8e9ebcf79ba085700ab2375848570c76ec00ccfb0d1
Date: Wed, 02 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743602993
