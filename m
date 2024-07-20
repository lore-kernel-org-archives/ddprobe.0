Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D93A1C4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721472954; cv=none; b=qkHor81ygN1rwDAwcVmvp4AyasRIY+S90OskaVsj+gD1pEDfcKDD58NZnFxO9d5Xtnj2RyuXWScQl8lDu2Xf2cHCu1mCDuPC2gOoZ1FX5zYs8Gp0VTx0uvlkbVrQMS0ZxRolidqRJ/kIS0R4e8CCS9wqGVtVo1Xmg0AiTIdyoDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721472954; c=relaxed/simple;
	bh=LRLkrJskGXcU4bfwItCjrwARNE0v0uMKQ8zvaFZeYkY=;
	h=To:Subject:From:Message-Id:Date; b=Go1LnoruHIpqExuKZz3t6XLT/P9W9GIAfHdlTN5ZGgZgygI9+GkAaqcHsr7TM16kcilKMg7eHoHC1MMytPOXuEoMIT1jwvQKR7DJ0uBBqAHEZzmE1AM9XhV07bapgYosZe98AqZpIq9qys3nOR+wuxERPlWl8yy2j0Ghf+lHZj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNeqdYQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNeqdYQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1512C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721472953;
	bh=LRLkrJskGXcU4bfwItCjrwARNE0v0uMKQ8zvaFZeYkY=;
	h=To:Subject:From:Date:From;
	b=SNeqdYQ6gvxwui/oPOZPyqCZUS1/MvoxcLkiopLt9BuIw17BLUgmxJJQYZ4/TamhP
	 Fw8LKSNc749s1OX53RWcQ05m6+HqnuT6iy9CBsjTHALYODhH1J4q3cSJgPSp6+Ptl/
	 FDDzEnl2V45PGyyZisr4a0fi56yN/Sufa+nQNvrEWgvU3eXpoY2iQWLD4eq0dAbYC6
	 lGSiIXyzPPotZT8fk8U24ArG++3pvwBoCDnN33MRlgKZzT6yHBuLUHamNCEGdJo2r7
	 wLHb+HDCX7y8rzcbDDaCinc1HOQ+nGtM8xIAg/DIhRyZ0Vn6gXQvCv/Mw8tmfdSdnM
	 PLsGv8CwoVclw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C26C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147295364.6661.14732865627872826886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602b87781bc1d4148746d49f296405d6849799448b8bad598a6c1cd02c545b59
Date: Sat, 20 Jul 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721472953
