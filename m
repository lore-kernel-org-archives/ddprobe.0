Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B343CCA02
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772548494; cv=none; b=IoUwXv35nw8UGGeNvBfhPkYF6+N5JalSh+joxB/Ix213C0+bkmb6+i0yQS9xsgFExDM3f+odM/YD1lgh9e0QS9sy7QfnROXqqHc9huZowDG0waNrgNK9PGL4Ald3AjO+6XcjBE1P07/Ff42ZExom1XKAkAsPmJkQ+p8p8Borbjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772548494; c=relaxed/simple;
	bh=Iz5+G/9OBvnQ49dKebQQWio7m1Ca7j7U5bAVjZY5XaI=;
	h=To:Subject:From:Message-Id:Date; b=FQ3I191H6IUjDSgGlkCjGLzwedAgpnbalzT1kcWRA3ENoIFZCv//BSyBVO9AY9Ro6SvBUCGlBHVVc5vXWiZ260OyIB4t1AZ1uUukg7WCE3r4xQ49X1kqBu2jWkBNdPevgdJwDmf0bTLgEzdoHTe9angB7P04YPv8WxbAZbfu1YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gocAqh1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gocAqh1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07E2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772548493;
	bh=Iz5+G/9OBvnQ49dKebQQWio7m1Ca7j7U5bAVjZY5XaI=;
	h=To:Subject:From:Date:From;
	b=gocAqh1BBlqpOKLocZ2d76WqO7a+iJNDwgzqocgUtRsICM7x7tOgyJEJn+hky4no3
	 dUJq/sKdhbz0vcUyUaxLSSXfXgy/TsL5igU6eT0v+VGafxyBHyi29VGOpN31ewULuS
	 xyDushC2cX5E75yOnbPxzxitEQVRD/IenzGYZIdlW7u5Q7yW4EbsL1XMiWNusHxUOe
	 gQX1u58aCQJmOlOJkVYp0uFf3x88AhV204BjVGzTzg9uZT0Xnie+3FONKl+OE1HaAJ
	 T9zg2y6quKNEHiZAkqJnXvTwCar8yOBE39pSLWMUihbwWdTMDFM8OmHMxLKRC7IGm2
	 xtb00k/KxzPQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E37EC145E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254849366.21752.13179961953335248144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf595bcceae3d75441cf043f2a37d38b4fdc2219582f23caa2761ca2724fd5dd
Date: Tue, 03 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772548493
