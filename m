Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69939345EB4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790513434; cv=none; b=IHgyLPYMmMD1h0etgzEHR2F27Vv8feQs9B7TtpKlKP6AoAk/ccV7iL3h1SH826Au7oEPKVUSrT6O4MX/jME9OeBKApSc64cg3gIp3pQ7tXixyTNBFptuc2AcUVPRNDQ7AXakYp88p9DYf+2yFWW3/U7gnZtff+yB9vrok4blQGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790513434; c=relaxed/simple;
	bh=CaoelcTuORwvg5Cem/8vfy0fDnQKPevJQUD+gO1/8hc=;
	h=To:Subject:From:Message-Id:Date; b=XM0rY/odVBloRyzIo/HYEuwVwcLgfc5OqhbiEIicqlk1BpHHA36CBpD2SciaR1JglBejZMk1s9I+NH8oelKLTkC8iyGua2c0UueoUbWng4mxxHr3LIrSHD9t7htbUTR11ukNwkVaVtDxRg88QvMrBrlmFti/YAt0i1OtB61T6Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esCkrAEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esCkrAEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6410C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790513433;
	bh=CaoelcTuORwvg5Cem/8vfy0fDnQKPevJQUD+gO1/8hc=;
	h=To:Subject:From:Date:From;
	b=esCkrAEfrheG0+1OPfaO1wMLVCzzyPIp52DMgukE3rW0yur/S6xxoPm1FvNnLv3g5
	 ySIjt281QDr0+lWvjRqdC3SVxkIGBZMQ4HTmIblnosNbXfO6BxnXvTSXC8WUuEExQY
	 yjfk0Vu+uKPJ8mrDm0PuqjjAoXDVubfMN6HlupRfXlHjeq8PpxIVeiEL9NjPvz7lip
	 xIuKqjuTzU4waR8bQbAsuU1pP3DG6gGNMxeketizpz8Hd2WfkQiC3P8zoYuG/Vj0CL
	 E9nlPLe7BQezzLgbWiyU6fEN75+7MKrDf4XG/vi5XuvkgQs/tFXdC/dgKJlG89xODU
	 flReaSXNKJYeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4763C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179051343370.8586.18098279249326175756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb787bdda5c51744450e708a39aa614fddb5621b961cb258fdf73bf0fb43ff5
Date: Sun, 27 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790513433
