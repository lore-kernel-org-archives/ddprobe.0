Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FADB353A7F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786482034; cv=none; b=k8lW4vzJ3dM89ofpJj7EkrbD4Lq0Z8c2Lk0XWE/GRp7zzyGYlgG4/QOxB0X1Hl/pat8+HFqrG7uR3P/NhT95XJaFBE5uJHjPlR0/3CmNyfopxDXOrg79qeoAMLjsVOCxS6vfYrL4AFg78wrKoUXmKySM/y7YrbnY1ACTObT/SAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786482034; c=relaxed/simple;
	bh=cK9OFHNvleLWM2DMfrP0jqVsPijuCc+dJACQldO6KD4=;
	h=To:Subject:From:Message-Id:Date; b=KhbfDmFLzno8vEYNPG0lMRlv1JJfNQk4RRJuXjhF4j0McBIrAhHIJQ6Mw2d6+inlA0s1Qr6CWxjjOaIskQCj66Meu6m9Y4/WBLcS23sc2Cda8dnZTcecN+ik75q4CVcpNp73fQkpo2K5+UUhn5heBg6xYe8ouGHlRFHq3j1iHoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jslkX04R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jslkX04R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2747C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786482033;
	bh=cK9OFHNvleLWM2DMfrP0jqVsPijuCc+dJACQldO6KD4=;
	h=To:Subject:From:Date:From;
	b=jslkX04RX2wFQOcpbityDWOYlRpdGxdmh0Z9nzRQ1zpc2dmUx7Zfgfdty9g/QlIf+
	 AT8bINFLYsA3vK4HZSQfRkyDh+8ygZWsjYbMmyFMPNGxi0R1VG1n/9mmH5QZsUWUtj
	 zEUiwNBaMZgdyeg+Zz6o7rIvZ2WB9PLuYPRHIvIOJX8WQCqfGNIM2N3Lq6NqwIS1RJ
	 mmbu5Te3pQc52JbhnXdU2UE1dpwB//Ztb+WfOsVCCnbA88jH5NXLKm1V52SzhbODhQ
	 ToY/SMoZI2WVQ+j8YTOwVlc9qfdkuvtm9VAdMWSAfutagJJ0KGb6ZaRTpoaDspr/yc
	 rPCjuxj0V5w8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC918C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648203368.4464.14406591640826946762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a14c46073e3b33316b66f5d3a6f346ca7639f3f93e059cf20850fb0f64adf0e
Date: Tue, 11 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786482033
