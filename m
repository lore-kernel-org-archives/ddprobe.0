Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C75686338
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753734595; cv=none; b=NttGeX7X/4MbD5FnCYwnr4cZF4Z2Hq31nHUBtU+tsFaOK4onekHKY8CmgTD6HCW9riHwK0arpXEnxyr6b6bud9YMxiD9yQodIr3x933jn12RSrf9sKEjdjP8AnaNx3RjSnMqWpigf9dcZHBLwM2Y962IQxwZczHhFVAC9byma08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753734595; c=relaxed/simple;
	bh=/VdtcIVX7tboQBMn3Hoc5sWVyOrulFiaBR/99mAb+uU=;
	h=To:Subject:From:Message-Id:Date; b=VgfpsT8QpDxHxoRQ76n9UevIlyzNBf2GBHXhL13E7jn9/AKDhp+rUwKbMW+tUln2edMEdNEjX4bbyc6HsODeLxXBaZoCH9oYpR7GN7iTT3eVAmT1h7xjNGtsozpAABP7MxWnN9dgJa6lpSuKvl2F/I1+M8Bh5gSz4kvMrNiBO20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jif1ohKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jif1ohKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3C6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753734593;
	bh=/VdtcIVX7tboQBMn3Hoc5sWVyOrulFiaBR/99mAb+uU=;
	h=To:Subject:From:Date:From;
	b=Jif1ohKodNhHkUi4O2QxcYE0DkS6HxQGVwbe6ebUp24rNXmdVK0m3vIVLiWR7T3Tj
	 VSyddp5+3gZ7bgI1G6SjxWB8xWvCOd1oITxw+yZO5xI+UQAqIrYozk9Ji6vfhmgMeR
	 dFJUOKqfVrdlYPgKW9G43wHJ2LXW59TjzHMafJ2fMrMmI3RBCgfI6MTB9TTEFFmmKH
	 gRYQUfig5pIWDjkAH04qlHe/zqqpl/qd7Ap+LRSwZnTZOoubrpPsFjn7/W1eH4sWvx
	 PwZ4EBoZzJN3xSVT+Ua1xMtsdLkYcjiVu07ad66MbILZZaW1r7z2lhZ/3Z0VmjwC/a
	 w1lcqOKhrt+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4424C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373459362.28014.10269807520063979167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f5ac537eb67274027a9f82f9b49afc544da4dbc4e827e536b3497476dcad72
Date: Mon, 28 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753734593
