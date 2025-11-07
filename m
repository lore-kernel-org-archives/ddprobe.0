Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9421DE4E0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762474194; cv=none; b=HyXySIuib1bS2JsmXsblLs3rzcBcb0SRUZW3WVmKJGfL2kqsxpzZis5KXpXubfVc9PR6uj8saA1wbQtzuY+3tOMrYnqApy1ZDrRBKHUxR5Yowt2D4LuHdMfIQKIjKZYQ9+gsxAey0/5PUSq14QlWPQXg0TBuQwFaZLa6+rqw7t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762474194; c=relaxed/simple;
	bh=mCj8lvVh5RfiU4CE8pcoGU60Z5PY4mvCB+iBWFy+mNk=;
	h=To:Subject:From:Message-Id:Date; b=gYx3vlfAKi9QX8ybv+GhoIWBRXnXqW9tywit78lrhPtlmsuOfijjKItZoKCUk1hMc6SGmlaeFbpAaqqc9fk1609hAADYHJ0J3SEhiLSWsICaHzkaUOTB+5Y4Bf0x9t3ELBhSu/1KIWl0vxN5DT1tR7lEXP2fx13FGEXjaG5Epvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9HSHJGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9HSHJGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AB0C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762474193;
	bh=mCj8lvVh5RfiU4CE8pcoGU60Z5PY4mvCB+iBWFy+mNk=;
	h=To:Subject:From:Date:From;
	b=U9HSHJGeEN/SZYMCOXVfPtNX85gH1QsFTQt5AcTwOCuYKfz9m/eV6Lz8u7Vkh+TOp
	 Q1Ogyr65pEOwT4Xjho2OrUHiL8+xwYW5BYRl2Z0NF6hs/aYr5hDHg+IK+S3X2x5Y3k
	 LKBUte8S/o7QYUgZD///9eEDoNOb4S5cU1AI1xWge1lWKoshbMAW4mxeH9VgrqRcVV
	 8ykIZYzGJnpa8x0P5TtI3opgLCSLDGCa6ZnxlNvWrNyprKvNYWR/vyjb6Kt80jIX3H
	 GJeS23vT0o60o7mKhaIW1ahQvYLoG9PCkQUwlB/duux/IIZ5mAEJEb395dz+cVyR9o
	 vjsxj7SG26olA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3D8CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247419362.17202.4022421754426631450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dd2e9046b2d56698bd3b8159ce75046ff4df43d978cf2c9e04fcc65c1ba173
Date: Fri, 07 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762474193
