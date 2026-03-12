Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AA1350297
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773329694; cv=none; b=DrbdDp+4KCFUHGUXYQSmPFsf4NXHspdI7glXmf3rdy9NiqyAoB5AHHvigcbV1ubLhbShka593VQk1qoKSh2n28onj06Tht8ZQ9WWCoN1TVioHferzYnQeZM0jn5Fjmv+gKGxYhk+JTYJqa6XSjSHMMjFwxbdwdFqQq9cqYSU6mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773329694; c=relaxed/simple;
	bh=AC5AQmOksqxegMNnHgIEJwXkzruu/ZkzD+f5bS/qZMY=;
	h=To:Subject:From:Message-Id:Date; b=OuO81CvC9QAFIPNEo9zCQLyRJXd1De7XAQaNXFm2eHeC+v5GaU/aabSlIQn24iYoxJ0XgJ5APW4gRutBepale9HkQzBYebljeaVZV7sQUiFnXjCueK+bg/sb0stNYRvbuqDDsUJhGrLxbXboRKRp00j0qy1u0hgQIyFmsbfFUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRMA/DCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRMA/DCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA98C19424
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773329693;
	bh=AC5AQmOksqxegMNnHgIEJwXkzruu/ZkzD+f5bS/qZMY=;
	h=To:Subject:From:Date:From;
	b=qRMA/DCXixiMSB654KymfCjfVLU06Jhl7YBAodVLEMJpNJcoX5vHDCPHpGilkR77w
	 ze2KaE89+tRQPXXSjYgRyiQJKyMopZRW5Ca8c9G+lY1yucro/uxfGoM1nioiV5sg9W
	 1HO0Dnk9Erw1Um/YQym0a2qysNZiyLeTmCS5XQUGVDVtrJPNXsW794gaG0lEfoM9Y/
	 Cg7vT3MJZREdSw/MmRrm/1u6V0/+2JpLMaRJ33YLsujGtzLcMyvqZM5ZJlYv0nHy4O
	 3V8zqynQXiJLLwo3uQsBgo6DL5IHAhJttf4ClZibV/tlm6ow4I7QolZvXM0clVE5EI
	 6rtj/qP3EWaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E81067046
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177332969357.19680.4593435881962698396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa098f3a3e498ead9ea41e6bdb8eb2cddc5e07c63a12ebed503065216b2c773
Date: Thu, 12 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773329693
