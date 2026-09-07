Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584A7370D49
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788756634; cv=none; b=XCD+NQXmiP5Be5fn/Cq0nLO4Z2Ogrdx+wZhR7pIdeJ5dd+pstmavIRvW8hx5+9kQiMf8lzftOXtWO6Aib071Sw3qkzIOzOtaUVTtzS4z6Jb83PW10qEQNVuVxM5w4uQHpvhhqw90/AZRQnOzwZqhPszgT5iPaYthXBgEIHe1FqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788756634; c=relaxed/simple;
	bh=Xf6iqAWsvXUCedCgkkWMgKHzLVV8mpQM8SNEsLJWdow=;
	h=To:Subject:From:Message-Id:Date; b=lcQO+58JkFI7XlQGt6nmBl/eMCqOQKjYaMmM8eQtXvxDOJnLwC/VvIGif0bVz709WU3QE0NDFBo7kaZjF0EzwELtAp7/LluqmuYJxry1Weeq2V4OLOzoqCVr7ohY8aXpHw1WCOPkDzARIzuk7rZ3U7Difmjqkrfru/JgOQLW218=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOqsAt1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOqsAt1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68ABC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788756633;
	bh=Xf6iqAWsvXUCedCgkkWMgKHzLVV8mpQM8SNEsLJWdow=;
	h=To:Subject:From:Date:From;
	b=kOqsAt1nD/0lhg96BAICYkpOfwFCWhqChWUfqZMCmYakemmONGR5YSrMTBLPVEa2X
	 To+oAX36Kh8JY+pYgNc1tOtAH8kuL1vah5nFDGkXmG/wKdANCzhmaMkrsNY/WtxvNL
	 0HCdogCc95Fv7vhVhvQuO/03PantggIJ1Jm/jymo0vaV9+XqDNSpQlAczfxkPkYXaH
	 7VA48C1FROrGhabSx1VAGkYBe0UgwJhRPmzscWQg+kK4JiUDnfAhxJoDVfFgljFdJq
	 Zz2snsTGWT6zai1AJBKul+wZzM5Fptrj12OLevrl1oWiQk0kPPIEIcPOUXrgaUlJY3
	 93gtmEHXvSIfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C6CC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178875663372.28539.5051214480926089852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c62ccf191c242dc8a1887bfa3b76a0caaf51fc586d1834bd3a7d22ab8d904f
Date: Mon, 07 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788756633
