Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B046171C9
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769331234; cv=none; b=ePjNKomEEfFd/dISOpsuuzbVSCgTrEiBIyLMw/e29JNvLmWz8T7uCntPBnx8qpZgg/sf82M+iYvEzhP43Hfv1JMuBB9gxiAtH2Mqqaxr58UNZVrMNM/vxVnNWhd5nrS0wkMxnXXbx2rJDTVzp8heh8Em6iFqY/Mqu8mChWtTxOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769331234; c=relaxed/simple;
	bh=+iCyi58bH6cn4UsSe9lJi9VtSq04bhpoaGyLyhK9fSI=;
	h=To:Subject:From:Message-Id:Date; b=P9713HNt+91sSPDnxewszFoTADMo83ygZlvNfuXpdwPPz0oj/9nGjWfF+WETCepTssRg8aCaKaUPhgz1cUE/ekAQ0ZiMzaWZwiO4/CVbK9QiaF7ZeuGlrbXdTdWLqrA5iAUVn6rbhC3eaKvjDd/CD8WnmTptGQT91qs2VfWYFy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+mGSGJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+mGSGJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27F0C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769331233;
	bh=+iCyi58bH6cn4UsSe9lJi9VtSq04bhpoaGyLyhK9fSI=;
	h=To:Subject:From:Date:From;
	b=X+mGSGJEUQu6rAZfzsJvziZMzbnLKAsXBDU1ZC9tUiHKI8Dip/IAfkVfm+9MRslcs
	 MoZaOwGY4uT24B5ED3ss2YFNTsKxJxdeAlWFtwwmhdtcsqJqf7Ckez4zP1mFGNhJfY
	 4mdzD492t92wLqB5turgXGRUuxmc7bouVrB8NqAOgIsnrlp1xjiPfSDJypyM1E4Wlx
	 ftDns+G3v1nY49W9a/aUCNwvi+QD5I5XxuX8x9PT9kr+yz5UOarcejME99OgTOYRvJ
	 4WbqcUDVBEioKHo6ahTjchLgEcV8uqlsfI5WOxEuBsawW+I5/HFhb+lLoap/KfHD1V
	 wz6ozBdqSiilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051BE63C95
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933123358.2440.11000936352062471301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 938d3280f00052d92664887506b6ee8e19e8355486cdb058638651168d83e068
Date: Sun, 25 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769331233
