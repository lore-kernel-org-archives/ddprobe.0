Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AB61397
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773923694; cv=none; b=hT6mKnbNZkRRPHXjxPcvpgQV6aNPD7mKJjRiyCgc2WhqAyo0nlf8LXr2i4MrudHigZUewoa6tRmqa49fYcipJ/5yvOSSHrQ4dnOgBHKR0qphUQUo4P3YSaPzZuY2sEUQxjnxUxgxDG+y56mDeYu7VYMPuBT0JK47dlBWppdkaDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773923694; c=relaxed/simple;
	bh=V8tdUS1QeX2ImGgWZw548XUvdqoJ6mjNXOkMhnb/KVE=;
	h=To:Subject:From:Message-Id:Date; b=fxiZRGCgRtvCjtYqeWnDnfKzT8lno00VyzQNChjAPYtq7ReY2vjV4A74kHzNQrToA+LgUNyFgLm39r77ezVjFYWcgdRGhLXGbssVvzF86SbdyJD3KvQHxO/Ojv8dqDzlQwGGsfYZksTCpXd/jfwg47Cn5GyrVdO7PcpSBZhe90o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axGufYpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axGufYpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E54BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773923693;
	bh=V8tdUS1QeX2ImGgWZw548XUvdqoJ6mjNXOkMhnb/KVE=;
	h=To:Subject:From:Date:From;
	b=axGufYpdIg6/VBR1p2reu5FN+Kn7TTh9gyZfn/jSFcC0S6/pjxqk3mKymytNTSqHC
	 3x2C2J7QdMZ2AWsh4O80jKbYjevaS2WGvBuqALy1WZOJhVS9cuiKPO5dr5KAXVIX9V
	 vD3Rs7UqDVYPxQ4vHNg2UUsbgZA+Ni3hlHECQSiL5U7qNbgjK0eFo0/fNs5PNNnc3l
	 6JlWurpdie6jthr5n9OL3AvTyy0qEgIPkEIi48EFu/2EGaseCsxSLsI9m6he6Ik6JY
	 hVcCTOGIW2R5lOqijV4QgF3GSwY/pV7XLleUoFo1K7G8BF89YjOigUyOwSGAFIMe39
	 S+Z/IuZLjFGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37D1088E71
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392369357.24132.2606146723897384448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39fbdea012b7a67bd210ffc30fda0863733bd680e6af4c9d239fca40935d2b05
Date: Thu, 19 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773923693
