Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108083CFF51
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681894; cv=none; b=gnF7SBLA1SMkCankYiUoNFIfMlwndDyWy0ktprjG2j002uUA6LrR5QNp0E83JurB7EzPZClUpagKm+lx3hawEEN3JM5r0l4CJQ2+0oxcqC793eYYJkWeD4MurBIe97bnWKcWnfj84CQpw4CpYVjBwjWUkjYLcYR2NhWefzX/e74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681894; c=relaxed/simple;
	bh=oT4HoYJ96JexD5WMxIQpoxTwSn0gNEukzohfB1CzRUo=;
	h=To:Subject:From:Message-Id:Date; b=ShxPubeVeXI5P2ErzRtcqLSb4jXkglUdEC4sBP6jGeupAS3nun7wzkOiJcBeUHxrv9rLslq4soe21OHTv5OpRzYJAEDyqshQLos9fQcn8fxknFGXEeWvNiijOsx+hj9KVtHTn0KmiHrYt9sXiGNqPdfnrUCur0HlJxSWtY+ID5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWZ/vx0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWZ/vx0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8648C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773681893;
	bh=oT4HoYJ96JexD5WMxIQpoxTwSn0gNEukzohfB1CzRUo=;
	h=To:Subject:From:Date:From;
	b=gWZ/vx0lCfkdnT+GF8URK0eF5q/SnbppxjOjv/v7AlOnNYE1JZyvMG2oy6dZzwOI0
	 iiT/uixJuyY9MDW1dl8LqaZ5iMsk7A7beFmRw/kxoRvb2lKRafIKx4ajdhIhE9EbYS
	 DWI8GS1AOHHqGFxcw6Fa9BczLgVw2XGqX1gZThc/x4gnXj+w1SYOnvuxq9v/y8PF29
	 1APVukrH3hMkHW2IA7kuZ0y1wwgz9YKP1DaVch/bkqQeye6L5yLNWA78QymQMktJXj
	 rdTVR+0ISwYeTWET5c4eGOhRQus1qnnu8QIvist25hghgE4fv9RW6i0twiw0YjS1An
	 xs3MUcS0x9x2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95720F53D78
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368189358.17869.8861685844720455438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e690facec3e00310914102dfc88dfc9923f1f7a867fa4b7c0fc513b268def4
Date: Mon, 16 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773681893
