Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508DB13777E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784097514; cv=none; b=OmUTg7lfI0p9ZcwMJk2ob3+P99UPDjEAfXLJHpvAtxOwxWGG6FFI45S9GXaQ7zEjAB8b/SKiuoOlNQW8p0siG9dOEwvp1uD3pwZy5bV+dHtHUhItQrdN8RIjWTzvQNYRzM0OeV0VUTQZd7sVLqksoNKkLn6n/xz5bWVVmtJlj80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784097514; c=relaxed/simple;
	bh=1vT33mazuOSqV755vI/OjRMhqQy3HRSPw7KBTQ/V5sc=;
	h=To:Subject:From:Message-Id:Date; b=uUwHe5/iq45EFSmTVEG4Jrv8Lzii7QIlu3Ya1LA8v1PpiKetdeo1kEOqtKqjcT6LsJXS2l/J4jSFlusJ0IotO7NzXBOGYlsZenrrjH4d3mUaP28APsAQMwrJAqa4MptTSF3NWQ3MqIdS+lzKPm8vQUB4A5lJrv2JAIBejxxCNNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki6sIXPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki6sIXPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14F6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784097513;
	bh=1vT33mazuOSqV755vI/OjRMhqQy3HRSPw7KBTQ/V5sc=;
	h=To:Subject:From:Date:From;
	b=ki6sIXPyGCAOttaxUVU8kmggHF2tTY52l7d8oKXEYcCygkMt9Tlu4GPrWlQbGHgaE
	 5zJuzL6PpKwC4mM6JwIZvEOgqtER5KbZ0Wc17pC+UZnTy+6zMV4NTbbU8+z+NLYd41
	 cRrUcVeAkDpmsSkh+Fkn2degbStraflFlFNuzWSDTFE4CcrbegzsbqYJoYCj0G+cPU
	 RozGyO6DkE/aG5DgBjydfEa2jWejEwPlcF86EI/NTieV3SYMKtaR/m0st3xhiBBT4q
	 nD+OouQr4/+stidcGbo3eA/V5C9sGXSJ51WwCZ5DNRFTMB0D66QT+efoofNfRArkRW
	 c7f4I50lJD12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE36C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409751370.28322.11906307491350413820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa83a74f8cd3c42997fdebbed1ba0fc8889d0ce250e86c84e6627202d2e0dcdb
Date: Wed, 15 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784097513
