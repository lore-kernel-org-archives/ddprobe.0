Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299FF3CFF64
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777655854; cv=none; b=PtpK1ng6fKG/khLjPBi2gLFdWF7xPOM8R/g96c0rsaNnqQyrp+zRTHF9uPRNP261Cs0ZgKnn0Bt1UN1xMNV9cw9g1keHyGAZTqMYWzh2yZAiwbyFpu1d1SecEQQFUxiO6CM+zM9z89eSLDbg06E/Vj62w7ov1s5iWLotbhEUyJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777655854; c=relaxed/simple;
	bh=ntu61nV8jlsxwV2TIZj0dSNo/W04CN5RZErGf1mFvBU=;
	h=To:Subject:From:Message-Id:Date; b=JCu72ODO1CZPHF9azhXVh+2tedR6WfjPtSwF2yyMvIlYtkMuaYN89BnjpL5OXs/AGZfJLlLHsPxc2t9WrRmTnmcApjp25c6f4UNIfo0uQfnjilHI/msYDKfB0leb2vQO344oASCAWsFAARpFMR8W6y69BAHTiqvX5WOmWaBNGRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZZiPymZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZZiPymZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB67C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777655853;
	bh=ntu61nV8jlsxwV2TIZj0dSNo/W04CN5RZErGf1mFvBU=;
	h=To:Subject:From:Date:From;
	b=mZZiPymZS8VL8VUF5ESBb6WecqS6uSxY5fnHaoPSy4MvV6uIomvhsGzXLz9G6p3tW
	 q3XIzwZs4Nk+CspdyfT5snBc0SqVU1xKdqy3zjWsXrjDg1Ao45hwr608hxc+Ry28H2
	 BCqCnP2adedeS4YzIT7jk2o4J4WJtBLLE0e3+ewavztK9iTxYHKpnlk5SbE23nQo/6
	 ZmF14y54Xtc2GMevEDR551DXCIYXOhIdrqkyVvNgvjO+2w87AH/UWAE5xjwyxuSS++
	 YWCB8Suh4dHcc2TUuvaxQWk+0j5UQQiPA2+xZAW3bce9N16VIqd2ibwwo9/nDqiNjl
	 /1u3YLJsjNecQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97DCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765585368.11957.13504160412217159057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668d2d7f3a7b46a03acf0b7bd48985ec5b53b1a822ffccd1c11f5211c74d5be8
Date: Fri, 01 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777655853
