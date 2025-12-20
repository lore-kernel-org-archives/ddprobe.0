Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F3324169D
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766269434; cv=none; b=kywEmoF7mkj3IkLYfWE3xPshrhOJaZvcbJBoV+90w5hIBUxO7IGvkBc06f6VUTibLmVmZ6h2FN3/8Vvu2qjBFd7yAlWGgsGmvjzs35zy7MpzqDKc5K6eBmcrpi/okvcKXWBYeOSgC/UJLqfbSm5DyCytc0lPS9bEwx4rXAz9Ffw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766269434; c=relaxed/simple;
	bh=zIgMSfGNcy7VqOcDCDVukJ4Ba/e6cwCUifzkXYzTHGw=;
	h=To:Subject:From:Message-Id:Date; b=ISne0QIzPQizzJEJzdDBHGt7mTzIT9GxBPRqQPmy9rXmJtRnbgN0Gn7UkQUgMFCzjRTn/g3jVPePA3q1eofNfNmgxAUQ1JTpcVKTFlExfnMnz+Lp9sUKB6fGZwCnIcUt63EqcZfAVCKDvWegJDCMMGvnP6WV2xnXIE29B4dA3Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqZdJnUL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqZdJnUL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0555C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766269433;
	bh=zIgMSfGNcy7VqOcDCDVukJ4Ba/e6cwCUifzkXYzTHGw=;
	h=To:Subject:From:Date:From;
	b=nqZdJnULSHDpjkPXRbjsroCpTpUvuTO7ub0qpWGMRKg+nvsHW2kOdV5Spl/MrIQHQ
	 KHdz6DR6z48zmla2azRYVY6xPoj3tm9nGND9CSqWA9QPzbMoCroleh0uyfqJtJJjUA
	 246u/ou2ZuKay3VYQDohnhSoSyy8Aqm7FPnw3Gz04nMkYYtby9woiFF38IjcPbXp8i
	 M0FSchZyfgzpwZNo9HZ22icmPpmJElUvc+y8OsKgqhqLf4Oe8tLU7ExYnR1xiODc2r
	 Dj0PQvVChiIkaTG+zXpMIhoxOvtCxbqMU+68/NwEsZ3ShzyT4ChXIdVdX8Pxe1aopb
	 kSsaSQCf2FqJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F761E67487
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626943358.17951.3053922296486308599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1cc2531da42e24fbe5a756dede0acc20c40c3eb63b1209731ef239505ca21f
Date: Sat, 20 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766269433
