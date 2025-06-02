Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E861624E1
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748894995; cv=none; b=ROUBxSeoEFzFjlXPBbGDis4yKTUA2mPDFHi0OFHP5Io5MLD21QGor8pvGBX8+qeW08C/G0GpJ8qODgzX1o6hacJ4aHn2+LcKXzbuUiEQ23ucAPngxTVu58M4Gk5OKvn8KWGc8+QAASnhNja54ktk4E7RFCUzvnh5aXafNkHGoQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748894995; c=relaxed/simple;
	bh=YvXT4MpzTCVij9otfIr1nDXK9Lw1DLLGawM8rx0xNjs=;
	h=To:Subject:From:Message-Id:Date; b=qKXN9r0xt3/4822LFEQo7yVI8yjVTd2PA+k6BZyucY+xHySHhswlXS1edSCwsHf2Lpg1oY9HOsuk0rUKCe8I/vdzRcUl7Pf+pqHe3TRsd7DBxi9PEjUDcQ4Z/xg3A/t3mE5zajTelnJ3dGWTzQwj9n+YNtx/rvEegUgQgfZns2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goacme7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goacme7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1AFC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748894993;
	bh=YvXT4MpzTCVij9otfIr1nDXK9Lw1DLLGawM8rx0xNjs=;
	h=To:Subject:From:Date:From;
	b=goacme7DRel7MWTx/E9vNp9dzJQX4GuuG0K45V2kCoeC0/lpJy3XqVy0n8n3e7FmE
	 nsmxtEl5E2haudR4ng+oWfnq58Sn9n8Iv7RHljk0wT2yFwMzFsS/J+1x7lM67zc7Fr
	 Fh0gxkG+wIBWsCWlupCbMk7tqOaNhKxs+2eULdqi94eXPzx9RPyF95Tq/XopLbDyCP
	 fSkiX1MTkGaxw9EByrtzqPlbDuDgqn72Q0wxJp9fVzKhkapht+xdnRfSBMIFV+jy1W
	 ZvUBbkBSYyuN+BiXuvTbSQ21mEKSvhE3Mq8jElnJ8gm9HYRSYpWLR0yrhCu3fr3zAK
	 LuivFKjlKYKfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98419C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889499359.27320.16399865565711089539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1836deac2041178da17738b89c35fa50f28e3b987359493a1e600d818b8445
Date: Mon, 02 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748894993
