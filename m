Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB5C1A9FBD
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782502714; cv=none; b=ExYjWhDDHG/gnoO7C61RjnkMieAwHInxkKXHcwo4aROXs+LSCL9k6dp/IwV5EjhVupxUUAu7c0KuLuVq1bjjjTtjov85kb+03HFqCne4TVxVmj1GRVI4xmPIGZqaiEizKA5UKXRsFDctUZWldx9CCQTyysnXJfUCyweeNkpZ0AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782502714; c=relaxed/simple;
	bh=XJfxVCYJRA23nWdvxeyj+6jsuszIGrx6s70SuLvYct0=;
	h=To:Subject:From:Message-Id:Date; b=VZ9hmjGRtsaTK5dclamRvOaBebVKmgCowK9ca7iftc/wiroWt/orYNANOIQ1mEF3aKcasN95gik75RvuMmeqasBNC5LL9pNbWVQzNVzXivaUywHq8aqMuX53MiZTUoWMmPfQRYjIskBWORXRBq3JRC+xXmsDyAHxwzgXN+yYYhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDIIkjYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDIIkjYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F269C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782502714;
	bh=XJfxVCYJRA23nWdvxeyj+6jsuszIGrx6s70SuLvYct0=;
	h=To:Subject:From:Date:From;
	b=cDIIkjYKiT62zl+RlFvBSD1Ze86KwMI6i49VTdCQMdA7PybNfMKoSjloGwIaaj7Jz
	 pEFbx2ecZITP8jsbu9OuJlS6jQNRzVOUzjtrJdw3K+GGbK2Xtb666wS/Glb0Xk8LRi
	 iT3qHsYlt338x2afp2K56+HHFkQ7sXgSA74UI0A5woHhkGDAxMj01Lh8qSQHtU0ibI
	 E2Spej+bpIurxcSys8hieGQ4kKM7kmYwgyoM84luCpwhW3y85d+HosXdOqbtfsgwHb
	 htQcWqvaI1PqRh7dJnmKdJt5K9IOtVADpU5QgA9oXUXcwte0uU8ZMwPG0RgGy1dgMJ
	 3S/YN6xUGxVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF1A0C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178250271372.24236.3793854474162888920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36eb016207d8de218afce94ddb0b245fa07383da47931e95bf23d6c3e09d92a
Date: Fri, 26 Jun 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782502713
