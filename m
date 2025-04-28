Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CB17083A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745869795; cv=none; b=ra1lsspLdKplri98uVm4i35+8NNpEby2qlc8OXs3SH0+VqzQ2fCZqmNKoC4eZIqzJ9ntA+zbHBsQH+0CON3pO2eG3FHs5keq5b58s0rvHp3rHxAODRhm1lIqqIIZ10vdFfZ3LIJx5VVjrzW0hrtGIHIKibmnTF57ChvEQphzi+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745869795; c=relaxed/simple;
	bh=ckJxyM+zEWHSomHFqT/JAVV1ZbBcGPm09uXOLhkHB3s=;
	h=To:Subject:From:Message-Id:Date; b=oJj4P0fwNykD8v5ZwTIQH5DQWZPSNTGgUSAFq34hvsG1hUTtuLkKlbJmO55WpHBcj3OrwDqSlMERt68Be0UpyXSZH3A0OV8ohQSUpmi0JqtlD29TwHmyRIhbjDI33FR+88uZc7IlF16AAAuwvAydAreE9DmfGn9UVkf/mL50hY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJNF+Bnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJNF+Bnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE70C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745869793;
	bh=ckJxyM+zEWHSomHFqT/JAVV1ZbBcGPm09uXOLhkHB3s=;
	h=To:Subject:From:Date:From;
	b=kJNF+BntTWszVbOtIlJWOUxImpzgnE0ixNLQv+O2cYpIawGglexSk4NDQ2MM1eLsB
	 k6NSBHPcZyj3yT3IfT3trXtZBDUUdcK4wEoBFn8mC2fCK3Zfdvj3/+xKyhzQoqUeBr
	 tGePKQhhCzayPAC4GNNYYQHD8IgnUU1VOwI9zFKouhJh2/udIRrlNzYQfvK59K5G07
	 9BEWLB6B85yra/qRtOKpyyOhr/P4YuIUJFUn3fFTzHFRI/a+kOxgIXtVZe0ifUXGhH
	 qN6Hd6h9/Nx54Q4qXY+ka3Xfie5PCDKblviLqh2JMC9ojfFPoMqHu014tSU3QUNnTY
	 6e5zwWwlU4NZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A3C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586979357.31649.12285759275557857542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6ef39094c9a404e4bda8f4d0d0294a2311635a05062b1afe0fd9344f9b055b
Date: Mon, 28 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745869793
