Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA3C2857D0
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744289994; cv=none; b=Mmc/NRXnyk38VRxsCa/WqbH3Mva4DayCHLTWvV6bYfNkCITswNSoXE4+ncUeVpQdnehdcyFu8C5Nx7xVRN6tiq+x9fXH3WpRLC7F0khFGH+YbhegTO4KEXHbeRiGtzHCxfnqrcjVtWcZTn9iQfd0fRI4VIGDd4lMh4tfnYyWP3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744289994; c=relaxed/simple;
	bh=YEcg9FvPVMBP2WwykZVtRhZCNF8Sc0DQlYUikhW4tQY=;
	h=To:Subject:From:Message-Id:Date; b=eNTP+cfRi+grURFliqRyYL17fWxTCN4/aJMjHHbKferVoU3I9RdSD96V7T2LUAPSoVzegm5XEcDc6AnLyd3zYrv8EtD9/+clXCtbTnM0MJQgnz8e1dlRFC9Pda6yZCsBcRV+C3Se53EEbYnF48TGj0jm9hzQlNR/+C0AAl3ZZtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snWIzGoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snWIzGoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78DCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744289993;
	bh=YEcg9FvPVMBP2WwykZVtRhZCNF8Sc0DQlYUikhW4tQY=;
	h=To:Subject:From:Date:From;
	b=snWIzGoMP8XiWSseAyMN5yI+jR1FkNBQbFEeYDmHPtdZHpWdFJccdqGbwbvJgCE75
	 0sjF4G+JJ/HFFDizB+oL/IAeyiS6R+7BuGZB2XGknS/tBElgM5zkqBM8IAihPbzaXv
	 9CZMHABhAEaG+VD6aswYebT9bBJqmdjpcON6d1oPbp91y20MzIUfoksVIJ5NpYyE8x
	 f/emHuOnqJeWIsHJICHUvHPZriGXwiFKOdN9QfgQqK8Y4VPWX5R3EbQVViz9Mc0QVI
	 qvEerF06HTTZOdMYGTXKW4GOeJPxbZpa45Wooj+m4rRx6cp/FSnOyAGWDOt3DrJJJq
	 kVP67UIO7PEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F7CC369A6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428999367.10590.8163352456760516718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7b19541aac2f3550a29873cbd209f6b97501cbed24e4fe1a648cfd15bc3eff
Date: Thu, 10 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744289993
