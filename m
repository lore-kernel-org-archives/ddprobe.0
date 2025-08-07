Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A009155A4D
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754541594; cv=none; b=PswlC1UohxdtvZTmSYfsTgiS1A+jgHt8YBPdg+2qUrlf3q/xciNjBelzV413eE6JHVWj68z21wojy4ZfyYbrrRZkVCKyYZbXh/BvpFo/7Q0KGDqx1/PaBtz+8G9wmqPBwtDmerSC9Sa0YcQTKj4TrYJE8/IL5AtTbnkcW4QutnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754541594; c=relaxed/simple;
	bh=PzVP8ectLzuc8+Ik1OB5nD8oOfz3k6sz+UG91FvhnfQ=;
	h=To:Subject:From:Message-Id:Date; b=b0jMPIAEXs7CNx3vqL6kp3DMnIlocixd+HafCK88bErBmJXG9dCVnwfOSbhKpi6zdKJ0LsS+t7bAqVOuLsqBfvrzLWYytPdYa27Xy5y0dXCkckR+G+TBBFRhsoMxXc97fm16k1MNAVVTGdmDYTBKXjhn1nds+rXP7I3meq5lK4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p13vs/yA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p13vs/yA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754541593;
	bh=PzVP8ectLzuc8+Ik1OB5nD8oOfz3k6sz+UG91FvhnfQ=;
	h=To:Subject:From:Date:From;
	b=p13vs/yASSFsyibVhKTfzcbK/mJ0CYFa9ImrhQ8W2ABxrlCXGVHhHpn8YUzGcAkb0
	 m3dkAF//OVeSr4Dxz6nC+cxEyE5mO0j4yjwIsNO2ylIOa4eSJnTI9aQexlwNozKFhv
	 hjqd+8SjlPG0RzgFd5CloV3Zuce6tviDHa2AdHkhNWJu+GjNaml2wwZNk5hGzm5gnT
	 4VYsWMCI9N3oRvw25bud0tmARI5usg3EktXKDfbog2tQGy6BMGa5EMVQA3iZZeGLp5
	 IATnodCvjTyRjL5a+p2K6dPBEctZs1J7FP1dJYf4M8ssbimRz+GZA4Wwg9YLpiNSS1
	 6ILL0JaFib1iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76AC87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454159357.10732.10812769178398901591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a88c8e1c55060527f520682ddc522e0ae493c9cacd7965bcb94e2378c9f490
Date: Thu, 07 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754541593
