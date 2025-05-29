Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E19021CC5D
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748489394; cv=none; b=dRlvB9jPdlQE+Ek5XDx3NNntF9YGdzxzwqLaLIJ/u/HX9D9cRfIMfcQv7ZKdML8tyPkgPsCy8X6jb3hZlc1tSzurGQNrXMeK6TG9ylmK2wPHRCLru+SJtdmdiwCH0NCGC5Jv0SC+owIkF/VCMQKVnM7BeiJWl76E9OWOvVqfQVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748489394; c=relaxed/simple;
	bh=fOe5aHSpMaXJ+APEOwpQiA30fIcLsbM6Ctp3pgtSzYU=;
	h=To:Subject:From:Message-Id:Date; b=idnTsAXcwOOu1az7DdBP3XyR+GnHtem2Gj3zAHrA/XlQN0B1q+tS99Ql+D2QIzYt/bSA7WrZMZBo3LXvYGQWnMzGNH1MmKP7+muVOH4OK7XWfNdQLv30dCqOHBoW2MSYDq4aLlZNs3qoBNgsB9cgbOeACsOyjxAHta9Tex6ywd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXviMF+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXviMF+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748489393;
	bh=fOe5aHSpMaXJ+APEOwpQiA30fIcLsbM6Ctp3pgtSzYU=;
	h=To:Subject:From:Date:From;
	b=UXviMF+d6SkHObM2AllxshPHhHRalBcN5JVz1wbRhk79Hq8JBjZktUs9rGA1KEM5p
	 ulx68f+fRGKvd8YiGTcaTyXJnUvH8hlYzhBfSLK+GuTxeeg8DmfG0mBhkIRwp3qkAj
	 BWpZiYpJiX6oanuS1ciCLs0AFF6LLyFTGl8c5b5H/mVCdh8XoMb1GyIdt4hqD1mx0b
	 ypDVvjJ9zxrvCryDoiBZdQ+lsvObslnTX2rc/Sdl7XiRdEg1Z5xb140vs6a+Cm1hdR
	 H0/gj364p4gZRuTb5kHKQNRy7ybCQl+3E6cgAeY1KXF0NEDmlhdCgcRDogrAZrPZLP
	 PlXpC9qjAau3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BFC5AE59
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848939357.13067.10714287834063118024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4fcb2b8eef1beaaa3c6f4f10dfcad7f6803222501a6ee271470c393eb72fdc
Date: Thu, 29 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748489393
