Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4115A45039
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782056794; cv=none; b=ZiRT6Sqcl9tevKEb9tY3g7YBkOFSNzrRjIaI6gLkTztK5LfuyEHXffkTtj9JxhKnJ/JAevQmYlgP8eXIlff+88ofGMlDGPagxdFh0xMmYsh6nEwpmciHzZHXTyFoDXYud77UeLjRIlUGbNT+9wKHwtNmpME8+RAgOcblcm7dbmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782056794; c=relaxed/simple;
	bh=LrttgMISSrotpWoXKGzmD5VJHF3ZVThrJU/nzv55hPU=;
	h=To:Subject:From:Message-Id:Date; b=XDNa1d7ruJBuyBW067OuykK2uZ/vwWuVZ3G01syzBxr/0oNj5olrcwOIsoW0WEJTZxBcZvILXlRVNZz1TDL53Wtxt31jvhF2DV9vWk3f+poYLunJL8ijQDbFp2Z2EfXnfdP9sBzJm9qjkrimF51DSRrD8iChZzvzj/CSFDc+4js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDQMjRXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDQMjRXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4BEC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782056793;
	bh=LrttgMISSrotpWoXKGzmD5VJHF3ZVThrJU/nzv55hPU=;
	h=To:Subject:From:Date:From;
	b=oDQMjRXlQMlcEViGUrA1DLpBGCyM0A/KQ5oJ6/7F+3LbXNvBBEnu6l6syQEdONq9S
	 cHJWEssCXwW0gl+gnzsnBQnBNgWYhqA7rwqaC/j2LuvIO4TJLLgm164sTP9DSOuiGa
	 05zJAz8MXOM2/1cvE6toYnh4BU/RZ1fOTcxY7oQRY5dxrIxfNxxK4CQXiCZXhS2OXw
	 fSPN3xLH8//vuHaAwf4wUbVe+IiPtX6Kv/sYV5VlHwFnzvyGmjyzzTi4ie8N39QSzC
	 onGWvyjHPWahWnQahP23Tx7sJzlCUH5fypnjy/FwzUvBuogcDJIXMKNZr9RVURAt+y
	 k2YiWaCvMIJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D18CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205679369.31110.6031526664288719791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0050f28b58bd1fd610dcc848cbc3329ae193c753ee2c498b9d469bcd83538173
Date: Sun, 21 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782056793
