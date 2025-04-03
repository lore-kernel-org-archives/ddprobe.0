Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C04226AFB
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743644394; cv=none; b=KqmDPxclMsM4JS3LzDFy4CGLGT0DBxz+IqdBM08kJLyViUvadzy0SOaniw3TNwkw0NoVfVPOw5P71JAt7OPvzCcEaUE99/brBzOHSBI9UOfySucgxTEJnZxa+jR1dwMxzyXzPwFw5qeJbm6dV0zAZ/jILvXeAuGPcpiGWp/dtog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743644394; c=relaxed/simple;
	bh=34lH1VD8s5+3vfwF42L86SfGz15/F+06aZcMA0sZAaM=;
	h=To:Subject:From:Message-Id:Date; b=V2oCvHdlGG99J35AY5vJ7rH1M9u/qsWs2jyXEE16qHDxTwgeB2CWCQWja0jg6yBc9H2FlQhdWEuXHC9jyES5ZGTQGJPJbYy77YB5QK6uo9hvZsVOwzXNfJ406QDuWK0y5hh98irW1s3HLK9KM1G+VyVEle8aj0Nqd5VRNxWmxRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj6U9NC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj6U9NC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B358DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743644393;
	bh=34lH1VD8s5+3vfwF42L86SfGz15/F+06aZcMA0sZAaM=;
	h=To:Subject:From:Date:From;
	b=Aj6U9NC5DALc3imXaoDH/KnlAD9967r5C9/o9EdUxri5Ijz3g4xCxDFU8wJsGa5hK
	 H3FSJrDUnpt7G2CImT30qL/k1eRS8Tu6Jmx42d5b2cKGLvqKMrV4oVnmFIdFO1+ZoC
	 aP8nU2niY7VZO7cQoqvmmArho8bnsdi8IweUHQ6XIVpVp+0wtDoKmbvF5xxhC19vr8
	 OCrZOAcjsZiLXrMcVJMT259mgZnXUIBlQ4bhEeZqxjCBQPiNpAhWlwKtT3zArhCtyU
	 Pnr7h1GV+hIiTfgcom5FYipw54WfOAUWAYN01Ppqa7apxzbqzsQ0ijQsvwOyRVhG6O
	 uAGWCDK2bbIZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5F5C36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364439362.7131.4957199304514464484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613c4ee4fb15422419429128796f29c0da7adeff2db815818dde5385384ce32b
Date: Thu, 03 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743644393
