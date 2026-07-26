Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07A53BC68A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785085234; cv=none; b=a+h3o+q9So70kfMDHyFx2ZsJtDVVNwuPgi16P7uJZKsiDe6qgLsGKSlYd9SiyQHyvWsmAf/qt2fU7hIGNhY4dxi74cUDGs3q/A78INV6Bawe+yEblvtEds7H4xzKQV/5QmWX0HM/1QdkZxlmAxejrUEqoG+33FUVgbVmHdT2JvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785085234; c=relaxed/simple;
	bh=8G/sM9DI1pw3CaAZsIGgeE2g+VhgHHBBNLN16Oos8Uc=;
	h=To:Subject:From:Message-Id:Date; b=ly5kjMdSixoTqO17wyK+GWeXPzBgT0vYdgbTa7UOpVcTXy3ak+JrDXzTHK/pjtkwGeuv9CjtzBsZA2N5Pj8qAOuOO+xA+U3jb4X1hjQBnsZs+e0PSQYWWKAUzSiNbMGo/qUBnYT4TiqU26ULfuRK0quDucTTp6SOBdo88WZ2T7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDfuqXEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDfuqXEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF35EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785085233;
	bh=8G/sM9DI1pw3CaAZsIGgeE2g+VhgHHBBNLN16Oos8Uc=;
	h=To:Subject:From:Date:From;
	b=EDfuqXExHC5oZ2E11Rwh+ODxMXH652cT9KSUdhg1diXQ1bxcJXAtl5ONZ7O5q6mJf
	 MncSn6NjUGQyeyjx0IRVuftdkFgkNCRAw4RS6fn183TP5z5vzxk/BSwuTWrtWMP+T8
	 TA+fZLlK2gCco+MOr+H5gE7fsLOw94KiRah9ezNoHBi5t3GmtQpiR9+hUlafBqzjuY
	 i/dVz481YY/s7Hfjmo68bukE90xxZ+L6bdwMDmOIt+MI5VkAm0h7A08EH8oFOrbtJ1
	 /EhyLSAFkDd//T9RAVjJhUDCfzu7Mrb9XuKzF394kAn8/a1Ap5PzvU1wXT/6Q/yJYO
	 P6IYWpibA1WnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE276C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508523368.1989.2924365256690058675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf9eef637ec52f65c21c9dbbde0f0c5eb8d7b0fb0cf234925b9a1f0d747dbd2
Date: Sun, 26 Jul 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785085233
