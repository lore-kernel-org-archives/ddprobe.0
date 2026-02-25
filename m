Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220BC24DCF6
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772051694; cv=none; b=KimH9g8Gu0v7d7ghmtACOlRcBJ1UAPM6Yu6hl8CbjLg8pnVT7UgoXuGnoc2y3WANHvWlxqP4YZfQRgAWme3Pr1FuIKl93YXe0400EQL7HchjUg/RNKd43iqJm8mB8B7X66myWEkqbBjW3eIoaqAtg4AD7wj7O6yV4eZu2DCxuWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772051694; c=relaxed/simple;
	bh=MLU7dppW48KWr8+tUivF4+NfobmnlbI7Jvq/XigtVCE=;
	h=To:Subject:From:Message-Id:Date; b=VxbWcqSsTYf4fWk0D5n9aGSNkB8OP5FgeCHpIU3Sex4Tmo7T4dOA7mpjqqnALsTuK+y3Rdl+ikpNNqoKPJaRaoLLq784+XjrB0+BIGnLmV5vLCUNj8Jsdx1WkCzbEPTOl4HFTAZzC9RNUul+9mwqhlxfbwUj42BXf/3spALAYEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGn9pybg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGn9pybg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78B3C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772051693;
	bh=MLU7dppW48KWr8+tUivF4+NfobmnlbI7Jvq/XigtVCE=;
	h=To:Subject:From:Date:From;
	b=kGn9pybgmBYyL9GULinsluKXW/RQWfoWsvEawE6tsuVzZ+B4cLEsl6NmsLjoSkHiH
	 ArsL31IGhKqE/1pfkFg0Cs+WeVBNviMkaacmHS3sm74zbpzTHcXvXrUGmgqtYQfKQi
	 /HEwjpGPrwXbpjyLIxlrCwnOJWvK7r04xKJEoy7wRVAoGSFa5/8SiAnJ+IvlagQ+pR
	 R5uvT9UQrWSNKLKgzYzc9Gt1EOIPwKobWdEh2/gI6LHL+sewS26q+vFIYeQI4fDLU3
	 Pvv5v1IwnjERxXIDiFdQeSUuwSi+IijApUBEw00Pt9GO3Fdc3f9e6Ok4Q5VFcDz1Zl
	 vbp1eUMcfjyfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F57FD45EC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205169365.14531.546637085510690872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1730054795d3fe8a3b4684a45c4c9fcd6b25bb80117e34969189fbc66eb7d3
Date: Wed, 25 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772051693
