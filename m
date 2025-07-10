Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A101EF39F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752140995; cv=none; b=CWRWutR4J9TxMpYA/uMagK928dKT8JkX5oKlinVvWN1blJHymYX01M0E44sfRqohopSYgmSDQEpB3pDfhIeMUgPMLndGkel1i/ef5xj+KUxV1tTMT+tvJbkm4bMwJ6VSOtQ/qsL1FtK7dTgFGcOh+6yBwCDOS84E4juOWpnt/7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752140995; c=relaxed/simple;
	bh=sHXNrLLiO8Du2/YggfGVGqMMQBhdYSNAmsuqnwj3ees=;
	h=To:Subject:From:Message-Id:Date; b=CLwr9oz3EpdtkQ436JdLQpEjU6Sksm2TwNsb1IakfTZgnY6SHCe0ga8kMT2csl4YscIFx5FAyMbOK4p2u2vKz/aRyLmNWQtPhIIDjGgQOz1dy1XN0fYx4g+847fQ00Y14T36I6U6WViqeI2GZJToTPo5CAYMUu+xnenoc3BrwYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoZY9UyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoZY9UyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEACC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752140993;
	bh=sHXNrLLiO8Du2/YggfGVGqMMQBhdYSNAmsuqnwj3ees=;
	h=To:Subject:From:Date:From;
	b=SoZY9UyGbobyEHV+ZYnJSB2rN2Cs9DfRrlus2rC5Pqq+tvH4tulSiLw4JOOAiqtT8
	 IeFNF12ygjgb4Q6M5wlzmyvB6Jbzei8AQd3cOJaAwi/988lHClQIjjnAXuiM6ewTtt
	 BKoaISSMUAXhki6igkbIehNL/QqQyMISsItqDTOgC5iDaqvCIa9BWOeE9MSwzemt85
	 OFqZ91idgahr+a6cu0/DEoIeCD9wrMmUwXC+t8CLWXvX4+77DwqoblwfkJdGJuB1VD
	 UVBQdVWtQOZPsrgBEyryPlXUdslBwMJWWwxV/Hmlt1cnWkrx9cuA5NorBasaNElpGa
	 sCk/Br6Y7b52w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE84C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214099357.3761.10819728714411593956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515f87504d578259e26fde1a59df0892ae18e01ea5a2b7fcf7c2862b45eab0fb
Date: Thu, 10 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752140993
