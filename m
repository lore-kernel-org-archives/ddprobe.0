Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD211FE45B
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732724753; cv=none; b=nnzRH5NgvZgvaeawT5Rmknm0OxSfrNeF4SRhqYoqPnmMvcvONhrrIGiQLEYm890uvTcHkcxRykB2bxwdzk2QBzJrGiTBhFFSd80Xma9JJq94BAxjLcW7Esn5xSfz7WtIBaZufYyWYfz6ZKON3b7xz19yZBLA8ajR1MSe6JUmmyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732724753; c=relaxed/simple;
	bh=9qZW+SWge5nf07vpIjKBbLCBUO7zjg47/pViInxYBy0=;
	h=To:Subject:From:Message-Id:Date; b=I+FDrM9ZiujpOWrpizugN8ZSwd8HnOvBry6ilsqIW1kzkG+U73oZfHsTdlLDhOfad8pUq7Zi4dj1BwmgNNrK8BdHHo0FHgSzHrhiF2FJHC+qSpFnQGInHT98dG6qS0bTQ2QN+gKPx+XxS+/ilNulzUjxHcgXkl0uwJSmLiXC92E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUzrloSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUzrloSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56C4C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732724753;
	bh=9qZW+SWge5nf07vpIjKBbLCBUO7zjg47/pViInxYBy0=;
	h=To:Subject:From:Date:From;
	b=WUzrloSAJXnfxkLuBcAfkt7ei/cMlIay4sJT4zvX5U8rosKdxbUNSRkI2SA+KJXKH
	 oiIW5p3S2IVa1YXttjqygWQ61DdnaEqRqpTvwV43AxWWyOPy3lIHD+0CxgWxHIqJ7Y
	 918DdAJgSiu+H1SFXKx3wdEH55zOQ8bx/rbuaOhFn37Z9x5d5ayfDtreegV9v93BBo
	 QGI8s5r+KqkaEQOaSbpG7qAvbtb0pnjRJ1jIsb7r5eCjpG2wxDU9IDtep3fu16ZCWc
	 vXnak06l67tnQp00L0ICRMHAXHeaw+dD5Yxx1auWw4pkNnR0yBT5BAjnZ9LUwg3V28
	 hGavzGY+/T3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E200D6ACF2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272475363.29187.14229475601848208630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac7ad585da33433e7d5a017ee5c8b1dc9f966ce7bcfca1d62e36fcc0404ced0
Date: Wed, 27 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732724753
