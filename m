Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5731C07C3
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757228995; cv=none; b=q3ZXlS6vwY4M9HgOK0Ie9IdGWSpagtt5LflScSr6IzqyKFVmwmtui4neyZPjp20AbeMArAK5LYTvNVxBzpArY3Snbbkyf97sk6W3F47rb7hBXmNMHNPpiGeanoLr3AbZ+1tvbnSzK7eDzsuOjxbg1OyV2ALIdNnDPZIcv5JosPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757228995; c=relaxed/simple;
	bh=iCLQPSyhN+Gc8CxuUpf9Qb8P3NNVlSG1vWGmiatR9xI=;
	h=To:Subject:From:Message-Id:Date; b=mqIvZWiuyLuxLv8V0jrgScXqNZ8nptE/OunxVf3eGAo1lafZK7LbW9bD9uQxuOPX2gJfd6x1+FeCEF7kzshDBdIW5VWALUTOpYWTWTXbyX8mJFhRRuTDq5EERU3kWq8fbRYCPzt2ZwmelQglPV2IVKCp10ntrpwkOATZxXidocQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9mhIqxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9mhIqxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757228993;
	bh=iCLQPSyhN+Gc8CxuUpf9Qb8P3NNVlSG1vWGmiatR9xI=;
	h=To:Subject:From:Date:From;
	b=t9mhIqxW9PfT1nSDjNlCEvbDfADVxNtY5wunWji6ONivKIP8p9rFVgVm9TDJj5gUn
	 x4PA1bEtWWrdlax1rrVW1z6cc2yM6e6vr0iIYqOscwHGbYagBSm3ePovtNmlddrkyq
	 1J4txV8z+X50H/a4IEZfF1LYQWfrNvdUeLLiZbNknsISVVslHXICzN+oCDUOb1q7nd
	 xM5+SLB7+VYtjfM0hCHPUuvLnus8Q83rDo5lEfLUdcmSILLXwRk5hg8vV83VZCvPG/
	 1GweehiP0fpUfQhqWAbWl59kFRowYn5dXjaeCahAl8Z8umtWallFlR4jnkf1x6zYA5
	 E9pFATx8aaUrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C2CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722899357.3152.12692139795914930026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67536ee51bd13d289d30c92d7b75099f51dda04cc520bf3809dfab6469a87ae
Date: Sun, 07 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757228993
