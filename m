Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B96E2557A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758704394; cv=none; b=BRo5fLPEiY5qh7kGGE/x8hsnKCOerc/gdKVl98+6QXtSTDBXuNJSH9gU1MvJKC6grAvgexGKTCKW5I3S+kP02IfEyCCc06ExSIo+xvlFKQMI80NXHrdaPwubPRKIz6PGMdb0jZlsF1B7KaDm1FA/i2ljrk/6EaVwot9+iSoQHyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758704394; c=relaxed/simple;
	bh=Zw5zq2zCBPF9AO7AWg6mgE9OSDk01K9Uani/naU36fo=;
	h=To:Subject:From:Message-Id:Date; b=gVf+pO9WR2VLGqscB7lBUrHadNwInS/wJ/yC7hv3I5mgrTZcj+EeyffTnTuSY4gB/Ryb/QsZqwzWFXVt9ojvFeIhq4huYNAv8rjrFMBdtIBJZchwg+8/C+iV3vaCqlKwDJF95BmJjx9q/WH5AzGzROW+SnpPHbsFAqiN1mNZsV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJu/sD1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJu/sD1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB993C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758704393;
	bh=Zw5zq2zCBPF9AO7AWg6mgE9OSDk01K9Uani/naU36fo=;
	h=To:Subject:From:Date:From;
	b=DJu/sD1eo5W+w10cFqNQ+Fy9y89b5UvCrzysQEQLE3ktK6vdUefmHhk3GD0xU9wzE
	 ++l4dO8YJfCmz0s9cix/mMIWBLum4ykz+Vo8CFihyLjrnxpWMPx7w9AYI4VOd2fPiP
	 IgSd9GWwafQySPe+X8yEo95nRj4KYZ0BjJfnHcPK95W1TVV5g0I2nzHtfajJbDjDvy
	 dqVROl8aPuvuW9ISJ8qdjg/mV7STqtkGUhysPwERSkW9ObEsXXUYNfK4uhbBIW9AUl
	 77l9UzWN6R3GIhVwZh6jNwkLrz23BUlzu3+BoYjc1piPfxQ53HBa0qpvfNnaMJcKMU
	 2Nd/paT89aH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F2CAC5A7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175870439358.14778.6127663829364362491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1ec209de20aea8b97564a9b5fbd4d4bad976829a8f203257398637e18eab72
Date: Wed, 24 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758704393
