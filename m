Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18131EADA
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720758443; cv=none; b=ENbKA1iD8uNwm+41XP7T2BYYUCpfXgOrtJ4S8gZo8XKOk2PjjTJuQIY/UROiyNmUN1W5v369th9ADBmepSXWh+tCQX61Tr9Mmk21l5iyC0ynLvfY6s/ecJtifAN7ZnnxgZzbAP4QXHiaUVXEuq+oKv4qflOvMwrE5F9+Z9oyPz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720758443; c=relaxed/simple;
	bh=VZgooppLZXMXpLzfG78txL2PlXL8+swo820VF8gYKXE=;
	h=To:Subject:From:Message-Id:Date; b=GCj+NqlY0ViultrSRe26Sb/O1RUzMeLmZAfgkObl3QjQ4kNwoWIbcgM3ZjjSEfY7kzts6wWJw6e4pLRgWqoA1avYdtcZTzAE3NnExvfsfK+iDvIAUvH949nqOiaDXlDn3cm4JwIulWFK6r0Y2hQRUyBNTnx49rZYYPru4uhbxVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKbKwrm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKbKwrm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C56C3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720758442;
	bh=VZgooppLZXMXpLzfG78txL2PlXL8+swo820VF8gYKXE=;
	h=To:Subject:From:Date:From;
	b=jKbKwrm+ioKRuQyOuFRlCtLxYFSQBeLhqoY92jf3UF0rD1EKLiwjerar6GGP33/nG
	 bJ1cREjhv8OM3vzRwXZmLKBM1V/4ikPBdXKRz188fzpMN+rMvbeqMRgYkHLtIYatCk
	 oQOx8hd3oQ3FUfe1zAqUJDOPUxJIOsCZ9kI9f3PKqfeugRWm2TMNBmH4UK9UxIrK66
	 mnifSODq8DOXEjY5i9hOQ1rRIVu1XCGUXzWqX9kOrIGqgk7Ko3KXvCKegpPgvom1/h
	 1s5IN9FuKTsUlyGpDg5P9zp/xH7TyrInoKwp4nAmfVDiZVuDI9N+Dg8r0Qv3f81Jo+
	 qKqQEYYUmZSbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7DCC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075844280.32569.15422636337975390067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1249f30032b23e84dbc4c5bf08fcbf76e0a5be92e6d78f840a5ffd670f62f980
Date: Fri, 12 Jul 2024 04:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720758442
