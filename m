Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282A335959
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736092554; cv=none; b=QLQQQ7DBmiRuZSCv206NxoM6E/i4VDL7IaQWAL8ZUMUd9LrcnkyU/bEHfbfIG7N2S9e4oH9v6ZHlb8/44WZxZeMHoPzgNfWdqAdUHdCiSt7hzcX6Aowr3rMVZXszhph6KtBoYhr+zqQ7o8zR6esUciFd5uigVWQpzpr4XDwZaVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736092554; c=relaxed/simple;
	bh=ZWkz/4xRxQbSJZZhv++b/HjqSr37WqzDtGRJZUOKZCM=;
	h=To:Subject:From:Message-Id:Date; b=Rk+xJMne7T3JnjKFH2zEVoQo5euhbuW9czXQsRBszmT/FBIT7CKtc3mtZ5zMSLD5yTJVqkouPgPhrUMg1WByzd6dfyfFl20OvKUQd2J4OJ6Ht6dpezhunlq8wlJYTN4z+tiO8+iFaxP2X2y6qLA5EGLHi3ic6Qn2xsxqw3CD/W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtimZ+rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtimZ+rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736092553;
	bh=ZWkz/4xRxQbSJZZhv++b/HjqSr37WqzDtGRJZUOKZCM=;
	h=To:Subject:From:Date:From;
	b=MtimZ+rJwk0h7F3BEOOuz17e/g3A94Qztpw4Rb0R6x9CzTFDBk4yc9xblunELy7jA
	 FLq9etvQ9Jis6M0mTTcThjVgzM7bvuc8ejeUIfOr5aw/7SsYS01Rajpx8h/81s45nz
	 kCEIHXVmukK6LE6JWIubKynoRUGHfe5tJF8IBPKEpOkkiXxDhIu392RJmMqAHIU5T6
	 O8kjTbXc0BnVqOwu3PGqBwKoo5CVdNSuyZSwYCgsedtbETLZ6OKlSrjshFlUNsc47k
	 NpBKuN0SrJlh9e3vcp7HN7X81anD1fWtp8JAFRGGjPgmnX8vIT1I6TTKMINU+ESuh1
	 PscO0jTk+Bovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96655E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609255357.16219.1762874732099931468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3bff462af12832bcb08923966c9a3bca035b484264ab4c6d0b4ef13729f879
Date: Sun, 05 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736092553
