Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015B54A0C
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771980894; cv=none; b=gHT7LmfaDRfnWF72uS3fB34leVxir/A8wiDnTbHkTT1vzVdPU3HhRJd/KRZNcFHcUaKjVp3oIAbVrmHc3lpBEy6OSK9FpKHi/xuQ6vaWyK2aP/dt8StYMsazf+DVEAs8wDybMVvNcNW4kZYF8TL9xevEhMTEUlNWV9iBY6CqCj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771980894; c=relaxed/simple;
	bh=0HljXbIBb5RKzPKLZ9yOX5KlwBQsVD8rzJYeHesmJow=;
	h=To:Subject:From:Message-Id:Date; b=GSsIT6X4Xr3QPYEDFQUFvjLiZ8Mzab/QYDraSDGxFrKSpdgFD9E5wpSYZ3F7kOR461mk1uKsSu79T9WRIdAApl/mRB/aXTHzHOeZv/5t9BaCHLd3313GmFT6hXGW+cyESpdO0G8m5VbOPR70c3CebD9NWq7UKW3isyvmUo62LLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+Let2Yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+Let2Yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43ABC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771980893;
	bh=0HljXbIBb5RKzPKLZ9yOX5KlwBQsVD8rzJYeHesmJow=;
	h=To:Subject:From:Date:From;
	b=R+Let2YhL8tN4vW6TUmTP77kA55P0ryQgc+T9uNC+ZkQoaEuXsFtXB/5UaSyN0wTw
	 yF/2zXrXzKNLcmtyF93HMeWnqbvY7wkB16XwDErKdLlPVSDuK/SjqskT4AB5rZYKrx
	 S8ZiIWR+WR10++MIpazL2CXnoeRDs1c2MOAsXVXv04z07dTc6r/2Y0VN8rJqyaaVJR
	 EdAAq9u5e28qFoD/JRz7FnXg+34cP/fd7OLPG1Qnp2Xi+125h2qGRXqXo1pTKfSV09
	 NflIQeYM2fSIzRYXQX4oA/DAyS89gX/rUcijch2aQZDt3cHoQWps4pyJXS9+4kw+8s
	 GZ8x6ir63fL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93432F55436
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198089358.22700.12719461240535729834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c0eaf192c38933fb54ae657750f847cf98b2ad1a71e3cf6fbb42b7053cdc58
Date: Wed, 25 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771980893
