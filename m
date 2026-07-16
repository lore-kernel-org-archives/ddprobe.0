Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E163876DE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784210314; cv=none; b=CK/TeuF5ke37iJlZmtjg90P0H0AYBn3HHB1UAD7Ty3irSXSCP+NbF0kn0vuyGDwPfE9HkEXwWNKHTJEPSmsKHxApPgu3u/nt1FehkKpRKpz5KC66dulvEHPSq7efJVF88Lsp8/TQtALVqIvnZabaS8GDZRXLTMlwOhy+ZKw9FxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784210314; c=relaxed/simple;
	bh=HEe7ylhXg/MvI+GxHYaQzUWW9rnKb2jwxDFUgYKwFqs=;
	h=To:Subject:From:Message-Id:Date; b=IhtLtfA7AP/9bjoq3qScFwGDEZa2pIZa/xBXTd1mVka990V2uupdKq7XrpgL72Y8bu//2PHZFKV3aPZ44306MOEJWqUSZNgY0MwmYkI8tPxaJCrB27jeN31wGZqYjQ3qmI79rhRdIylWBhgPVjWB8h22lRzU4OhBmyJo+EUWKR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mthM5L1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mthM5L1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9445C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784210313;
	bh=HEe7ylhXg/MvI+GxHYaQzUWW9rnKb2jwxDFUgYKwFqs=;
	h=To:Subject:From:Date:From;
	b=mthM5L1k+tJcZyylfUYXxPTEHwVEjg/NPuVTNc0YxLxB6dAvvQycKknaTaP+ZUKZn
	 tWlCmYj1e0qPbgfj3rCQoUZdz9gEJIwtL2qheYd2+6ZRX6PP1FuCeZSWBu56HvHCDc
	 HXEsHbg1tPos3HPfBUGpxpKTxidrU03zGJN8j+lsqVhJ56tFF/i7WWu/87mAFfGa27
	 GsVf8gwjLqT+/lElYvlwkB9r5E2guF3CnTgTHfLqrRDoQD8jikjiZ/LUZWk6e5Q9uq
	 gxc5UI3cD0FjzJ0IlAd3POH709scTly2gqKYxe8nkaDeYt90QydJKETp2kFz5/ddIa
	 Qdof6redDrbzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E63C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421031373.1670.1645863115303803628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d2e0e30b48f64c6d26f07ff5576d4de8639f551cdce2083820a923da6eaf99
Date: Thu, 16 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784210313
