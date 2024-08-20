Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D20623A9
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724132754; cv=none; b=DP3aJcJByN7Y8cAQ3keNhh0mWCirq16hTXS/Ia44D3B6nWZ+EyJUGtp5yWVrnGT//2hVV9JCwm687zOgBJhUh3hBJ1wrSmN9mufQV5UFU+TDQoM+PohkCWtlDgFt2ihlPpk3kzdi7F2Xb10ewBYRnPYzCH1Mzta0CkRvHwIqQ3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724132754; c=relaxed/simple;
	bh=tbAK0d94CRqCbvQOzsqBPAF8NJ1I4WOUyEaUidKgRn4=;
	h=To:Subject:From:Message-Id:Date; b=ZQX5RPLyjzTfer+PLoFHlUGbU+aAOoi9QVDq4ede0Cjc9YNTCBmn+20Ed3gcBCLKakdd4WXJINjSfty5jse0qzj97528sM0JwoSMqP3x3OqWRsguqP+iAD1EqbLWHPjp/n4vVEKjPLV8ekLKDSDHN9NKxhhjXhJh0dWkHtEbYBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e27rnk+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e27rnk+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35F9C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724132753;
	bh=tbAK0d94CRqCbvQOzsqBPAF8NJ1I4WOUyEaUidKgRn4=;
	h=To:Subject:From:Date:From;
	b=e27rnk+0x0ZVbXvVLeRvTbcrJkDiXtYCek/DkWoz916eiqkKYyiH2KQSosFyqyYc8
	 ov429Rb3IVNBiiRR9VORqGy/K15e5VIKJUlzR9OFcVo6awmANojFlcfLNrSu1OWEG9
	 W+DrcQoKQqB2UVoOCiVYebUnSffQbZZmqkUDGO1U62jg54q58pd4GObaOJp1GbJv+D
	 jQduh7xW5ifKxfjogHzWqnPzyt/vFjs4LAVMbXx9a/+mbz2JeiuamM5Ik1vnHN8Y8g
	 TwMj3JyV399JudAA8MktrnHBiu33H0UJoG4ya+b9jJ5tjDaN0wh0ygOh0cyj1NF7Jl
	 VTxYlqRL+kljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A27DC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172413275360.8099.4229331673472084320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab322c149444ed1242c12fcb291e2d7153c35365de0be1c8f3282ba56b787b1
Date: Tue, 20 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724132753
