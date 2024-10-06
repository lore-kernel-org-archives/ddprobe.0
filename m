Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3811538F83
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728201354; cv=none; b=O508Tanyye0U7iZOP+Pyb9l6UTolVIhs0+82AnXQNSt6jL8Fh7GYDukv9O73kpKruNU23efrgmLzFm+kQGDimQBgcqCh89dNheVNuCB0TSIhNyx3bHKScBeulhVc/HtCcEegrbklhBwd1rneK1/y05y0xnjGapSGY1NEliTMnPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728201354; c=relaxed/simple;
	bh=qmFhaL/6i+IyaxiOtRaX5ZMH3LA/QBF9S5J6VWAYzx4=;
	h=To:Subject:From:Message-Id:Date; b=XHUWhhfylx7h0RUd4GaGgAb0cQEYHM2I+a3QQ+p7TeElvpW4UY3GHtx2YXd+Oma4buY8cCBckDZOYQ8YLjrpvS8x2zHwb64Kglk6tYPNoEMn7BZ4/EH0KfySRz5Q8s0Qb5q0q5Hd010DWvUGDmHTIVGKePwXsdvvqtz2tRv4peg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzfERbwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzfERbwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95ADC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728201353;
	bh=qmFhaL/6i+IyaxiOtRaX5ZMH3LA/QBF9S5J6VWAYzx4=;
	h=To:Subject:From:Date:From;
	b=gzfERbwxg7THnzF+NbMjoRdu8s/X8PLCzyZ1bnbPCWjsh+MNgqy3//p0H8RXEa+DT
	 KuAFFIxoZE9DNyb5gZO/1BSjKdsSlq+uoZKWofhB4nRO9WovaZYfrEumyRMdjOLs+R
	 Yj2fscSlOrXaMhaw/favalPTv2she0lSd5KUlgwJUw0zcaluJaPhzIUIFgxdu/e2Kr
	 kath+zQB7smAlN5i9JAy8ikgcoDXYeJQpMlRLp9mi6csRlrVLvKwqgrtFBD3unFT5T
	 CB7l9oqVGHTZWCAVt6zCiEsjnNavDv4Is7eyCau7ctYJNzUSzYpNM6jzz1tqrtfFOf
	 Z6Fna3F/Aec1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991C6CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820135359.26159.14629749028730602880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6982730d6332e1afbe20bdf1897ea6246ca95ba9cd18249c189cec47a3c33f9
Date: Sun, 06 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728201353
