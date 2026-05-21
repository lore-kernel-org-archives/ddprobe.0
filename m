Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1AA36A34C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779330635; cv=none; b=IgshZwmzUG0FbOx0zAhk21QhK99p4qHivPE4x2TIkTWeZRALznV4C06hESYwS5+T6K2ESxZPELZUFDb8PA+SNc7JkOSKfALgzs820RwipG56828Q/YoHXx3L2CKwOQAPtVs/sbS8DgXBpUABveirKRyrrGvXxYYwaJEYQXKp+ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779330635; c=relaxed/simple;
	bh=0A6+03Fk9mzH222hWJ9V/8Otvqg2iOb8MYGb4HkhawY=;
	h=To:Subject:From:Message-Id:Date; b=CcDUH+utc0oJ3xHrEXweidXIi1D9od/Z9gkBLk9EJedX4fsP/0Dd5MGutYwgTPulH8ffKl5AcpdMAi/ElU+3d3JiWjvEFPt88L/5CS8dppAgLCJwG1qRKZXs/qk2hoq99vN76aEuQHgb0dBYE4Kf6h82CAO2TNCMNDc1v2SC0Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Em9kzYZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Em9kzYZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFA8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779330633;
	bh=0A6+03Fk9mzH222hWJ9V/8Otvqg2iOb8MYGb4HkhawY=;
	h=To:Subject:From:Date:From;
	b=Em9kzYZYpx3FWqCB3omPfCklKM3q51Vd3H4DXoiqtZVnmLX570am8azJD45JArEGU
	 qkVOGzIOYTv8iT7eu8LomMJfqlqHnetccgBSZ5/wOw463z3G+kXuJswWxlFi7wLIgA
	 ftcBECtl0ksUNz8a5hCkYRUqFEi+VSb5BETcpS/T6BBANEN99nY4js4IW8zGe+1IGx
	 0siBmKtio1NvPBian5tR88FD0g03JAp50MwhH6/g5SCVCKJEzAFLUThIE76LdsaJwm
	 ndYp20aA+micrm27aRn0RgsZoLRAkmzVqfh54/CT5Z9t/d6KUljOmErXTQteTXGWuu
	 dROkgCiK7Npjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABCBCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933063373.14112.17539546012461096328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4973fd0378ce80fb5ee5c13e09243eb07dd59285ee49237cad6719960a8c32
Date: Thu, 21 May 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779330633
