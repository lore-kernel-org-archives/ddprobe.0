Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEA311CA0
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718979143; cv=none; b=Mas9W/Vr/8OyUR9DgxsRbkEzyVxhCau7Av/eTzar+YPgxjw6GtL6jrf7hJPBmZOAMpnWwKzdNJQMrcXFM+uGiMCzTc+/kX/BZVpKBzqg8G4Tlz7vFj+D162TaySP5rZtj3nUuoBRTK+prWUMwVeCrxeWJiINi5ByN4GA3vhQaZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718979143; c=relaxed/simple;
	bh=M/rr+lcbMSfvbMepBmQeDwX1cQjFpCQWuHmf6J24uEA=;
	h=To:Subject:From:Message-Id:Date; b=Rc1S33LH95vS/Txex0/x0BFZb/2ioTRoIX9lsm2ii/ZOANSWmI88kJ81a0RxTrBxQamRVZMLJ2rXbNjbGbHebzSibDiUYQ5IOUYJOdgvwadLB3bUxYFzUTiCNO5BUYRyGvWhZeYBUcF1LA1vehV9b16BCC1t/KKbxZqiQiljI5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8jU3Ooi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8jU3Ooi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88D2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718979142;
	bh=M/rr+lcbMSfvbMepBmQeDwX1cQjFpCQWuHmf6J24uEA=;
	h=To:Subject:From:Date:From;
	b=k8jU3Ooih3LNb1BXQlPBdqMQX3I4a0saR9lmrgA9g+VqGhMoadPrgF79tihG3qtN1
	 3E8po1FdiyhKB/5Y53zOrMUOl+tCNCcpULLvIDdAOfr5A0+xgbTzYqZSVyUubZOowD
	 mI9KZrK89ChIbqoybUiwNX4lSqhn+pdkZ+6hP9B2EaRpCu+kjHDDhi5QetWezBrbgL
	 zChhQiB+3xRz1oLrrmFIVWSLDuQ7751a1+i6oZn8ALsy8uDDUHE06RFDcKiVP1SX6b
	 wwo1OdL8et1yiEwoJYBF8L3IW84eJJXjusQ2eOAyo3Uq8mvqaEOtxbcTKxHiMzW4cb
	 HwYyALpM7PteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C691FC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897914280.17750.8288067353342134036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c58035214cdd09c5c8526a963bedb56a0efa7aa56ba363264a2dbf85306823d
Date: Fri, 21 Jun 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718979142
