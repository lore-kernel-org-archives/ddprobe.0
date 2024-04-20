Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A425524A
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713580823; cv=none; b=uO0hg2znUmGdlxhRlp0z0cn4n/vH1T63JPPxdwe4oejOamrBTu/Qx7RjoX25x2jWLuSiExHPTlX3jtPAekRR2pJEeUulcH0lrnOGUP1SdTNYtULSVtde/THbEmY49k1D0yaYmbYgirz9+3TJ37gvNhj9PGdxa+rfPNTyGHo5H+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713580823; c=relaxed/simple;
	bh=ESQ4snzjGerpTIWR6xfwV8gLDUa0Hy9v0MXyCBNWkog=;
	h=To:Subject:From:Message-Id:Date; b=BM5rOqyuGK+pUH68yjD2XiaTbhpB2Hv0sivSY9H+sdp1fDcru6Nk42IIj8yb/tLPHVYver219q3EdLoIRCAmwfZPHTACEzBlGEMwIVUND1rQnvXeqAchevHhl8QOh7W7apZVjrUIhf/eL+iWkDGmhktvTo6aLjSVyNB0CpgLp/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVpsmY82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVpsmY82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7123C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713580822;
	bh=ESQ4snzjGerpTIWR6xfwV8gLDUa0Hy9v0MXyCBNWkog=;
	h=To:Subject:From:Date:From;
	b=aVpsmY820jMLBf/ZIpM/lKf6kZcXWpJC8UFd5ZZEWa5HvGLiSf+8FlgHBe5VxPTSm
	 j9s4Hv0b47vDWVLTh2Sp7BR82qItzDSyB0Sar+hZpbGHQCWT7Hmn/tmHS5limWg4eq
	 G9TiXtizsmUz2cbVwnnHD5ql0XVYMrb2IzksFdAkCMU95X6JjOGBd0QHiXMvBIgow7
	 e8MUPhY/GygIcNCWRkpcMxi4o1kfD4ZilHf2ykZLJpgZ94Q9xgtvLy5TtPDRvIQUxN
	 2zrjq5XWc9NAH8KFPDqSmUQTO37uSZtOxzze5iJjktIjY5qb5mHRgOo8ecz67SXHRE
	 vAjOdRx5eGNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BE5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 02:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358082281.31649.17733840912806769723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b942c76904f198267ef1f8ff918e9f7f5d67c4fe72a772390ca47c1478ebac
Date: Sat, 20 Apr 2024 02:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713580822
