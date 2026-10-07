Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760FF385529
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791370834; cv=none; b=b6C7C9jIY077zyc3VQ0T7lRpoc63xvUteY51GoA07ybvIEmFq4tvKyEWv/5XGE4RsM5eea2pWv3TDVawRGdFez7yIEICbmiyntvfF6mEPA33mS7GeIeAM6jDYEkxIRXI2PBOsFmsxfPoQHWrmJlZ6+MRt297KVtNLEFAmQyAUvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791370834; c=relaxed/simple;
	bh=Pt1pACD/DLsH3zxvjqM8zWVQkA8A7ix5OWmQlLSTIsI=;
	h=To:Subject:From:Message-Id:Date; b=i4XIBCRO3sFQDn1GJjJW1B9DlTHlArEmRjAzSqtzxrQ5ekxg32a3YmoK2g8PJezEsAdCtpAuMHchdAG0e6WNhjAKg4qpthEt9BwCLLq1pLSEP6RbrFXZyWhphc55wp9bsRrnvXb2zbbXpb7hDsoL6lxOw9geryvduOLZZVA6/gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byeKepLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byeKepLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04E0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791370833;
	bh=Pt1pACD/DLsH3zxvjqM8zWVQkA8A7ix5OWmQlLSTIsI=;
	h=To:Subject:From:Date:From;
	b=byeKepLjz7xOkwCUjQd4b1XV2LIlmYJPHtju/QWBV2HCo/BBk7AN5UkRYpFF/K+fx
	 pnAL9LpnfjlVLVdgVvB8QtPaBvgQZkCcEnGamJHWQhdxtMtok5FfmHhm5+4g/NQTXM
	 XqA0Xtwx2OkKaHJtSHSF6TcHtMPpcTTO9rtmeNiFFshXp7Yg5BOHNvl5ZxUIEsfCu1
	 SJn9if5ryXYNVyCYtddYUV2GCNj7M8TgxVogCzShF0+TQKmnFWlZQppGx2a9Y+XQ8c
	 KSMwNJpXCt5E/Ot+CtjiewESE/YZKEyTlD7+4aq+Ea+3ZNNHQIWE31U6xb3XVVw/EN
	 S6kKBzbN/z2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA835CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137083368.30346.5218536181279297953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ff8211bf020dbe7dcaec143818a27985033758efdb3c6451ec981a83728fc2
Date: Wed, 07 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791370833
