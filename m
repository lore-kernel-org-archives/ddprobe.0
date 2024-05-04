Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431F05234
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714815743; cv=none; b=mP8SmJneASzQt4gLRfdMveNEL56EFMwLosj/G7xndC2pmyhWAe4HVy1UFRypDVus04Zbx6OZCNizqCoxN7eDt3yVhW/cH46X+aDT5mbKhh8d6t5MnsT7uPhAGjYxjyHCC+rbKrUQMEh+tMSu5IITvOD8nd8c/AbnqjAUK15ZnJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714815743; c=relaxed/simple;
	bh=tHoqIQ33D57iZqPkkDCgGnjvnGKq1mrLnV+9cLNvjgY=;
	h=To:Subject:From:Message-Id:Date; b=l/mUwM9s5P4w6U1la10Atnvbkmnp9EQylwmvAGgRoA74JkEir+UpV0nS6j/oURKYRFxBBdbZaFTP8VsOHid7OREaaxisgBe5oZLLQuvLtY3pxB9oryJOyYjOoxkDfWmH5nZKtRUooqgyMOWY/FsQF17BAtFxALcjf9ueoAf00tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AR8yVone; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AR8yVone"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7246C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714815742;
	bh=tHoqIQ33D57iZqPkkDCgGnjvnGKq1mrLnV+9cLNvjgY=;
	h=To:Subject:From:Date:From;
	b=AR8yVoneKX5WSmsyvB1SIFyXwNO4MFOUUE1GhrU+DMIsHi8BIbAl/9FFn3D+GeiJw
	 zQJ5fk9aaaQm5dnch3COFxs8iCtKTXeEhtPOQnwktqPP7DeKRIakaCrlXbSuDvuokR
	 r7pSypqkzyjM/roWpOO7LrC7hyieW0MFnJVA6vnv7jn2/SQgigRzqB+216eFJtMd3w
	 836UISetxRKdTytxgqKBIzOnOHnx/s0ro02D7a3OV6fnuJQ1KJDo488s1iaEbdWKFF
	 LwvyeJFOOdge0Ad2OL26FDm31faWca9sm5hxw57WFPkyMAg2gcKEFbFyPXd3gUXSOj
	 yusvDRfVFxu2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C474EC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481574277.23296.3512306302203631295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66cec97fa0f370e5f2c39be3ce0cad2156b5eb4f149e5d2deea032f751712ca5
Date: Sat, 04 May 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714815742
