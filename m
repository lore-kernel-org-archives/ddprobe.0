Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3859A2FD69B
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762166994; cv=none; b=A9B66rMlxT50O1BGe2SsRUnq/5G16W6bE3UgcTSz0DViN+PPY5PcnVa5s3SDv4X2zMBPNqS4Zj2kyzdSu5txuxi1w/hKrFgXLXdY0IAezYVMAFIhaJmlSljEzkPmZ+dOjUvzqLpjFKkiWibzs8Y1tsqYHWWkA0VhkUtwi1mZGvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762166994; c=relaxed/simple;
	bh=PJPdBdjgPTd1ZKJLPD7MNER6C1wiWD2KSN+uoBCGq+U=;
	h=To:Subject:From:Message-Id:Date; b=FuMb3LxPJuud9CwH8aW3JeaF6CNWLR1aGqVBoUBzWi7K87BfLRIY95iF43g0/WWM9hIdAOnKJkj3XT7Nw4yaAL/GDklUlT4wpCVNxJDxU373HJlsIEmq020Krcfzc4L5LlftLifP56NCZ4BnPhAz+seTIY/yRxgboyXWUhPEImo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRseaUTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRseaUTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A03C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762166993;
	bh=PJPdBdjgPTd1ZKJLPD7MNER6C1wiWD2KSN+uoBCGq+U=;
	h=To:Subject:From:Date:From;
	b=lRseaUTb8thxJBu9UWhtC5PPIyGMBLIUey5H5LsbroMGyAbdC1EwVF21dBRQ+E862
	 351c4XIzYYNYe6vjRJHT0a0puv8PP03tLF8p6tkC+VyxISaMKXr4uE3v5KDL5plRNF
	 Ik0p3xVqgAQhCOpe4fL6lqxJ9vey6rtqNmJkMd9b18+PjB02mA7LY4b9u0YmjPBLuW
	 pF9fRVFTEDsOKbyLpJBIFpw9KDB6YPRYFPSwTG4vVYyOA31hKt98w31j5GGjmGesOX
	 JvvmFjCZ6h3oL1oSk+1Pa++9/3zI3FGzBClsw1CReQ+OdtYavsDdlM3Q4RGQ3OpvlX
	 LfQETp0EJoz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A2CCCFA06
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216699361.7195.376236466180970255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edb0ce8e37e18c1a2f00f2057945b5fa62cc055a1fb37aa977e3e4dae93991a
Date: Mon, 03 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762166993
