Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034D34A3C
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733665554; cv=none; b=dshZkIz2vIkTODfKp18eDQmDP3vOEy5SDdLsDh1djc+Z5w+qxEXndtP0uyIb0yDGNO5lEC9QY8jsxG8JTIUVDG7XgwNhaZIdfw65iyneSiNy88eZWEDBsUO92wsAwQ70p+8EX1lawtXFGD3cEjQCmbeZgruRY+t6Qbk8jxTKLYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733665554; c=relaxed/simple;
	bh=VzxO6IBuSls85MeinAoFWPsPM3wleB47Tn9btxHVGi4=;
	h=To:Subject:From:Message-Id:Date; b=R2VD1p30LM4n02QYI/bzcDO3ICztNhoOA8gpnCIvDvSD0WH6YdkeADEpsoEMigvaNtJ+2LHf8YKNJdIihYPuYnlHPqnmPpZD9xo6g0yJnEf16ub7Ej4KRHFjXUIZeuONE7VojPW76RRV8VZm+61l5OmzaoQp/NnJJ4A/jEhTWEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2oRNEeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2oRNEeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2A0C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733665553;
	bh=VzxO6IBuSls85MeinAoFWPsPM3wleB47Tn9btxHVGi4=;
	h=To:Subject:From:Date:From;
	b=s2oRNEeIROupz1qY5ZDxaQvzZ9A0TdGWNpoTvSvDoIEEcp4ZjCLbUG9JI2v6nKPvQ
	 HBBph3HWAwIZ72QI3NKp2UQCwHwgNK4T2YiqDuJFszyGvcrSnmnWe0/AgPw0SkDb4V
	 5lY2UzpI+0FwNFvGa9liGNlrKxwkgrn2Y5a0/SBlJzIHlThm1gSu2IhykffEsIj8pl
	 C1Sf6IQfNxwp581DDKj0yDIm14sserewpFzarFTkRQaL9jXRGU+uVH6U9qupRbxZCu
	 KITA6t6qK7bioo8O4vK1b725OwQR6G3EIMBxVt7LZNB+K0TWVX98+mrxQ7NybhIbK2
	 xeIysH0wyZjOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA60E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173366555362.976.622193523401994308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d73e3b610b07572073af864f8edd6b1b3a8c9380a3ec5a8e001f63bf817fb7
Date: Sun, 08 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733665553
