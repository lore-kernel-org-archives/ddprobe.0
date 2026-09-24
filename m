Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE5A48F82A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790261434; cv=none; b=FGxnJ2x+07wK3C+eCMJeNByi3+LfRP25h1cHzyP18amm1MONLdLvxWWHG4B39BzQAdCNmF6eyLIbXvTiArrt5l16HGHKuh41sQjsQ+uHzalV8OYQ+kTMoHJjUdRfdULMLRsWD4JNpBW5QPetv7hGkeOYB0FQxZ9UMiHMDAkT6mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790261434; c=relaxed/simple;
	bh=wfXaXFmlWAASJBsQvptHMxv+E9R0YeqP/zjPpSvl0do=;
	h=To:Subject:From:Message-Id:Date; b=d6W9nKlVBKUAD2DUfUWhIbjV45hiIfaMYfBzxqMDYF5OytfuH4yKWy0FMVFAB0d5ZjGnPUMZt8uLl2mEvDTYGu/si7Z9W7qgR6vWuC2zCxzZ1ynu2/W0894PNpEQ1jXRAm4UMfPk/1uCVdYQwh/8sJOjo/6GaOfbCmP8T7gW+T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBza28eQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBza28eQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC73BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790261433;
	bh=wfXaXFmlWAASJBsQvptHMxv+E9R0YeqP/zjPpSvl0do=;
	h=To:Subject:From:Date:From;
	b=PBza28eQR9PmsERCGHKgLerXsFG9L7hy4zCmc9GhHzQXN29EAkEVZe0rfCGMqOXi4
	 Rb9nnIqDMEYdjCy/tFytlXfhkDRjC+9TIrSOcIofyWQpewlT+YHLeIg34peMYnEdws
	 +RZwI14flzWhKQULgnQyhjpaioV1xx8I1RqrBlwG6xdh7ApdmES9JbvFJ1GjJ6SEdo
	 2gYZ6FairLhqt4Vd+YDjstOk3CdaM8j75GbO0E64KPGbabi/k8xtxkLglu95mI2a5U
	 S4zge0rw3od7Z4TLD3xxvZ1nIuiHUXSorLcZVyR05Ol/zWJYiK7x3+vsBOMQGChTnm
	 S1Lrg1KM8XnOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CAAC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026143373.8890.584642010151375601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94bad0a5793d3c3ac71726610d43d079a000101369ed0af902839d70381d39d
Date: Thu, 24 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790261433
