Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294CB25F994
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778307454; cv=none; b=pd+rqVVPnCkfCe1+vBy7J27dQd1v0i8E7i1pENWVp8x+rbN5tfLoDKK9tOCSiu2GrgD3jeHiUe6swstGzkVXhHxcSQScpPpTCg7k80yCKncmh4kv0JJzH4wJVlC61Hck5heepSsQikpCLgB5qlVehhT0gga2daGh2LryvXizUuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778307454; c=relaxed/simple;
	bh=DiS+yeuL9B/T0VHhoYDRic0dSkbHFHiHEgUuD8NBVdI=;
	h=To:Subject:From:Message-Id:Date; b=FHd7Vfu79igvLCtSweG5VjghjbRKcl38S0SmkyOO8nuso954wXRqx5pjzIGOHJWdHbGDWIhwvUdULWK7Cs+FqK5zRY4KpzyFJzhly0Eth89KIf1bOtlFKrjCevBVWq8AHQ7zlxUjRYRO8x5k47MbkPudRruMgEUEVi15bq1KmXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qP1fJ7PH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qP1fJ7PH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C064DC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778307453;
	bh=DiS+yeuL9B/T0VHhoYDRic0dSkbHFHiHEgUuD8NBVdI=;
	h=To:Subject:From:Date:From;
	b=qP1fJ7PHjLk79KWpKnZvRks3lZSUhtIw9+BaLYKqjVOFnvJdtq49ZfYB9uI/gY7xv
	 dgyHV/LjXykNSM0DD1LmBnpngdlcjdAkdJeekFZdkjpnM8WG93WAWZOuvQ4bKSXR38
	 0N7XmN9rJg+aVoz4sgmwIbtJhuEFLluzWV4LaUJEtyUppyJ+d430B3QwApw/1Z63Gh
	 Okz2xC4H5k/3snmlozR7VuWXKI7hFawpUYHINk2Xj0FMn05c3Wo2FdsUkSZ7A2hgli
	 mZowVgWz/4n+y5h9cN+m75Jh+U/A/F/b+TLbsOyOnqmSEG9OVjv5Ci0HaCChOIdLxh
	 sPHIynqbVeong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05EFCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830745369.21278.15810608628985033101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666dd6e4fd78ebeeb3170b6d19a45bfac23b5ae729c376c371fda74c7ded6cae
Date: Sat, 09 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778307453
