Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E721205E3B
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742335194; cv=none; b=NPTumM9pu57/uwbZYAPpil/f2Gwpz3XifRS9Pz9KA9484wXN5Y4YaGvuv/CWceuEr7IDJR1Gl5OG8wwi+bTsVAjs0FlOYIUfdDIqk4KroOJ2jt5DbecTB7o9pTDOnwBjRQJlHzbiPL3Z0xwdPVckSPwOJfruS9Nt4RMZm6chf8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742335194; c=relaxed/simple;
	bh=IT3lR8EuTIHiErO8hcV1fy3Fz6qcEirj9SBTBNXicHg=;
	h=To:Subject:From:Message-Id:Date; b=UAjAoqFgUzyenvmFfGnswbWCWijkuVmxC43i+qH382tm8u5gkljs4gGJ2ChxrJzT6JfcoP3EJX8cOBKhWFAYA3s2TImpKvR67X07SeMjNoN4t/nUPzdvjxiqORhdobJQZi+kvIMbFsYHh5r1A5+wUsOKHKUHnsBJLqgDp0s+OiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9tLfVGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9tLfVGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742335193;
	bh=IT3lR8EuTIHiErO8hcV1fy3Fz6qcEirj9SBTBNXicHg=;
	h=To:Subject:From:Date:From;
	b=f9tLfVGMS0v7A7fKutrnEyxXXTv/sPK+lHuUsVpXT4RgtTUlRx3R1GAxOqmi3JfuR
	 WgYPzVEsZJU8eNgBcXIRqd6ih5j/KoLgIBiEgKY79wCqOw30Rz198nB7pqHI8UgGg7
	 1YYf0mOgLF5iqi7kOL84x9Qh8XgxKGqDtNmcMgey9eb/nYe462q1+VutJvvuRdcEXN
	 Oc/3qyn03GYRzQ6TCj/qkeMOscR2m4tYdcJQrCTLaqe5qYQ13l5GWhDK8T9/0Q61kE
	 my8nXy0q0EuoAJu4bR2lBlnX/m2h2ypet0OGWq6aTslxUkUcKUbZSUkIahj2sVxGIm
	 9VyZTI8eRsvNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E62C35FF3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233519359.13574.11564539711876719769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb819782febe8574c989e2426fb5e1ef81b6e6be13525015627786b1efa04d6
Date: Tue, 18 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742335193
