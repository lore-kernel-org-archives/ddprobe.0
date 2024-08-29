Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC53381D5
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724903154; cv=none; b=l6sS87zAEhnQnAPiBG5MjFJ9guClEygUMAidV8iu73BJyVjh2N7PptrNXdNiRjrtmIdHXQ2W9Qd1BzswhWN/WOWO0u9a8IGuDpDDefZubte6jCWeNQmCEl5yptC0iO1C3an9yBZPoggoZCSyVKFCGrh681A4rU/Ei5yYFGesovQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724903154; c=relaxed/simple;
	bh=9K0olVgQLLvBEnHTESHHD5YTeQgewAyb1fy4MXztnQw=;
	h=To:Subject:From:Message-Id:Date; b=mVrHL4HKdAQz+gp3Zp1kp9HtRuzIRQk9BHHqlPpYj/ZvDlNQZTnY4C2wnXLJb/1sd6dvCber/9OoJ5tVYfwL83FjGRZ0oon1lDdl7udEKY7TTwi1XXYm6Au5NXeBissLtfvNWwTQi2Q3vWngh37zefpX/0U3FkKpu9Fd26hV7ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8dfKeb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8dfKeb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3D8C4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724903153;
	bh=9K0olVgQLLvBEnHTESHHD5YTeQgewAyb1fy4MXztnQw=;
	h=To:Subject:From:Date:From;
	b=M8dfKeb0hZCfYB+D/9AfmodFqgO7ebfiPr4sJMHiHHdKXrWGlvk59pKxRdQGrdDAg
	 uc+lrajOkrxhCB3QnZ2KR3rjj5ng+jMfXvweg5NW2Jcme+ENtOav4g1RMx6i7B7eP0
	 2GLQO1P+pSD3ZDrIBeZ33u5AuU7DTMMktTj5sLIUhw94wZujQ6eBETUiN/TGZG41j2
	 JO5hV5eyiF4v7nYb3ACcehM5dWFSTjKG/pEtEEsiWtf9u+XMwmOj0QBOOdy0M8CP/v
	 0CBgSDHfpGx0S5/YehnG6Thp2bKS+bUxAI5XqKHJz0JYs9grH8H28WuWlvInSr+fh4
	 +HqaQq8l8WKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F8EC7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490315362.23673.988520459153851042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93e45eee366bca46293d828bdf509154ee824bea585d26e4a1a06c3f2b745240
Date: Thu, 29 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724903153
