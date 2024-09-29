Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E15137C35
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727629554; cv=none; b=K1MSOBb50Ud9DS2k832XjNvFCd1ZkkXwf3GMpun0WOz/2msy3y0TWJdBlCzV8G7qLLdjvkYbtd62vLfcw2y1zM9lger+sEoaR9ayIKz+rjMuB7sthwRvJ1HwX3Dvw+oh5lefmVhPwj2ovSinCEgJMXVhcZs/YUu1O16G39AsW2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727629554; c=relaxed/simple;
	bh=PNy/qAVnMrEUTzqr3Om4YAYWvwx3qOWw6jrO5Rt6g+g=;
	h=To:Subject:From:Message-Id:Date; b=JE0AIRKw+fUA9DbsBpSiwkAMaZFAKvtexHguo7lNodtEslB1b/Bw94DD9sVVacHN58ePebZyAO0lwKWs4DfGom2lVYcpafNMQc7oKzf5X748Z+4P6dIsuDvQe8+iTwNYtWfT5GfYV81qKD3Er/iS5Vx5gz3znoLpk5mw3hiiOLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3bUojOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3bUojOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A476CC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727629553;
	bh=PNy/qAVnMrEUTzqr3Om4YAYWvwx3qOWw6jrO5Rt6g+g=;
	h=To:Subject:From:Date:From;
	b=W3bUojOChWSVRNVgZTVpRccHULc6C5wZgTuvmigHM41JJbY6Mt/odo7zW0mHghXPi
	 YL6img+3utpX/7TDvHsONHksOhZYZivOqgxc3OUJy7yHGGMbAtQoy8k9YVorvzbJZO
	 S9+W902gpMmrfohcYCiatqtHqYCtDwd5bbAvkIowGvrCzkoT+vBaptisczgkVgLI4A
	 vtg7juJDKNXWRZxtVec5RjMpMYcPdW7+Hu3alu4gcHc5L98y3lqkZ6YKautEI0ViDS
	 yaHI40O9n3RRU6dnjDMlyiKTc1Quzxd7AAzAERNmytcHxo/hZyJIw+dL9FS8UTri6B
	 mPSZyFE0WwAnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94265CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762955359.11632.1560152579371487562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d6520458669e48553f66c9f5addad1c9a7ff5163ca210416c9a21f67bd839d
Date: Sun, 29 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727629553
