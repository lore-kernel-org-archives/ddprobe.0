Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C13081C2
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758031794; cv=none; b=rR3u/KVa4er4BsAnxECELXkwUECBvtuFyJJUtpi760Ob8NqZSKZ5heYY9VJXFL4MkKqfEsQ7uhFcFTLFiNbE/DBPxOSZrIWkIQrcV64XIyEsX/ueVlVhoP0F5OgnKzu+Z8x4FvnqCT4FICByq5lSlDvn7nJx9W9YgdwpGv++pUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758031794; c=relaxed/simple;
	bh=doQBU0bpqyKsR0JG9goDE6jkKQmIPQILLCnKy+8Dv1U=;
	h=To:Subject:From:Message-Id:Date; b=YS2f8Lh3Da0XQQKjGH+8/K733cAfx1GoAjo5FIPq4Q/RTQ7iMhcm2/GUcQgHM4lHz6WPqfyXcO6k4lgaR6dSGBpmlZ3dGyAsZLVlDIEQ2lmHm3bAvo/IxWpDZUkvs1kxl+Yqc7mTfzi+YMWEmhdbvaqMzTxbSjEnAUPfa/COWos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipdBD5is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipdBD5is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF9DC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758031793;
	bh=doQBU0bpqyKsR0JG9goDE6jkKQmIPQILLCnKy+8Dv1U=;
	h=To:Subject:From:Date:From;
	b=ipdBD5isdHWYaMhUpfLlDu6QK10pCxxK5PASckxseSdgok5w3DrylzUCgdQzDyLhw
	 qw0KP6CdU4151d0xF2isNemubj806sAbICk/hlK7seCXIDGa4DWuErCRKFGPsukiPx
	 pN3AAXpLpXtrouNcS0iMF33vYTUojJqAtdWOn6NIl3uJDDripGM7bEYn0uU0txla2+
	 wFiHR7xW5DQC1aMklccED1PQCSe1ghdTA9ELJLpF1v2hynqP7ADRN52Najbmu0m1bz
	 eRhhTafrXiPLXemQiyKPwQypHItKi7a7mJEAk/jsCqTdGbEWdtX4LnswQhAyQKJcRA
	 RS4yG967iLwhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9ECAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803179358.25651.9023587122442026708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8267e443ca6f5eb5a425b9ca984fce1ba0f48ef012748fdb8cc0235534d2a959
Date: Tue, 16 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758031793
