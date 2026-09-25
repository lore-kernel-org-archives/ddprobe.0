Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D81B346AC0
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790323234; cv=none; b=V6YPPC2FWxxzIsqjCvOhVzBp0gNcFAq4EdHpUfZyNoCThT6VcC6DmspobFE/fQiTlovRbp6kNABISPwFruoMBvQ1mb65VPDFCbbnociNhHGo/wfzJXtFWFeCw6mhkIp0KXL7EZxz9MBFjHjZSzjCZ3svJmzawijYa/3JGOeV9fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790323234; c=relaxed/simple;
	bh=FStOKwLWE2UcBH2ekvtK7e7piGzMz7ZvVdDuiRas6GQ=;
	h=To:Subject:From:Message-Id:Date; b=oxCfEccQLDy2WPVbkLqXPFouYAIYycAXbwJwKG93H4AVK0Xmdh6ZAt3S8JEp7QYAX3X/t6Fn+MM55JLslYZnwasOpGsObAtnU5/jJ8nu7KDulcMHjaqzPkm6Eihp76jchUINGAHFsSC6XYp9ymrFyFOue78EFvk5iw0rxNoObuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIXmUpDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIXmUpDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF75C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790323233;
	bh=FStOKwLWE2UcBH2ekvtK7e7piGzMz7ZvVdDuiRas6GQ=;
	h=To:Subject:From:Date:From;
	b=bIXmUpDjAq84Uz7yT7aGVhmXgz+zj3nO3Fbm/4jn0qihdjfzgOrBQMThstD81Mk2M
	 so3zr+y6NXsL9xeN4/HcSpmMfW6H/z4tIDPWf4ouR28Kp7F0LWcSjucSAYSi9Ge4WV
	 NU2DC1kskO+9UsIe0D7gU3hNWMp+cJzesSqJXdZKo7U3bJkoqO6d3EuBqlASG8gHSH
	 t0RSzUfIbhCLsahYq1GsSt3D7Of29Fp00BHa2WD8nD30vGrJ3dFBOMRBu2nkYb2wbg
	 D/GuWEx2WR049n+gMBkbA+SQaaN/X8ChkSZ3vloWK+vvQlzzD+qccGHDbh7+Y+YhaS
	 W21E47F4518WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA1C9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032323369.15502.9953685599054296148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f231150c4c18e14d520cca2ffd1e692145f054c2a6f8b74a117845e50639135a
Date: Fri, 25 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790323233
