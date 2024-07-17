Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760D623D2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721191523; cv=none; b=a5NBvaVIxPlVG8LYkH1yXGBMuLqwAHHWIEkOvizjnuYf5RozAQWCGubLcbVngg8UFG3Y8b8R6WkyaXDG8QcGvY+0s6A0AOIy3BSZgJs762MBw0PzUee5fMk6ZSg3K3+AWTHiTvsEJKe7JHjhK1FaEFH0GoHzBgsc7IIKXftv3CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721191523; c=relaxed/simple;
	bh=haxYUWmWnc7uymBRyynnG3mAARYzW5ZDYCIMAIYWUKM=;
	h=To:Subject:From:Message-Id:Date; b=tafFDVj3a/Djrr6c0mm93z0dtFyp3/qwoMrjuwbTz7w0PM0wwOCXTt35wxd3GVlCjLsV9RWicHNxZvvvlNGNsVegyuwmW/tZN9wYOD14k4OPgpcwoMkWhcswI3lxkOzGrbpgNfeIXwYaXwpRw9bLE+ZfFtXrBJVdXtLMKEG/tTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivJfvtRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivJfvtRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD25EC32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721191522;
	bh=haxYUWmWnc7uymBRyynnG3mAARYzW5ZDYCIMAIYWUKM=;
	h=To:Subject:From:Date:From;
	b=ivJfvtRW9QslAYZID3WUVeyYmsUkmvxNJiD42Em4C3A8v/4XaqNWRg2ML4ujkN4fc
	 ecgDVZDra8kdtFbkfZ8T7pF224DNrs5E8Zf/6jy8fB41kuoFvN+05pFVgRpeKph3v4
	 dwH8oHTDn6t5Ux55KVD4Ey5Ss6yEh1tYoloN2tj6vvqTcdWSXxfoLUf6QphHTK6l+d
	 AO74z0XNtnCkXIDpdqljpB/o+P6A/gz5gpNPvWNim4pcXKu0LIv9xh7OlZoW3uRICT
	 q3Zo0GoafvfuQ45KAGN4xQX6hE+XNqRdkKBz1usSfcETXbtJZagXgfkNg44hmXLKUb
	 JIAGequhrrVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C844CC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119152281.16112.6463330421945718963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369a005e7e068f22f7245a29f8be7de86958e39f50aba37c82bcd8dbd823978c
Date: Wed, 17 Jul 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721191522
