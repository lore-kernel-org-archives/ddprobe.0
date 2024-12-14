Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A06B674
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734161154; cv=none; b=D9aPAwFAjXqVpVQaVP53KRC4ZhykNqV/J/FFXMjoldnPfjgL8juyQT33hm+djg9jWNou6krV+CZmGIsUE1lls71+0tt95mx1oFgu3vGyZrhvNxcAuuipmen/mTnnRb4fub6JO79LKfqeAfYeuJjowMe7e2IX3148yypShSU9Q3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734161154; c=relaxed/simple;
	bh=zkqTZdM+FY3vAJE9tNXS1PIsbPXMisCg4E5O67swvj0=;
	h=To:Subject:From:Message-Id:Date; b=Lw+FHUmR8vjmXAC8F0KVwexe6bikikWjkPLIZXuVb/hXLJPQklAqEdvWgJtSvxcJ0S45j53HnDgum9wFPlYMBcChfdkdYKpg5Jp77FuDbfWM+6/Q7OYqpGbSmKJLkXrLtifTzdOxiU2otZqN+CQgi6jP8RRtJNholdwsYo0Fsh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWojX8y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWojX8y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734161153;
	bh=zkqTZdM+FY3vAJE9tNXS1PIsbPXMisCg4E5O67swvj0=;
	h=To:Subject:From:Date:From;
	b=GWojX8y72ZKyzoPFuXnXdj3wVrce5+QjaPYKkC6k8cW6vQIXjTKvjHRJ2LXCvyxV6
	 XiZ+V41qm6jerSI9eiRbZvdmFuLoCp3P3TQZ14BBMA9j9bk4yGEraHkKtLYBTlTpgA
	 IrjgUNwiaKTiZKhWt5xVeBQN8tYpJU4sXBbglyx9BNpTJOYhnN8FKn6L4w7m9PCOMq
	 EfuR8Kq2B9xK7NDYfKpkHASUUpNMAe5oVomQo/NVLlTuhX30CJKnxNObxLJaTS45/R
	 1jkKbzsIUC6wb9YrHsqv5p67BrCXCctD4Ge03QEoGzYik2oIwLW0zh/bw50lCqJ8p0
	 ER/PZox5sCHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97240E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416115358.27930.14598675068986891768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ab5a6dcc766b0b18ca287e20deaa150169a48bf001ac4735ffbef038986d29
Date: Sat, 14 Dec 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734161153
