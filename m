Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F40040BF5
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746088194; cv=none; b=kuPPmd64j4nqG3qnJ0IdxGW0PPcr6wHezwRU7WL5Cc/4U34jOXVbdPgRJhd9dkgL8rNKs9bcBVahSDWxTSD6eE2UpdjDgdeSpk9ykk7Y7nShNYv26g9A+wV0alwWNaqEca2iByoovtKC6tBb3e4cOtU9AmQC0oPvtJuIapQYBrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746088194; c=relaxed/simple;
	bh=xFvARZ8BpOdWf+ezxBCzuiSLxQORfxelxtT0HZJMujY=;
	h=To:Subject:From:Message-Id:Date; b=akjDdXYVhJxYy3wWc8s5IJhza0tRoJnGpR4C7IlJnCRQz032n5zKVK7Qz1zx2QJaX8+zpaRQIr3GCsuP1YZv7We6IhG6m9XZGH+7eztuYGctAu4jsLGbWqDy2VREGX2eA6C1xyq33IMZ7DabpumvGr28Bm+MhGr2rdm5F768G3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pw2bEKox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pw2bEKox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B9DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746088193;
	bh=xFvARZ8BpOdWf+ezxBCzuiSLxQORfxelxtT0HZJMujY=;
	h=To:Subject:From:Date:From;
	b=Pw2bEKoxscbm0tYNGr5Ip/02v0lv0LvEt931OepyNXXaay+N1QUEyJiYrS8G4nwst
	 ruufzD+Hprfss3Q5W3Y4PuYjXQMhNNylk04OLFL/ti0IeDQHl0mwO3lQCb5cigagO6
	 boLrNUT7a5Tzv062mzY6xCJpXx7ifAbObQljIaN/Kb2lu88jMp3VdD0DE+I5zFjMWl
	 d1LGukkKezqKCbdhehr6Chd5aiNoVYhywAQILAlbdDhLnFTAiBRNHxmPyK5R8jt7+d
	 tw/ZwPF8g4IzALbHObKdFSYbVpedqXos9dmwW4bVSrsKVerfpZcfV0fvKKuHSxkE+Q
	 QNN0yLIGKyUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E53C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608819357.2665.13220220813869845195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4021361b289ba9ff1c2ea6fa7b8576e578662a80e29747b6194a85f38994bb6
Date: Thu, 01 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746088193
