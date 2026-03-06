Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9DE33B6E3
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772810094; cv=none; b=KS+APnCDtao3ksFLuHW/sKJXQk8kvzths2Kyua9VM7miGvCrc+G4KWdpxF2eCtOw6dP7YBn2sHqw5B8Kq4ku8LT2weEQ8hBfBfHpu6ZmCe+xT7mf9qAcLc/2tIfg6vR9tk8o78+1amZ+DfHVuP9vU7aKHSUSEDnC92rq2l8f6rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772810094; c=relaxed/simple;
	bh=MhVJ3+tgKueUDQvwR5V1uZim8cf6ImIU3LPkX9aUGP4=;
	h=To:Subject:From:Message-Id:Date; b=E8uE3TaASdq1s1lGU/wuw2BVldqYvIlDBTha4d703uVjfdf8DXXYVb1+50Z0UlUkRI1Z1X7u0szxSjKo7YNxjjrtHS5NSVgAmVxCAmMMN/NG7XlQg+QPziXt9DdsmVOy5MqI/aJJDljUqQVBB5Gsau3UM69SFrWvowD2VlUmPTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvve0ZLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rvve0ZLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBF7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772810093;
	bh=MhVJ3+tgKueUDQvwR5V1uZim8cf6ImIU3LPkX9aUGP4=;
	h=To:Subject:From:Date:From;
	b=Rvve0ZLp/MIUIEGZOqMdLEJSwxIYYsj1oMJdZq7qcUfJuKzpfyEcPiB3J55c2j9yt
	 4zrRwG/bQwoFYDWuUyX8vNKjzcJR0w1eRfimbvUmYoJWs2/y7AYnUsk/Az3wRFEZB2
	 pfokdtJmagCkfgeEGrNp4Ax9aC5t8iBAtRRWDoSJfcU3EM6L7PcvkESlbEv459gvN2
	 kpfTNTb1SArVn5waVIThrUQTiU5vl/aaYKHc7l8F0tVWmMchav0Vl5VIrvaKE+Z+u5
	 yPOijgYV25NMEVGE+DPnHFqlG4v7NuKdbtgJlCV0wUGzBODvGvmF1q+4L92+a6z3Az
	 gd6xBjUaSaObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB81FCB60B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281009357.3463.9831646781128424641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b1f5d6642bdfab07869be585700304cc2382ece1f865627d2f174b00899a4b
Date: Fri, 06 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772810093
