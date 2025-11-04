Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219EA381C4
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762281594; cv=none; b=jfx4g/83KJMP1+1KNda8VhyEcTfoweRWToSIGYH8pZqEayFHTPAjT4BmvoiV8tytYhGt+8xtJr0M3LXg/e9sYKzHqMNkBxQdmb12+E5ufFTbkhZFfTmD5axfXWs3xbOT36/zSVUzixkAZKjXfyk32DkYQHF/d0PhgVkMHoYES1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762281594; c=relaxed/simple;
	bh=QEk+irVD1ehg9tL7ViJGuCZhsOqYr8EjrIiDm9vOOWw=;
	h=To:Subject:From:Message-Id:Date; b=DDa5uO7IcntHymHBSwaTJyU6AI9/5pgFYGZ2aaOz9h4EoDEos9QI1DEvecYwosWIvtV3qcCjlJrgRVsFWSp3nWtvCiLZp7UpgP9c1Q4HRViF24K38KTex+kULC4H5gh2oZw7J6P8OwkSasSBAGdo0VlMKpnPhARNjdtPHplLpEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aumq4V/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aumq4V/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0628C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762281593;
	bh=QEk+irVD1ehg9tL7ViJGuCZhsOqYr8EjrIiDm9vOOWw=;
	h=To:Subject:From:Date:From;
	b=Aumq4V/jy96BKw6Gaty552oBgoCDtHLUgbTqANdEbs0Fy9upUr6baSOHHSbngVtBZ
	 z3Gz+ASoMrKLZlAKLAq4y8f6fdWLwCHXlAqWTtJ4syPRkMV7VM/YyYzonyLF3Qovyv
	 CG3jFdu7JmNxrWHtY5YlvmxdCacBAvcRA4QH3/eiyvVs9f/LU34VKNcxk9FuED8Ttu
	 OlN3IRgWHQpBxLeufd1H+hSdZdKGIyaqhU0p+W6QmtDdmzKJ8HrpeCfV4IdxcyC5fe
	 aASPoyYtkyQHzsRdLHwsMZ5KTBC0IyF6Fu83KPRK7Jb5zeWcoSkadygdQcoB6Fzyzu
	 Mi7P6MmQYzR/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A41CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228159358.10684.2213980597756418443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536201f5915e4cba99bf8d1edcde54bec167c94451c7263292bcdc9b69aeeb12
Date: Tue, 04 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762281593
