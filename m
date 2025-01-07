Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABA61F131A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736265354; cv=none; b=OiyBtwn07wSLGEzOBZtMIyOKD71YrX4OjOWEDGoGN2Q4lOPb9fNGjaRQPjkuHSGJ8lKVC99L//QUCfGL2/+1oZQI39GPkIABmJGpR4LeLi8E4xqwlm+xbTDdrb1/xVXugO2WcInL4unQCEDKDBZH3LaMyCVQqTv6FpwGUFKjUq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736265354; c=relaxed/simple;
	bh=lNJ5L6fwDe44cOV5lYgV1q4/P3Jv+Tjmoxrwcbe56PE=;
	h=To:Subject:From:Message-Id:Date; b=j8rWQ7VSZ7CBldK4A/7Qs72rxlB+dwNdIbE8gbgmcxZ2e5dnckN+idDBwH8Qy0OOFgyCXMWyv013CRGIT4dXKH3WoJKvgVzzlVuqbK3SEwQfLjc5PXeR4AMCEGUaTj/1qGXi3dsfYtKPPKhmSFZdS7mCXubHRYBIg13pt57/ukQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZOfpxDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZOfpxDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DF7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736265353;
	bh=lNJ5L6fwDe44cOV5lYgV1q4/P3Jv+Tjmoxrwcbe56PE=;
	h=To:Subject:From:Date:From;
	b=lZOfpxDnjMUFK3FzUJewQmXoIPBxcEto02dl8VYXwwdISUG87DcRVk075KnRMNXpG
	 T8uzu4hoSvTlxn1fZIX5GKtDcFwJUlrD2nG0wtD1Zr+MRw69jEjhusCJ+5mo6D/pt2
	 oVdamVsgtF3jGiFG35qlrbwvmSIfHNY7DhMRsDi2z51VJsE7KhjYXJijs2+mHdIKkc
	 g3In/BFDLa21ZiStycloAbcBBqocGiKx2hA+aJh34JTBf7yPDcRv6RxDwu9aln/mX6
	 DzgTpC9mXsGrsoXTDofiIkEteoEnO5de64C3zDDPCYu7mWPAnRzkDG4sISpFwuTxhw
	 NePQ0nInQKdKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F61E77199
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626535359.23675.15711315478859911473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb5bbb2b803a738da9e9d0f43d9d0f129bbae084a7c286bf21c819988e00f28c
Date: Tue, 07 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736265353
