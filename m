Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171443321DE
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771258494; cv=none; b=QTL8p9hdbIrs3XMaRZMkn84oBqjsbmLKxCzE0zYDi9NZUtSxSGafYU/GBoChcC1Q5nddVjPNE2silBic4mXVNY4QP4rY3E/y1Ps/638RyMVhvm1CsDSavNVd5wsNj40JerDQ7rkugZM8kblUjmlGFSgpIwlQC2wY6kaUKc+WFFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771258494; c=relaxed/simple;
	bh=47PzoSfqCJGIu61qiwL8nOFAGKvYkeOuAsiDIa+MGyc=;
	h=To:Subject:From:Message-Id:Date; b=tlebG24C8QfxKf14eTnyN0gkU0cxVoBmXHnlEio9Bd1qKKTqoL3myDQt5ZBRXqcfz9/6feNJKnnfrnB5q0+7+lZG//IpF0t7pLoDuEZW4MVEFUn2N2tgOxqWUuDoLtfT863HaKJbkOnktc3kQGrLIUBrM6ap//w2rFVuUc8tX0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyYOFDCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyYOFDCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E81C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771258493;
	bh=47PzoSfqCJGIu61qiwL8nOFAGKvYkeOuAsiDIa+MGyc=;
	h=To:Subject:From:Date:From;
	b=GyYOFDCsskUmU1WuMZ7lhw43SbnK19rXdv5oeh31ZJJ6PAZyZo7OkIem0j8Xl3sVE
	 b2G5BdtlKhDx63SAUdPyQuX3KXcxwGmPFNn5IkpAMjeFZgXaekhdPTlYqzNqzM0bgL
	 XK85gcpbIkUy1PsY8zbMUNgK8k5K6Ra5IYHGZllPItTyN1SDYJjzwy/GtXcHl/d9Ao
	 UQjAcUpKSLSf3SPxNfPaEvGY+63cx6xj2bCyLz5Q55d0XpVC9KfnZydTytrXv0XnPP
	 CqPHZYNuVnZFKPzNinPVNsSG2RvKM88PFYylUc1vvfHBRcqeYAExjja7deeidlmCQz
	 Btf3N8A0aSPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8FE81A3F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125849358.20744.257012001377297685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726870f6298c97c6939eca29ebba5b827639ca5e32b90b804b0c3ba0813a2eab
Date: Mon, 16 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771258493
