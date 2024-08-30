Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDA9567F
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724988354; cv=none; b=c0rFYK2cjKlkHc5VFKmJT6l0u9bno7liGn1LEYXMJuaBbrQXWI9hmFCC3ZlQG86HnVawI4EbNPChL8V5j5ZjCzPHfQk8a7fS2aJFy8HzerCKVcNZCNnH1h13vKVLE3NPSkmlwykhDG0ztBDze6Rp6xEjgHcv6CgAYVDc4PDvOis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724988354; c=relaxed/simple;
	bh=tHyNCVhx79/59CLxqDs4Q9KBmlzBG/QHEiG+vat3EMg=;
	h=To:Subject:From:Message-Id:Date; b=DRNoFqiIDPOc7rjBlxfzRVrl2oZgJ/UNSI9pQ5mfX1md0nCwBhiyl9K1MTAyJKAWT/Hqu48deLnAbb5TAaI0qv/Lb3LLlZBPe71lJha7vxZqdhsHFgjk40mQmNHQWBqSgTmX9mbs3h9QDLAjkmmGAIsEoVlAn5vDCnjsDB+AIlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfUnd8hm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfUnd8hm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA870C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724988353;
	bh=tHyNCVhx79/59CLxqDs4Q9KBmlzBG/QHEiG+vat3EMg=;
	h=To:Subject:From:Date:From;
	b=XfUnd8hmPyV1J/yzczc9sCeWt+yBocaEb4t5oBhi4iFBIMuWCGkabrRg5CSZEKWuS
	 oUq7JjCl1gwzT1+HKAuhgLLyw7rbtyeIqjtshZOGONU5ODPUOYl1OZ9f5UYV7QCHOi
	 4ElkF4ptEt9+4TgL93OcG3C0IcjViEA1G11OdWpnkQydeEY2WOGEOx7ebxOlIt5JOM
	 Z+xYGPUESwxZPRMqhHq8uNKE8WjvZKYRXxvH91mwYAlr32zwiTJ+cg/KRtUnQP17o/
	 7/z9SWvCI+i79zevu6UVKI7c1ULiBerGTsEpjM6pJ9aTofpBnQpczLpt+zqEXl5mId
	 UK9nhyvUHO3aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99582CA0ED4
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498835361.24272.2598954309776046063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9501393ea609033cb6ce8bcf4f2ac27871e6acf18456f0cc9613ed12c70f080
Date: Fri, 30 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724988353
