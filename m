Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249F24CCDF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788238234; cv=none; b=CRjAWGmP4orCH7AMrC8cJV6PWpZqqBrxGEZQxX3MS3xYE7aczpuGUs9fD0d1HRX6A+CRj30Kn/m3F4+CpiKoYLLQAUi3xtawOunq2gdmbyHV506mhR+kKdplKWUXVTf2cGhFggfsorhyFHDH2ZiJ2aNaf/8nXaPgJes6ndtPq8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788238234; c=relaxed/simple;
	bh=NwYQ9/ptBJ41jji2KXj6QJS32Mb/G6js5hgZWqkhmfc=;
	h=To:Subject:From:Message-Id:Date; b=uybZOupmTmNowTjXpZOwzy57twkmbcG1dWxgIrSDpKGepyQCINxF9sxLt0cu0AROwA1/I10lpMcOf73Lwlm2+R6XPtSq4KZtxThshjwhTjh+4oLvkyqPmWSXbmp4Eyn6exajw/Zypwz8Bqqh/mn0LEuQDsXePc7LLKPGoOYCHOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRQsJsyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRQsJsyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD696C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788238233;
	bh=NwYQ9/ptBJ41jji2KXj6QJS32Mb/G6js5hgZWqkhmfc=;
	h=To:Subject:From:Date:From;
	b=IRQsJsyBfFWkl+ZerW2QoeTbGgibNsT2fR6cGctkW0lM1lhrM6Nuc3msmiWjJ/xLh
	 cKk8PKT1xFyYjgpQ56TqUQ/+QzSWyx/tmfyu8q+KJcuT+o8Po3yg3CyheJAhtzC80j
	 6r4HrGeWGwn5TId9icM9o5okull9+29r0QhT4eUDuDhaDKf4Y/xr19yHKsgfikI5qA
	 46U78n8KGbnbvGxAHfA5wtOI+J/6GMYa8PZjz0V/fCM95ztGQ+1sfhNkjQVlHpf1sg
	 Rd2g/T1t6+86Awrl4RehgW7N5aaYYXCNAMAG7wYYbhe8S9fyOTTZDLKn2GryhtwUOn
	 2HnYp6ef/cN8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA278C61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823823368.16872.9569502990277942014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082971ad5185b3aaa8ba7ad649ec0b6a6303cf423ec661a075e46fd4c14ac361
Date: Tue, 01 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788238233
