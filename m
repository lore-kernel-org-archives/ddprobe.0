Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555A45474E
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786940434; cv=none; b=oVvA9Ui8GxzifHwH5hlMNsv4eXEJekxhXjcpbwTfc/lP41eKUvnMuePkSh71ZD+tasVI4r3POuD2zFIV6adHLAW/zccO60U5sFCM6n3da04RUta35Shv2WRTAjs6PbWftpQmCKz2W86PfmjUFg0DmEEg28IUSAQsDP+RII3auqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786940434; c=relaxed/simple;
	bh=b24HxjuuLuNgokDjme9B3IMRErEw8HcNEPfR9mkAwlY=;
	h=To:Subject:From:Message-Id:Date; b=sJfOUk82Fh+bW5l2K0976u5ReZHZrjUaDBqit6m4aAJ1GXciJDLmU5A3H56P+rncwY9UHJMk1hb2FzhsNjm+3+XuiU7qNnKaWcaA7yLAZ2A4nuhIYWfncpVv8NihZhO9MsdnQ6z9BWyCb19oC55vDqOBZBH3/p7RFCJQ2Nbq/5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlRQbEvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlRQbEvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE1CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786940433;
	bh=b24HxjuuLuNgokDjme9B3IMRErEw8HcNEPfR9mkAwlY=;
	h=To:Subject:From:Date:From;
	b=RlRQbEvEC44M39hnOo2MmVtIsP6Oqw0FqwWyQmMd5c3tE5mAh83/cshUr/nbrrAjB
	 ZuAkpHJBiv88BfoUdHtXLxW4ZPjZEycTeehULOAJ6gJvsyDnhn0GavRipiXfPCwO4p
	 Dl7tyynXcwxdqKiV9G8hZ4ICtZvc+ziBFAfUdcSAm1bRL1BGlfRz0QBvk6sgxhtNW8
	 xtaoLU/pL6vHA+HibWprWbDVdLQKza1TTRMOoqYYCpJ4Y21rVjMsNXSktkrH/bVyMv
	 vEvc8p+IxJErP9j0Q70Tar9rvSqKSUhfrbDXjwwhCloIiBWYiZPCl9h2Fe0qKDaawT
	 Kx1beyHg/RCsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B4DC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694043371.13427.18083161029228197994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6ac0eaf652edcb32789d6d2a58a0b3871b71beb4a5e37079ce049ed0f991dc
Date: Mon, 17 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786940433
