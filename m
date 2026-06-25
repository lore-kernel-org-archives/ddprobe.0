Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CC429D26E
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782358054; cv=none; b=kTZakTxjzZ01lGyJOc1/Tu1t2ACb2gH0mbOluPe4tH3iJgsKR/WN4h/qDByAATeio0wMYh1pVuXkY0ami/zTyLqgM+az7EBkEbIyxB4/Ya5zDc+xyI4Kwu+crR3Z9V/44iPtGJGzf2cmVL/XECzt0H4JFlvb0oTcitDOIb0hMVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782358054; c=relaxed/simple;
	bh=vSgklT7HrOLfGm5/Bb7RluW2wC/ItFX2oAQqmmJbEAM=;
	h=To:Subject:From:Message-Id:Date; b=Q0Y9uCxtvO5pcpJJ38VdwhlLlqjrC2voIw8BT39EbzIoK5OHsrJLAaN8irQuDhYodwPLGYdJoLd9Il83HP53Uj2c8GOc6sJXvt+rDX2OMjdRlNWffnfgv1v1R5lY07nLxNo9OvXKwincZzTRh0nmBhqsWSHh2sUBf8lbB7UpA80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uunok0DF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uunok0DF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5F1C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782358053;
	bh=vSgklT7HrOLfGm5/Bb7RluW2wC/ItFX2oAQqmmJbEAM=;
	h=To:Subject:From:Date:From;
	b=uunok0DF8NlVZOVJySMh5KVwAKjUWfeWv7aqvjS2PLglBze18K0h4jpxBXXD9egIJ
	 hBMU9eAYwWKtDy8reB4m98e3AcUM8JoZ738tVMGDD5hggjk3nOwEu8U4hBB1QHrUTh
	 2T1hV18a169e0iSEvJeKElIcwdzNlJg9LSSE9KcVf3QMZehWP36tpJIuq6jSrTPHUz
	 p53Pudk9skRJeoZHUI4+IT/dIFekKEj3VvNTGFS433ydgXXeloTER+bcXhiqu3TpRX
	 +QpwRo9B8reCFSR4J5gprC2c2DyCDVGwGFOowMFiQgY1t4tyHn3dHg9EZt3tfQ35lO
	 xp0wrfQFMMB/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF17CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178235805370.2181.7483204621456775401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6914a80a8d6bfd0d408db9061334f9cc215ed04c5b6ac1b7b7eacaf5bb5de6
Date: Thu, 25 Jun 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782358053
