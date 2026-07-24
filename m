Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409CE25B0A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784866834; cv=none; b=Jkk7ofJmIDTca54xTwM7SAl67L0oh1dKntAbIngU7P4vtVG8uWgFxjL1dsHd/sJqMHq5vrq9ejF7BsgaxzLpAit41wv8oYYTfruYlnrjpbJofmX56sS4D690LXI70Qp+i52F+3qgRYKmcPiLESwYBE9kbh9m9aUOz9QwrL3lNkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784866834; c=relaxed/simple;
	bh=qpgmUCQ8Jov724tD2TgyMQ968879ogCTJl1+HZ0T2AY=;
	h=To:Subject:From:Message-Id:Date; b=csZ3x4MBt8Hvm0ctiahaaSPyJcAwcGU9ky3mFpp205T6NAUCqGTDH+m6vGiLdmOb+U0SuVWTaz747wX9bi5cKiovXdKmbnY7wzYR+9YFrwEeFlj+oL5EcJXOpKTJVn2PykkkXQVinSR6rwa7roWRQxvQmivbgKscQc7GQ1W9X94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db6g+g9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db6g+g9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13DAC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784866833;
	bh=qpgmUCQ8Jov724tD2TgyMQ968879ogCTJl1+HZ0T2AY=;
	h=To:Subject:From:Date:From;
	b=db6g+g9V+140chSDxdz9qXh8M3eTC2DdiaL3WatqqNSX4V+wi8vKvptL2fygIZnm9
	 i4OsH2Lp0MMWIc1B/WZPm97ueVlByRpgFQAb1uuFfNHi753Y4/hJKqs5VdJm41WyLt
	 gsA3X60kJwwwvbdJgEnpHsMtuBhWseB5XEaH/C+bUuQlZ7nMEspLtnebC7vOyjG0Ih
	 Bs0CUokTUR1lUC7B7Vnz7f3tYYqazHfLley+APp8qlA1YQCMO4w+xw38J2Oqz405yy
	 ElOzaot3vIGGe1TIyV0nc0Yta/7bLl2IhczNRmO2dpieyVCqYx2nwHnyiY4Ct6kKFj
	 Y5rP1Tolj7/jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D6C4453D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486683368.7042.13804828169695739557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee70c72c1753a645c1a02f3b666f02594af48af8a4bc230366fbc01226d1ce3
Date: Fri, 24 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784866833
