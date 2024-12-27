Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D0E45005
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735324554; cv=none; b=DDezXUm6L+9W0pwxvFMsOFSkz8uTYpYGjZQmyOBhfqPiHMwZ35FSAO36RRE05+h4NNS7rbhnBEC8EWnmEpoLZuAVjla156MVsRiow9DeuYhKzbFfhEcsb+tunCKQGFKewAw3yrhHmNeDxMj51GoSf5sjHYO161Q6k6Ik6+x7U04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735324554; c=relaxed/simple;
	bh=aVBzeYJx8jzkUBqstKfIsByrzeLR1Q07W6TTl+WeGqM=;
	h=To:Subject:From:Message-Id:Date; b=Cj4sIQHmxADc/1FC4xIn7cgfKFGBRc4GnYVyI5aHBcUKtE5eoGu59XTXDuicVrJU85dK4XUkIUqn9tJ8DTgm/2JUziTV00WpN70HvICgsV7CON/wx9tSO7DwN7IoWjPnKovqxRCsUlAgyAHf+OMSO+CwKqy4+RdgYYnsZklfVXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lpz49Iio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lpz49Iio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE25C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735324553;
	bh=aVBzeYJx8jzkUBqstKfIsByrzeLR1Q07W6TTl+WeGqM=;
	h=To:Subject:From:Date:From;
	b=Lpz49IioDX1v4L9HyEwYvOnuvmYGAK7qwqMNN8EzaR56k7k7lc3pOP92fGaUuxRV3
	 aT03rYTi3zs7ooLCLiiG4PZqlvdZRiysNT8cleu5TcKCnBaC++BAjCIdc0fEPUHopM
	 B0rFwnwrNE9JF4YaiLX//jHP/C3BnlojYRzATxrLK3bSUKzmvCZsF9fqRyHCvpp0r4
	 1NY9P9HquH/QmYx2sKNZzCJzi7TrYQ0VpiJWsBOalbbDS84RruLxS7A0bfCvaeZ9GX
	 5wYauDds6eIQlKwgo6Aiz+F/C5etJghbTHbuRxIXqgBFmOInII1jzXnXVD/+KMIQTc
	 mAMfgQel9i+Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C2DE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173532455361.22048.11738650379603859234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5edcaff713e45f3090bf309c7c4a9c7d612bc21aec50e4d7d8a9e482142fb7
Date: Fri, 27 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735324553
