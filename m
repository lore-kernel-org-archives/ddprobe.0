Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215BA2F3C3E
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761562194; cv=none; b=PdsPeVWrzhOwyst7L8SlmzWbo6X3pBP3svVfylfZ50DMURZBGKKYniyZVVwfcwFv4QNMHbtWVuKTzGvrcSOoI8ldyXjs0jvxr1WlMi5feX8KxS1w+zSvR3XxiaMakguEtWzyxXhWdYANBuzhW2zdIVNEYGdSrVIG2d7TtiENlrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761562194; c=relaxed/simple;
	bh=LS1R8vUEP0ANmXAwNhguwoubyzfjMXJkRPAjYOD15f0=;
	h=To:Subject:From:Message-Id:Date; b=aJ25Cd8YuGchVeIPJ6rr2OIfXoRkdTVWGwMy3EjuyJjyoIMvpR6PM2jNG+oRd79DRK3wGcQ9+gDv0MOZEpncXZ1T7SJ6067K2tmcH5C8sNKLwPlNHzKBa4a0nnlIVl9FS8Hulh1PEdA2hsxmJTRUNNW/bXbRwHs4RYahLp+uPb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2GW5Ubk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2GW5Ubk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E99DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761562193;
	bh=LS1R8vUEP0ANmXAwNhguwoubyzfjMXJkRPAjYOD15f0=;
	h=To:Subject:From:Date:From;
	b=J2GW5UbkIxI1J9WEMBiGLvUqkyIXe+SioNy7pnEHuF27NW9j22dAh/OuhjG3LU9BY
	 /hoBNVOCT2ACjZa8wYPpgDwGnyffqgw0mXv6qAd/0+E0EgtpQDskdeXLgGsZ75s/tW
	 PhAL5yU8rcUnfSdBeo1vxJlM7xPVCap8clXd3iGyGw3iRQn2A8LTyMVvC0Modz/TBu
	 Gipi8fNVU1l8tZHVYJdpDDjflqGOc5o3ZRcrxQI+opYwzn11VEako/WF21c5Crcnxx
	 1nd1P4O3UoPoViuwk5LdeDnSU7avbzU1riUvR8tecgoWgSATKf7yU/N03e4VR5IfoV
	 qF9/TXFzTrcng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E901CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156219357.26142.10292646604138730837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303d614cb06a2f780f7486fb625cba88e8c220f42f28ec3a0fa87fe83d5ab39c
Date: Mon, 27 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761562193
