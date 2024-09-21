Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4158E21373
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726937154; cv=none; b=irI+4/SS3yP2HEJqgxIxUfFiW8xTtRSR9QF3uz+hrcAOYAvQAMjzb7hvId7uIhqfg0X7VWGSHzMHw/+z/2+52DnoBx6JFSkvoU0cdmJs/oDxPjGKJbSCQUweE0Puqsenh/r7XWKRApQFtewhox9vpjQ5OjeEuO4wpkCGf0BpmfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726937154; c=relaxed/simple;
	bh=WH8ruO5tekBEPDyaiaAjxbDLuwyPJBSJw4xYhJPvgSo=;
	h=To:Subject:From:Message-Id:Date; b=Bqxrmv4XsDk9VSIyK4xx1Ut/P53GyzVILAzrDzxVQqkUYi3osxkSXYes3HCCbnSSivwYLCTY+2gF4E45W19TxmpC+pJ8zZIOI6+/vi6LhFF/9rd/l764+fuO0RpK7cPB4bc5v9SCA3Gd3GaPsmBIsDy9MlyWWs+vFtDfLrfeghU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5TnQiSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5TnQiSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B438FC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726937153;
	bh=WH8ruO5tekBEPDyaiaAjxbDLuwyPJBSJw4xYhJPvgSo=;
	h=To:Subject:From:Date:From;
	b=q5TnQiSnXdSTiunm5W71a8J108UXXDWqSwzoujc3OGx9qux6FBXBEtMQn6veACbfs
	 S42f4ZF3QuLVY8rviwSy07Qp6d1Licb2Sq1V2LGCINO/x6cYZ/t8ZH9gcJVpcW8NGy
	 Jn4YdNHN8FeFOUkcaxj39f4vfy9Jwh9izRN0bWfHPUevnSfnuXfBP+E2gegaaXO9Qt
	 XMcFTF9IMyzchyswJAofn2fOwg5h02miJLl/i7btx92BKl00l2lgCjA7MMgefCv6hr
	 MiqLjAj+K09BidL+ntNluAeSRE8Cpao6ZAgc/WnvCjp9rjzHA7o/nosF9Bc4DW4v9K
	 v78h5ZT+ajbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CC7CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693715365.24317.9325730521352824061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a9816d19f068223062e750d661736626fb50498a3a1985c41141a3f5d9dec5
Date: Sat, 21 Sep 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726937153
