Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBE6430BB0
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772340894; cv=none; b=Try5PmTB3SEC9baFI/9ATGFqPgdtidGyOGqCaQrcCGqf6eAGrLGJM1Utx9duNpBDwLmoVKez+3R6ueKNo8ptdi2EN8oZ3757ts4hbAZDwO24ucJJZNYAKJuKN9qcLlO3bW0+v0u+EdxJhcOt9JoWjIzHClEqIQiYtU8co51Alp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772340894; c=relaxed/simple;
	bh=l4j2NWSF4eg/FD2Dl2VOOH13DZrSDsPljIkuUw/J9ig=;
	h=To:Subject:From:Message-Id:Date; b=kTonVBiLfk+t0qZjezDfuu9/1UQtcjXYQbY6Zek7VmzpPsznfVEwom/rPOTTjUE5UPNYn2BrHb7hfg6AScpr4NjHwiDLsCecT+bbKy7UfE6qjZO+feFwXM3Ze6VCu14DmqqgcDW5JXsqQoi95aWj2Kr+zM+BTaLmZhWaI5nj1i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M60xHnD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M60xHnD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AD4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772340893;
	bh=l4j2NWSF4eg/FD2Dl2VOOH13DZrSDsPljIkuUw/J9ig=;
	h=To:Subject:From:Date:From;
	b=M60xHnD0jzYuUvjaIom2oIaAMDhbI2lr6fogI0KNIuJtyRN8Bd5+e5PGx1t5Q0gMg
	 EuPuBrPwry4KYLwwTIGj3INkQ57bwnIRp9GG3EzQM6BVT3tN527MuADC9wRCT0YY9d
	 rU9ztJnuRjT/Sql+MkZNA32d5XLHq5HYUyehIHch/fjTSkCkk76HUV6DROScXF47IN
	 PPsyx978jGbdnYvWH6c122ah/sU022qrZvhKUgYX3By+QcSTrun8GdphVjd8T5BiZl
	 VTqrC8UhkBhzClW6DjJ1DC8opWaHz9f163D8VFkGexW5ukbvYNwPONzUUPQoSDi/kY
	 PBabdejdqpWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30CFFD0053
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234089364.20974.15956501669534092447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf027e822bc6bca7b848de17dbecf75a6a3e20d4cb6a4367b2359e03b043ba72
Date: Sun, 01 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772340893
