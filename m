Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C5A283124
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757138394; cv=none; b=uJGRwQJNHjEJqhC48VMX2Gv2M0mhRCLDKr2OuKS54epWSF9bUHJZ0+ay/HVMzkOR4pCb7HxwkIFCqrzU5nj+wSHOywGyqE0JZ04NWUpTcFwkvC1Zj+Q3NeR2qPZNII0JVRG+HuEzez39+c40xEH/jfFGBu0DaFfUgvC+DpVg8j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757138394; c=relaxed/simple;
	bh=VSfJtgK/tjMaU/o8AiW5Hrxfj08Meid7NWa1/sX/WSc=;
	h=To:Subject:From:Message-Id:Date; b=oInCYIiR13I8ZhT4Nxv0qZ1PI1ti52HPmagQDjEWowxK3UglGNfk/RpFI8CCfN2PSztQv4gl7v1dzVDUoLVfTEL9vJfuwpiC3YiEL6q6UTvsHqGRCp5iW2SdzlgT2uBpA8rDD5rY8AlIYRzNbkOiZz+dEvRhTzDoQfH/PMX4VqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKbRQbCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKbRQbCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757138393;
	bh=VSfJtgK/tjMaU/o8AiW5Hrxfj08Meid7NWa1/sX/WSc=;
	h=To:Subject:From:Date:From;
	b=WKbRQbCE74SvYXNUXifpjafQf8yQBGb8VFkifL0HKc8QPrNhrxnclQxeg2UDmhppR
	 gooJW7BopHNXvmxl9hooGK9CtcaZBRT8MjNlNhIvEu5p/bws1jMYoQB/lLh+ursejW
	 9V4J7Kqp6PLlF3uvTZQ7S8CPGWvtVosKKByRh1auqGUiW0c3WsN+UFhmmg0U5ERS+o
	 sm0nMokHisSP5PCesNO2CspKfhSJXk1GDW537XVeQ1w7ilVjRIlQFSVM83wLNvWIuZ
	 ks7ojwOfb64lrv0IY9h2BskdGn+phGDKK6JYpt0jdzU36i0Uiq1HbfRXX9fWX0Oo3a
	 ap21UdP/iKvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9114ECA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713839358.12293.8972706712407639923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccc4587f33cb02a5ecea89b07bbf99bab3c0d21210842573ebd643e50a4a5e5
Date: Sat, 06 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757138393
