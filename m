Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA8B37FF75
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788225034; cv=none; b=ZkmjUTsdUX4I5zWFBy8Lf7yxaGN279grofpdOhLqEn+30CO4D1f86u4pKJSLKZLpSB3jx1XQet1TNOndRm9utCmwwrKG9PCeenZiyMhDcXwWp1MRmxE/Qy9wYqHPFNKf2sKPHR5HFDFBQSoLdeqIDur6kKXOUUL1Ux6WnIBuwP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788225034; c=relaxed/simple;
	bh=Vfo0uQTZXrNIShoC2VyfaBsYbWDQxWJuX2KaTleTUi4=;
	h=To:Subject:From:Message-Id:Date; b=Cg4MhPe+roGWAvVU+Aw77+N83m5bEr5zxMf6rgUn5p00F6FrzhwPl26u93JnWnuIY0o/TC9Ir3JE4wAvGKIRGViUX0CyH0vKSjTW2bl1X9pZq4hcW1BQyCABy2//UZ+qltBFcypftVkZAB4KmFGcJSQpChDUhuzvTyJxYLh/zzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3yA6hsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3yA6hsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF683C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788225033;
	bh=Vfo0uQTZXrNIShoC2VyfaBsYbWDQxWJuX2KaTleTUi4=;
	h=To:Subject:From:Date:From;
	b=F3yA6hsh25UYPE5qO1pHCWzm6uBhOAICjviLaCNellRiL9ASQmnlB33N0lgJXVm+z
	 Oa2/2xTUdN4OyTWZaBE5lpKVqOXFzsKPaUi6/gFXqgLY1OxZDp6glHzc4PED8b9I/j
	 QmUoXj4uCO52tMFocLt1kdSP8eY/7A4KNT1Hjb1JsxkbTWqkptjbl9E0ltLEZk2Mmd
	 noPD4uf5BjKd6rPqv1uWyD7inMRAtapKs5aIdXpwczcsB7Ppy49dVLMY/qgLFuNTPa
	 jKkEvNwam0HMJP6GJNTPSgRPlQvUzhudKqm3MXCnr8lGWdV//zPNw3lcup7ol4jc2c
	 onoTlgLcojUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB20DC624CE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822503369.24350.9889721174707921559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2212fa876640587a45133a19e37a25810285377abc92e8a4bf45a2884f3549
Date: Tue, 01 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788225033
