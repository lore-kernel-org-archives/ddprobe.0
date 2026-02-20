Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175E223EAA3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771552494; cv=none; b=VcDXh1yKgfp9cgeNvGsyy/29job5nHpYIT1V5RreSmDDacpgkzlQ1qTTzKjAClXpjpEN3h7Droa9rN70xszM/G5epzK408VUpPifCpPG2YRny/pw2tt9kqLehOjZsD1FLxZu9hCxyVN5KerOajuS2ihi0SkA6EI0LCebN83P2FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771552494; c=relaxed/simple;
	bh=+UaXCYxKfv4XhX23lo8zXRtXXYglkb5BENjz520V24Q=;
	h=To:Subject:From:Message-Id:Date; b=mQ7LdwrQFp7nKPBXwWmShw9ek0UmvGA5clmH8aG2lmnVHD7OL4xSWwSFcY91VUHNS/oEFN/FgbcKTxRv8ZYaV+vqqxBOkMR06x1+YdXB8l9libXfhM6n5dbv8AV+DxpGnQ30d+Bx8awCTsN1hfDfWkM+1L1+fMTsTqtwQUl9q6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6MfqKNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6MfqKNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA80FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771552493;
	bh=+UaXCYxKfv4XhX23lo8zXRtXXYglkb5BENjz520V24Q=;
	h=To:Subject:From:Date:From;
	b=F6MfqKNw2fXblos0LYaZIEorbevE9ZLPEeKHRVgJweVXISMADmzfypZvArLwwKJOz
	 Ww99DBngzyBWDHtDcTm/uUdcf/iSIw4Ne4TBKb9n2sHISIcfF/uFYCHfjKlhW6v4TJ
	 +xAsG/i7oq4J6IMkqd+MNNFxDgtsAd6i9bGgxcGwcUywAF6t0mpkMekQG2rbajiVwP
	 PMKjiV+834+KdOIT1eyxDiSnXGHSYzHTGdteAL5dcZzeEjzXmkRGjRONy/54g77H7g
	 Ro7Jf8Lemy5h42Z4Q+6m4UZAkzTaA/lemZJ2KeMkYfwULJ4IxoRnk4xgbdlAVTECof
	 lpabhDp7o79uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FF3C531FB
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177155249359.16226.9529334280843105416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7445db9de8706629fd106fd905ab658e05ece1500471ca1a3f1b2ce05ebdf6f
Date: Fri, 20 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771552493
