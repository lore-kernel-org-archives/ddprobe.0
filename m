Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC3C3A9854
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791873634; cv=none; b=nOK3JQy+GxBIygdY8bzG4HQ28v7COoJzedX5BhtJADfUWiCwYnq/i8cmdxT8UmLvpbguu5kZkIGBYTFCsGlqICaopaAy+KTqOUZd15kkxsh9drUWRm6BWPpXswr5V3Eov2wmem62XQndXfPye+J9YpqQwYuEa4e/WYPBXMxMLHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791873634; c=relaxed/simple;
	bh=eljhqfqOJF8ztCFccOGozw8/Sfh8kk14zVVNdmGp6lg=;
	h=To:Subject:From:Message-Id:Date; b=g6WDeTq2W/epGJiQOUBugSKNQs5qOBmEGqoBw8SHui1oJqXa+nTEYlONrSk58b+aQ7+mDm/GTUbO6hxev8Lj5ibYKl2hnA8lFfqpUBbIjCr9q5amGQ7RBr61vSmYhm7elXTOcFDeFJYFFNy8UYvCsCJBhH6M824tzsJbEl8Bm7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5nAi7r+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5nAi7r+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FD3C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791873633;
	bh=eljhqfqOJF8ztCFccOGozw8/Sfh8kk14zVVNdmGp6lg=;
	h=To:Subject:From:Date:From;
	b=P5nAi7r+xk153lzah8hIKqOICcAztbDGTmTvjHCTiP8gvnIDfOTAquW6v5lUIM0vz
	 pcKfEyb3NyllU+gXipJd4kz2iF9IVwK/xfOmNVeUyKLbhp6DyKXr9udbePC9tAkjpS
	 NJKf/HMFFoz5EE0xkkspjOLKEp6252mKuWkuqlmI7z2BXRH4ks/WXe2E/LYbMk/IqP
	 vs/T4nkequuX2kJzjygG+KOiVL8KtAzRnH1UQ2DyulnWmqtMrbTgINEiJcDgS+SpIT
	 tTsuwj8/a+MIDTA9mWBY1K+paF8ciQ0z6F0rL/Fn3viwAt3nYivUufyqAgCZ/TP5HW
	 mgJddGJ2FCmNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3B6CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187363370.20283.398945160930316446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806efff8c3d9088cb995c46f9873ef527392d33e44547bba87b1994af106d4e2
Date: Tue, 13 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791873633
