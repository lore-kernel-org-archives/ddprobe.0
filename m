Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B98256A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718594903; cv=none; b=cYW5QwSgo3rgCohwU5UOMEnGjz3mjscpGfsIx48tP5fQrqLaYiFGts5WbYqCZM426TmX17WJjKHA6D8VuE9wtgUvp//GPKppYcaFZf7H1ClEfLVWgZB8eSIlXq5uN+2uxkit35I2MPfUewE4WtLv1bvBSsNMgnEXaYnRE7S6ejM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718594903; c=relaxed/simple;
	bh=Li8uODIfAh2gOM9WSHWH3QCeowg5CBeUHNby2KkArkk=;
	h=To:Subject:From:Message-Id:Date; b=UP8caJ0iHarn7XYteGZvVgz/x1atjeejcNdSEvAUAMNHvAM2Z31oTWm3psgHckrBOlf5EL9UVYbaqPSo+9riZIt1q7ezyK3yPZYCb7Agz0ei+lkN9Xfwf0LGwQkORarYbDC9h5fOaOdn5MMbBYfNdY6He+Ul2gIP9Rlr3JxqBCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qw2ImBb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qw2ImBb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06352C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718594903;
	bh=Li8uODIfAh2gOM9WSHWH3QCeowg5CBeUHNby2KkArkk=;
	h=To:Subject:From:Date:From;
	b=qw2ImBb19finHDa2t8sw2fVI+B+45dfng359pyi8aT6K7jM4cj1GVT/jNvt6HJGrF
	 a7z5coZZJQRTEtwXZjzQB5Y06YnMQ897XPP+sr5CTSpjUlNK8yKCsp6jTSbeJYUBY1
	 SQOxTA5MxPmwbXIT1iZ0/sW8bYnvjntf2f2PORF/cgwwEouMR/vOYsLSaaj7hBwas0
	 U4bGBG2PsE33/dKCowPweQdC49rPSnjLNn6vXCbl0WJ2KRmsM6/udFiE081DEAimvz
	 Enzs1S+ovfZNyPwosKEOKf++cHjSbZwEK28nPsg30PS8zHEzOBrnv1Rtx3B8eGtYyz
	 MNdxe52IXhBQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E462AC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859490287.19276.11113319565026664678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec37fccccaed3d4d068332a92dc03d901580b51864e599eac27f9fbcd138c5c
Date: Mon, 17 Jun 2024 03:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718594902
