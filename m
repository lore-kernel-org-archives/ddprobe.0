Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB58A2D4813
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765057373; cv=none; b=VSQSdrWoxYbyMchQk5Di96Np5cz1POhgnaqFFpurKXF8Ur5j7CGT0yeE2VSrby6FS8tZ5ep/fuZ5hevsWqTvMV2kC19U2fOLt9KGBh5paL0eHg6qkTBLnphQJYkiDcGljxrpw+KraW2zXip8h8JqDbEu4F3qgFoyNfvrr4ufG3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765057373; c=relaxed/simple;
	bh=fmuLwgLKJaq3jASH7xJY8nno81vGq6zxv5evnDwD414=;
	h=To:Subject:From:Message-Id:Date; b=lprk1FXaqiOgXWfiI4nc2myIgu52wnEgMJmj0O37QsYMoVdWJWzAqcblz8XEDBRLVaEGfTzf2BHqBxuJCeY4bjcnqhFmo7OV+iQAfGFBz+SuuihTF4XtGfBl+G8y5lPH5O0bX8PTjvBjt6OH+vgy6FG6GtQlQA99tq1krcGqQZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qzy2RqIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qzy2RqIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4947C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765057373;
	bh=fmuLwgLKJaq3jASH7xJY8nno81vGq6zxv5evnDwD414=;
	h=To:Subject:From:Date:From;
	b=Qzy2RqIll/H5fhUqVrFpA6uG5WroZ2EikxXOpnuUBtNzcJniU6tKsWztX1qTKUsj6
	 dOmkU0RpFoJHCODjZX+Y2nSdvDkCTuX1CUCrplvmg88cv78a+wG2SzEkkoXTxj6rtZ
	 rkBO7E8MhjKcnIT/LGEQp1vpLmwEcCryYoQGXgFCj3LzPnUwe9joFK68YTwR671139
	 3RyGu9klGgXlzSu+JiPozmJZU8HZ3UGZwLUyxoBiVwJO4YRt6oZa3oPviTFrEJhlvV
	 SUAbE8ZJI3JaBqVs8l3BBxUAeEqfL35Oq2OoM4BU8OSwjak/cyA51uEA7ejQ3U0PPt
	 9fVkmSFaJ5/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B29D3B7E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505737359.20050.12640401995059612044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa883f1bef0845de20ed28016623a22007e209ecf512b0136c2dfd65d854b526
Date: Sat, 06 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765057373
