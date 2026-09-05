Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A4E453A52
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788626434; cv=none; b=F0ZcmrVdpDr2HXP1S0rKQXoQfLnCQFdQtWb5jfQYvxuX3tdDJsNy2YVWJMmnSucyiN/HoXUW7i6PVO2ntmT1vbtDMOT7QUK3rY+7JmBgoqirnAClUUrk0iB8ShsE599ZdqfRnhfPlWN94aXdo2XvVFLlsdx6VtACRtEVYrhkcvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788626434; c=relaxed/simple;
	bh=lYN5AbtKFE9w9GmyjJUyKwac9dA3AIwZH3iHhLVg1Nc=;
	h=To:Subject:From:Message-Id:Date; b=aKrUAyDPY/wGJLX6zXA4lYtIJ0kOiNzIu1bZPvI3YQRYcSBnZ7nkagOULUkgGwXAEQ3y56BhAhDaq7hvOz9dYD5zeTGaBHqkWoPy7W1+9sPPI4Gy7DkBLet/E1KqImXvhd9f0TzpjfpbJNj6dGIhW8k33H4xY3GYfZ8xm8iOEok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqUG6A+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqUG6A+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E72C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788626433;
	bh=lYN5AbtKFE9w9GmyjJUyKwac9dA3AIwZH3iHhLVg1Nc=;
	h=To:Subject:From:Date:From;
	b=KqUG6A+3wSEz8UnIC9E3k8x59GKZUxUWD/AzhxJotHWc4F1ey6U/nZgZnsLmtP6Xo
	 nbVHvHunsYsM6LXC7pbqEk3VpbLX4A06JFgVXss1W4UAWqamlxgXzBgWrjkpkhVF5F
	 KgR84FyUtzVyEwtDR8lY7GwMs72mL1Q7NEpMcADno67dr1FhLl57YRPmkg6X+CwSYY
	 R+D/GwCnQ5p52ySPMdhrIr9op/ZGoUO9//772X+54BOwV/hiSWT2m4Jzz8mHv6UzHZ
	 Ussi6hqOplqI59TDfefHhQu6lIoL8258hCRwxiPFPTcFMKN34pDrGIOyxrMSUP2VfJ
	 /iwaVyL9AD40w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C32C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862643369.6907.1468228947043400947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97062fb06eb758923e5dc0ebbc5513cc2608135be2055249603357de51ce5423
Date: Sat, 05 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788626433
