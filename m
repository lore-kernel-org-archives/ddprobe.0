Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81CE31FF5F9
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749548396; cv=none; b=eCxuwiAF9Fk1eDiLKTMWnR2szi9NiCRvMKqMg3MMNg5UHMXpgx9HSCdjmnHUEFIuIsp71wzqMiXGh8EFo8IAHLrA/TzHxMEb6YAQpNePNCoTXT35re9NEuQ5s5R9y4ljyil0h84Z4beUTPvWBVTS3w75vQA87YOyo+kuCwUHu/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749548396; c=relaxed/simple;
	bh=LZq9dsl+UWpFNqNntni6BKNin0qwUkWmFUYmCqj2sXo=;
	h=To:Subject:From:Message-Id:Date; b=upRiMR2308a96t6YrIsFjcU9QXcWNnQbQPzSH6n0DHYIgnaRrVyzFQWCufoHdxm+3yhTDqxvDX67MyTiCTElHtVGz0IJk0OyM5UvimHsKJktlonkHqphuYIUbA6Gfb6aGygt4/a5UdPFa/iXHAFROgUMGgidqsXhx8Or3hx9N0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSVmdXpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSVmdXpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB241C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749548393;
	bh=LZq9dsl+UWpFNqNntni6BKNin0qwUkWmFUYmCqj2sXo=;
	h=To:Subject:From:Date:From;
	b=nSVmdXpe6Wp0Hl/N2v4g5QRBR+AxxN30UqBzRyQi7diZOtaTu5gaiOjl7CN0YGggR
	 n6X4yBCP7t3L+j5o1zP7/nZ0pm+Zph+75fGR+bcIGpWut3gW2vwRNOe85rFbDigwen
	 AN2tFWGC0vpz+++PEhwJMnt2Ea3U+4qnmZiqKojgLq6fXHdbHiGHk8mdRkl1KTPZHr
	 sFUJGzcKGR6kMNbPY0erBIrSvvXYLxrkMpT8YBS8eC0Zv7huP7JcKRWNz0g1KDWFcb
	 BI073mUmwbFx0fnb3OOqbqy5mGt8kKfvAa9vQuB+PvGFCxdOxpg4X7+IYkynqUOLYo
	 v/4REx7VM3IYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8DC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954839357.11802.3743670898096104775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f359ba5cddb2e88cbfe0d104d1bd68a776932a71c20f7666900c42d0253d39
Date: Tue, 10 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749548393
