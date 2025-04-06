Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310111EEE6
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743964194; cv=none; b=QZiVnGi9NrDd/fa436tZ9iDlofNIY0n/LVJhhZMZWzoDsm1etn3DS2oCBaVTvga4pYwPJcHo2an82sI5crwUF+/I3q+xYCGG7uWbM7iXAdALjDjWdM6A/Kk/ENRcy4hlIzeKTABvXC3I8G6WjnY5Al28WozM/r/9ojhhEy9iIb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743964194; c=relaxed/simple;
	bh=f4Q6JONSvsALdJU3H/1EOtbMxgnUHrcdfOFGaxVQLPY=;
	h=To:Subject:From:Message-Id:Date; b=Dur1RMqD4U8dseqkpp+ud5cDnL8JDXz3WQ/08bERwnWwWz0pCK2oGoH0T0pJQGGAIs+DDe1x6lsWDcyQDSqst4mcnHnTyYZRjEXPmeNC5Gqncey2CFlHP3Q/B3T9f9C8jKPnAjvzE4IJxNG1VtnzrfozoX0nWxc7Y2D4eBIOWxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvuw1kJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvuw1kJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743964193;
	bh=f4Q6JONSvsALdJU3H/1EOtbMxgnUHrcdfOFGaxVQLPY=;
	h=To:Subject:From:Date:From;
	b=rvuw1kJrjUzzXaOlTkV0H7ac0EV+XV/zAHGbR+RSTvykjMq1sLz4UW/Ie3oY+24j+
	 IsXzouBxqaQqhF9sWAzvebCMD2qUHiCFhBrKIw8IWykgMoFl/43e4KG5Kf/eDE3EkC
	 QRglQey7i3u+UUM0sXse5+sLisBt+Z9te9tG4kHjgT9AqAE8W+L78bypr4sjnacR5F
	 VLSFWTQkWBIBPadbsp4mHiClYP4PvGxU1fk/ch29zWJcARbXrkx8qA6UwVMrPyGIAw
	 iwLa3jms9ln6EUeYPtIWDOon7gnGi2wXgpcigFsxqg1YhTRkV9jiam+zebkDsbJzbG
	 UEa8q+B9uLspg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC0C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396419359.4696.14160299137262496793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39f89ff3592c0bf0e73abd2ce1298e6e17bc7fb2ef504b2d9578c940272416c
Date: Sun, 06 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743964193
