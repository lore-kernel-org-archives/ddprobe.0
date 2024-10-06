Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D79516F265
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728249954; cv=none; b=OGw44f7wpnxKSc9QzoXp/Kibm459ixLDOZvRgwsvudANgK7ObyOa4UHB7oUH18j7RpuuVCLKjwWKIaSa3aTq1SVsrkbLQYY6efZeSoi1kgssC1iSXX/SG1sHbWhM7YYART5ILKXjW0O3BTiv11JAXzY/gBQpqfVKgTo/DxwOqVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728249954; c=relaxed/simple;
	bh=crgDhWdX0PzM92ZmzmVr9xPldrtTlli8ZI2yiHqRS6M=;
	h=To:Subject:From:Message-Id:Date; b=VnQbCweb5QQsXLb/m1346OLZw/ohRoFQftJhmW+NKLtyzw0zgH8D0C/DH8yXN5Iygj4i4yEqOh3uyveX2zok0e3IW9iVFs472UF3pOOtOs0/IaDaJYsAJ02tS9isfxhGczmijqXJONqOP0PoSCrXCwyv8xjtpnFaOhO6HlyBDeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMXx/13T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMXx/13T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A39C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728249953;
	bh=crgDhWdX0PzM92ZmzmVr9xPldrtTlli8ZI2yiHqRS6M=;
	h=To:Subject:From:Date:From;
	b=jMXx/13T71iKZYY5X4qRXPluRd31erL/IsG4PvfgVOUc3i9ZIhZ2/uxuvF9fV9Lvc
	 /CjA/1LTf0qu4XdRTtU+XhSpynU424XnzF7qkiroPOUVz3sAwwBm7y3JbN5Yga/X9E
	 0bFWNdFfqP3chwIpVzfYGo7ivnL9YBh7QVeeo5rLczH08QT3xajVq5iA5664yT1gK9
	 Vjf9Nce98qP/X4Xw+vxZSfVlEGJJT5+c1b39uBCIIl8rjSSjYf58WhnuGHaAW4c63P
	 1qbTaWgVoxk6fUsrtwqqx27OXE0vyXDn3f1yUcb7bpPgjZKvX5CPxTHVCu7seYMvzL
	 Ym8VxbhLUXWcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91934CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824995358.8283.7219559103434935570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1127c46bb4c96dd6bf59da8e7054ef3920ba38b1c5689a2eeee246eba2e4deb9
Date: Sun, 06 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728249953
