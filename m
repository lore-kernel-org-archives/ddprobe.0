Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07D383C66
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784455114; cv=none; b=D94h6Snz17auTS5ij0TLJXYbES0ZpnKQUTJjaPSYm3rZfimF09bsEuKoh8bQywz0rIC8dGfizf16lMUXRoPMqXfKAVhcYXo6AJS+2pSTXgVBY8OhC+0rocO8RkwWKjn8Q+vRMLRhgMBHj2lBjfU+5TTPzFvITEkFw4ib1pFMvwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784455114; c=relaxed/simple;
	bh=dYvrls3mTJ16dGsZbnFMplr67eDbYBsOrlJ8M2NtMgk=;
	h=To:Subject:From:Message-Id:Date; b=oKea4zxKBRQipCkNk0llx+6FssT5/RXCsQbJykKN8iXbgS0dIvuADLQpm6DXX2UhmNPXIwKGJKpfzfOZg034CocdH+H1dtaD7E2zaXjHsrMlPUKGbx9RzZuaqssk8UFuirwt2kLf7kkyzYPACj3skfuOyF8rJcfNG+9A1qd/CdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVgnOv4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVgnOv4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5C5C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784455113;
	bh=dYvrls3mTJ16dGsZbnFMplr67eDbYBsOrlJ8M2NtMgk=;
	h=To:Subject:From:Date:From;
	b=JVgnOv4syRs+iZb75pPH/AqZYvHK4euesFzGTWY3VV0/TgEITeP03C2a+f1OggP2p
	 jYCdZeMKh2ymtVXuklJSn+xuhtBrkMdIE7JFOUpGYTI9hwyqdYlSsxc8itKtayIw2z
	 xZQWMf1hxMTikL32kwKtvX0daM8M8yVpOZE6CknPw5l/PWmEwFOi4wHYwgVCUv0Y6w
	 DfcAnskpFsjxzW941LfBYY/bmZR3GoNTL2j371JQPHI97lDLkkZEs2s3LZZYhOqzdW
	 LCB0VtL6im7nGFzhzdV6taFioIEEejX0HE7vKozr2a6rKz7LpT8Jhq1RsgC+WKHa87
	 Qdziy5xF4+Y9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D5C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445511368.6798.7437954073160760436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c9a4cf3fd37a4b15fe7d8151c1310ae769a5e4175377313c59a8db4e765123
Date: Sun, 19 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784455113
