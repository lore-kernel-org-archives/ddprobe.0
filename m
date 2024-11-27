Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F824322E
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732673754; cv=none; b=V9h9CQpvBHtFVmsDCSxVtHrDJR8pDeEXjXXdbotXdars1spCSWVy/cvnwiAeeo+h6cHydu3gj/QaqfZln160dttEYAMzwmArOlaN4kWuufhR/Z7PD6RKw6nIg3W4nLWKMtFFgmo3yPw+dO7UzUVUfGc6ZTBUoClIYH0e7TKrcWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732673754; c=relaxed/simple;
	bh=Zrrw134OKRqdkjE5Ry+DIWHN8R3s87frv5q6UMFrjUU=;
	h=To:Subject:From:Message-Id:Date; b=Sv0z4DeUDGre+aJ+Ef53h/6DUgCuvOXI+aGAAmEerOCDCoOJLm0tnHD03UmxN9VByPTUItLml5gkmY4XOiXvvK23n6G1cmf9HIT57gn3EzfiWrmVW/rRfJ5/daryRRnWyYeGHxCVl8r4hjUJ2SugRNyulZnPs4BFxdFYgqabyDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYBT0U9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYBT0U9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF01AC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732673753;
	bh=Zrrw134OKRqdkjE5Ry+DIWHN8R3s87frv5q6UMFrjUU=;
	h=To:Subject:From:Date:From;
	b=kYBT0U9Jdww/gJWK6sFS2FyoD/sFfCuEMPdz88GAky3KImMj1tsCik8iVL47OWZ1u
	 AlCY3OkNEF1M8Wik9Be/f2ZITsYXIfATJnQGqQTb/LRvBVWJBX1uExAlyOXMi72Tye
	 /xTyRJGKhfF0EmghR6EMWB8iVEDIYYvRvDppOL4/Q+XVWc32bhHAuL0mezo3PJioOw
	 f5Ogz5dg51JOtZTD0usXIMZQorFzTwzC+JuOQj/hSZ0dTYpdr+lZ5LDhnak4uPenGn
	 AxjmMDQBDiNwJry2Jk1J6qqs2BSkx+mIwbtrF9gVHW0BPFXlZ6vH3prA0bKUSwdEve
	 p/DrDrkmlcIYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976E9D66BAC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267375359.9681.9725672742220521173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2008e003d41845019d4c70a4454592d986d3446d522ad4c72a2618b43b1976aa
Date: Wed, 27 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732673753
