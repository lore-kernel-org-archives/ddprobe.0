Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241E423B612
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750460394; cv=none; b=nN4xUzOvGxqn9ehCC0AkULqfuN5YzYcbpdhttDuamjGUZ8X8pRfZMdIHlBpqDTz8XHHb7gKWK7f4WYlpEfgEkyLaF2nAFlmVMOJoYJk68VNOVYGY0AECoTIw0l9o/bsR2XCqHgUjqmDO7Suknh6QEhyE+CA2wK9sjRuVus2V0KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750460394; c=relaxed/simple;
	bh=JJjGDI6NShK55aTelJC888gboIl2KbIpsc4M8nJHVaE=;
	h=To:Subject:From:Message-Id:Date; b=K/CK57fiWSposIXdOHGiQ7cfmwIHpnZZHktp4Jux3MMZdSdXTwugXcr4pjbSJiDa2t/oJuLXzdo1eBuC2YsgaK1x5F4/RaoH3aI8U6pVO/+GiKsubmspyBuD1BFH0+8tpa48LGDZNY02ZqDRqSphB9Yp0zlP/5Wasfk9oA/QWRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbhP7/46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbhP7/46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1174C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750460393;
	bh=JJjGDI6NShK55aTelJC888gboIl2KbIpsc4M8nJHVaE=;
	h=To:Subject:From:Date:From;
	b=sbhP7/46R1bCER0UGQSSi9/ItKiCN7yaz/2R3IxOOnJnE68/2b8eyTCNRe04dWgcg
	 oe4Agot+FKj+OQiK6e1bRM7KQ7NJw8CKZYkwiHhvt3kmbBlm0xn8yUsItERFInGTal
	 qnKf8qoarrp+c+IOiW6OsChGa1pb/yideTDr+MXNn64Os1NOWqdW1gRJm4naGTjZg0
	 h0BSVmYiRGI3cKIjkVkEjmG3dGKOxOhOPYEV8obgYO8vrhOWI5dJpI79ftSBk4f+ZU
	 bUtPRtNehuM/ZHshszIMabU+jsT/Sh3NvjFn6EQjbf85fGtQEVrgW13Js3NbIGX0sG
	 YvjKaTkPSDPQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB67C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046039357.29618.537396779258578249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e562803de2609932bc4c85bac05ee3d10e80be0b99c7d25728d01799b245abca
Date: Fri, 20 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750460393
