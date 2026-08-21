Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F66B3C2BBE
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787348434; cv=none; b=JpcrhfEQDO6NzcoWYToLAlXF0sKTO5kvfI5yG0WOGJTA01M0Azq4p5Ji5SmV3SLx7QLPwrQH4yjIWZKQWmveYHxLcGoZHLXPdeB9U5rhu0Bmcpm81wLl9nxHSGZYlFAQjqGzws1LvJ1lgkTD2WbAC14RisO328Ik9hDc6oY2b4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787348434; c=relaxed/simple;
	bh=Hl7nXSUkOdhgnO65WPekhgG7HqcGcxDigeJqtk+Z5CA=;
	h=To:Subject:From:Message-Id:Date; b=aldsCijnPCdqimat9ManDQNWHDY8pPzMbSOIqrx1wF3oczh6TuQ0N9jvjEUdSsdlTMXRLkjl8gVVFH7v09XydTXcqAO/OhIC6g5ks38UWtxyiZU9hjsm9AL8QmBwrMMWbR2XMzd9VPJmtzyesdCpow6GdMkm0iDK2PlTjM+MuTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVyh4F+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVyh4F+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D18C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787348433;
	bh=Hl7nXSUkOdhgnO65WPekhgG7HqcGcxDigeJqtk+Z5CA=;
	h=To:Subject:From:Date:From;
	b=FVyh4F+PxiSxq20s9sN63Hj40m9rcL5thrGV5RAgltFrPV428sm6q4buhCj+JW953
	 vAk8/lfGB7SkTMXYofP+venYgnKXqdp52y9nzTKzo4oNhmHMOZM1sVfcVehJGGcQdm
	 A+kGdq5vPgJVREUSr1FUvUCWdZzBZuzNKG+aiOe5/K08pHaRji6dgVBl0PqrFd+3qk
	 1832IGIcGh4fm/D7KssTNcKyOemiwMzlxoTOw6edRHebfiNfh6EJBHn7p6LT7/mZR6
	 SwBYjBOVPXitkI58EeguFTfwlyMUhTCtAd1ZPxlfiZayl+Jkrpbkry0NRL8KAEBkdE
	 bCmp9c6qcfQAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1644C5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734843369.8952.4400339625919990528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb69217b68bbd8a644575389442a79b2252db14437662010c601a9d4a56a7ac9
Date: Fri, 21 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787348433
