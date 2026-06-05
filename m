Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DCD3D9021
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780638874; cv=none; b=i+5JZ3jaTlRMNUsXis+g9NiPTlL5l8kVYYVNxy9jjZy/UYNCIm5dRksB2EqkNeZrPzX9ugxcfb20fksd9/IX6wrguBHIBI/oa0vpkAiHQMWEIeeeP1Y2hDPHsuw4sowhASNqwpP+ppsUa5u9IMLdIEgFWDWTla1wAKMoBLFdqAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780638874; c=relaxed/simple;
	bh=vFs4p8Myjzq2IUktjGWizqDg5SzU2UHGVJ4PKcf12Cs=;
	h=To:Subject:From:Message-Id:Date; b=LUdfkpMXB5npo7+EVhSR7jH2rSGdS2RXS6XeI39B6KTy/CUK+4LvycV4nP57YURQZGe70UF6fHZMqs9tpbiY7Dz1BmN/ISxxYlyj/yW2yxWJZffoiAjiVsmd3ZPe/7vHsGVhcnuQAhhhqJvV7cZrIk7ja498TA+Ib6sZgvL2Zyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMWE3iMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMWE3iMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C572CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780638873;
	bh=vFs4p8Myjzq2IUktjGWizqDg5SzU2UHGVJ4PKcf12Cs=;
	h=To:Subject:From:Date:From;
	b=FMWE3iMPuiYKq2UeWSCk1pFJzKd+hxEZIicVS8Y7AeW68dYP5r0A+QwbhsbFM/yFu
	 2b0SeesG6WDyzl2qUmuGKuLDrRwXeWEPCp8jyHglWhLjY5RxUUeSwYQjEeqb0/LrDl
	 Uwl8G9wRgoCgYCg7u/EQdELonCQbO8IV1x2olsvzE6u4Qd+S2DleGsVNKxLHsg4Jc0
	 os7dU/qo/YkZll47bAG5Nh+J9H317l1tqvSU49BU3z8ogHpQxMjInkXnLntqTFugf5
	 q48nSStZmJFFjv4xT4UaG4HcEf0Cci/34sbxFQiqd5Pu9ZIIkUOdXBnQocJdaj85US
	 cFzpzNGYCQKIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6BBCD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063887370.4128.7910780838050387467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b85edc9e5fe478fbf0b176c0c4a143ff29c2df21625edde40631ef93f21c762
Date: Fri, 05 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780638873
