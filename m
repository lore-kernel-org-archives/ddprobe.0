Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8AD8F48
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767883434; cv=none; b=WrKPKs9J3LK/36Y1NnAixwa6DPng0TxBaJrzl84rv60iHUdzaoTT/g/jszPlCp/WqmqMTWCyxThTmFcl6NynI96jt67csqgryW7t6LV3fd+E3Ic6Vu2T3+LJhzqJS9bYVkFicd2Tbd3CwsxeQ28IYQtMCGE98cXIWwky1bi2Hi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767883434; c=relaxed/simple;
	bh=f47gb+toVuxpBf+U7KFeclBQoxDonxjNKYLTBuocbfg=;
	h=To:Subject:From:Message-Id:Date; b=NI8xLSL7a1rRyHlYfjJTXENmU+QgBhOg10AG2DAwgxd36WjSh9XSLHdVKZ3PZv8o/ofbm9VgTNnMDuxoOcMuWuXyLePKlxUwoHNme50myrteeUr1cWiA8WfBnwGd0rPr+YIk2be5BZb+uwhJb6eEyvbsXXDexBO//4l9nmn7qM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXI8iGp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXI8iGp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ABCDC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767883433;
	bh=f47gb+toVuxpBf+U7KFeclBQoxDonxjNKYLTBuocbfg=;
	h=To:Subject:From:Date:From;
	b=KXI8iGp1xLLp8Pz69wmvNj4wnXQ58wwtpULGXKpFHUoyK331G6SPCofX8Cd4UndU7
	 90SYWD28+mVI/3yvII+Q80xCc9eQ8J/TYCJx9htziQwapLUDj9p4CbWTbALlfGnnPT
	 Nf2FVzh9yWwcW49WHW5YL7S8J4PiHlXVDMXPg3/9O1dznqO+ewr1NgmEpGr4Sst/sh
	 fWpaRbDD6jYcJNkzV6UcD/FBrJ8QEtOT+rONd2WKpOwpOcVvbh6vfkFTQa03oFvzHh
	 d4NkZzD/7CHoo7W6b89gCnQe1yX9iZGs346OqtzMiQQB7+z9JjD8ZQMsNnNZyra36F
	 AbcZ758Xfvqrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C0D1D460
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788343357.9002.8784221689735838929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8177669c4cd7e68a584187e58c82f6540fd9389137c269b27fc29cc7e34ac470
Date: Thu, 08 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767883433
