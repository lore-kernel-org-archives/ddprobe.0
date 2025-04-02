Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639101E5B6B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743631794; cv=none; b=T/qTt0tusSfmk/wGYw17tjgk0NVHDcTJur3dluL/56qaz+zj78TPA5Nt7A1t9CXPy4bBXinPqlGgLLswtOihS0wNxUAlCTCpxUF5gKw8rwvgI3lN1iPEGzw/jQ0iy/kH+XVn/rbNV0bZ1GMoZXJLc8VRFYD+eY8OetadyvnUztY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743631794; c=relaxed/simple;
	bh=YKS/+gLfYnLwJTdbBMiJJZ8fa0mJnJ/wf3QNM0CkzfI=;
	h=To:Subject:From:Message-Id:Date; b=jkXeVZsYttuZW8ZCt52VbWfeZO6SOu2kRNKt5Gxd/IsSArFh+4WNxGB11DP1fRVGw1eGwMyXHS11Oy800oJncg9KBklxj0Br+6kRNc7YsB0ILztwxQi2LLch/a+SG08Gpcz7tRW0ZKhbDComvgvyYOvYf4RlY6BNwb4DiTzYUoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7UL03vi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7UL03vi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EB7C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743631793;
	bh=YKS/+gLfYnLwJTdbBMiJJZ8fa0mJnJ/wf3QNM0CkzfI=;
	h=To:Subject:From:Date:From;
	b=r7UL03viGnFI5EZkWW/ZTKo9LErED7CvVuXItNysh4LQfEGSY6BoqwtjOITO3K5qH
	 HHql40jwaXr32AUEWKDHbJ9DDpkr4++kpakoXR+SenVo/EVB/up79l7iqOCsgTAw/p
	 0yKLDrwTwwugIbRc4biy6aLHlm6//PO8UWzQRpriTRr2IkFBXl0VqjKl5BnywY+ViY
	 PsxU5uAuNTwM0asVQjaHoajpzvjSt5lU312wf0n8jYpQ96Up2oAD1jQzTpSHH89EK0
	 jpx8DmnpW6mM37IXJCdPsDwjMmS/o4SfVMne6lMozBo8cz3sj0LbpmDvXGiUqygWuM
	 jYCBnSXVsYETg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8CBC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363179361.12892.13342384016047103581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcab71b0d2ebef8f5a585688d05081f769b5ee0993880be45367ed2f4a2a3a4
Date: Wed, 02 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743631793
