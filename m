Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6791A39FD8
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715631743; cv=none; b=tivOc+8+Ol9W2tAMRhAI5S8CB0Q08QScrcmWlefK9vBoKwMY01T41XbyrDYBvLY9mjm0oG/fyBGsYVOW/xfBEYhVpIsuLlOpE+KQzJe87XStb+qn5jHiJve5ZW3IvxDtqRZsmuOTlTPLuOynUuzQIDBS06m0IhvDNcjzr47ok50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715631743; c=relaxed/simple;
	bh=ePxDlbitbSCu1cZKb8I1qq9qLvYf8pyvpA18Aca7Nq0=;
	h=To:Subject:From:Message-Id:Date; b=IcoLvSuSYh2RyC0WYZ7GJANWK2AWzohqj5AJXnIKQySUg9DXB7GPaCgZO7zCkCoMVRRilWcJya3TfQFGcz65bk24SyV0a1st4kmLlaCtSfUJTot1T2i8qUXNhbXhcuBIqMyNbG2KbWTPmRjZ2q977WmvLfMwKyBAy9i1Wb8r7X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evOfnjDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evOfnjDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BC7C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715631742;
	bh=ePxDlbitbSCu1cZKb8I1qq9qLvYf8pyvpA18Aca7Nq0=;
	h=To:Subject:From:Date:From;
	b=evOfnjDOmJmtIrkpjUruFDO2r3yITvxxferbEUhJQypODdG8QNnPTrGEMoE6/nLGu
	 CC/bpkBVSZRCALzXiqISBF0AD/Xp68O2QbFoDsxTdDNBl+mZcgWvPE+bSAS93TbIEQ
	 bmJxvlUcy3ywSKGyApupRNIgvOxILxJ8M08RSMqAZC3c92MHZF0wLs7YDG7vcmhPTw
	 AQtmVIj2ulLOXudyNvywt9qIl4GlXiMjzeLTVGX4F+8Crw70xfAe/NTYwsT5syY4zU
	 QzlT+OO20GupCLh+Ews8ImJ2oid8Baz8U/4FxShDpfTt0cM+GNQXET+Yx8L6D47Gyo
	 y36kujBQ3grPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE01C25B75
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171563174279.32083.3145972958597171116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff029ba658baf21a98027ec1eba979ba77b11b103ce7a1b23804a940d71f026d
Date: Mon, 13 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715631742
