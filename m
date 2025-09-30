Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B65826C39B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759270194; cv=none; b=NiGUWIghqFQB6YWT6YXOCZLiOHjCXIlcjQ/gf6bVpOYWA7pjbhfLQI23+h2Z2VdaygmN+fo/uyaozLcc06JkxjsRpXPQ5KhKMK4T2vIgS1EAJmP/GXd6rIo+qT3QjJMSJrIU0+2zi3IGDHqD0IAcpk7Ke8ImIho9qACm0q1KtPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759270194; c=relaxed/simple;
	bh=wdj+vAfURMpa/tg4BODJMAAattuBFf8eI10FpcJrg5M=;
	h=To:Subject:From:Message-Id:Date; b=Q/mmpAliG0xlGuvYPc67uFMyTlQTJBHCH8ZEfCqnM6NkXLYrQ8eOa5xxTz+DsLSYMIjpRxb0u0LsyVxP2gR9pucVVYjVGBBWtN2cK4vTCqbdueJ053u/QxBRQlHvglz66wkgp/BuAUKEXyldLwORURZloMJkoifTtiJvQ25537c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0ZooBk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0ZooBk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB910C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759270193;
	bh=wdj+vAfURMpa/tg4BODJMAAattuBFf8eI10FpcJrg5M=;
	h=To:Subject:From:Date:From;
	b=d0ZooBk29ZXESGhpQyBObxmyf4OVF4hoIabO4q6HPoCbAouvvZQD67E7xzaTs+92a
	 dPuTRi3aYJwcEo3doUpQd8lKwcjWjf2oFwe3KJTl7zPmcfh7Hh756a6W9shUIEfc6d
	 KjMdW0NpH7Wsfr0HcHGpnXc+tHHGq2gsc086pNDiqguZFg5UIJn6Ov7geqiDV7Hlou
	 6wPNmevRxGyNXZN8tHV9BBzU+iZH2rRfMvEyqrBf2ZMXzLKXng8tC0UZ8XiTNFURvn
	 AfdDGTqcEKvJi/rc3WHwC355Zdjtk02yTtckgbJWxLYDkFZVs+uGLG7ua2wyTo6b84
	 DIpxb9rNeMEGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A724CCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927019360.27724.7596974372556890218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d371285938702bf7e70e48e981f3c0a5381ef7b71cf3f1b5edc91496e97bf61e
Date: Tue, 30 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759270193
