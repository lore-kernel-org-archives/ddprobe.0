Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EF733262B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781765794; cv=none; b=uxW6ckel9MCLBpY0tS/u0Ijx3bkm8G5adsJ6EtZrg+ZJn+k+M3ATUVHwa2gaonK4EIYhnhv7hbCZ/QtsImIqqc4PWBdJY9VKExdBoW+qk/8a/+05tzoNc7gzeXm0j4XeO3dbE0ilhbAHr7JxlonOOmaejZymHyVKhOIDxMxvOUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781765794; c=relaxed/simple;
	bh=J0XXK5bZqchT/u5qM+JjR7VghkaCpYYfsGhyOhP4JVo=;
	h=To:Subject:From:Message-Id:Date; b=azbcJlrniDRGe2e+rI26aQa5dkjcC6I1bUvathmvcvuBwUDsG6mXFcZD3KLJYMnmJ03W5d6vMmRbdKcGRgFoejBv/MVuHAm7nwqalbRfjVCfS8fkOJOtsXSNldvtEQC3QPj+EynjWe9FMlDs4LSnAIKmV3GPgbpPx2S5LuSK8vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acwAvlmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acwAvlmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C26C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781765793;
	bh=J0XXK5bZqchT/u5qM+JjR7VghkaCpYYfsGhyOhP4JVo=;
	h=To:Subject:From:Date:From;
	b=acwAvlmPfjb7itA40nEPQkQ885lPTG7/737d4h8gkJavpBvgwrS5TAbMV9ADrdrqT
	 CTGYQWHVPRbGveoLpZ/poedEozRMFwYTOLA2rthzPsBGMiUif9WeXtyZ7nsYpx8LkP
	 HA2Yu9YHAYZcQ1FJfCLNvRsRC+vOXlSiPnks4nqoGgw419BhLtKWEFkVSWOCIBxhEF
	 vPhZgiRcKv7RY8MOf7CiYMIcLzCDnR90MuLg3wT2lGgDYNZ5h5yHPxNc8LaoGy0Y+3
	 v0Bf2giZGr4QZf/euUn6wsuericbBeH/l6VemA0HqtbbjMirMVFpYmaPbDNZH9QRLG
	 +7+KB2wfuGRkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2592CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178176579370.9499.7551278218506590701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30fedf9d87a5769d0c8fd52c12c71e5a46470549aadfde39062548aa902519b
Date: Thu, 18 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781765793
