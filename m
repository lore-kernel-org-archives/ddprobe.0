Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D2A383A5
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748731794; cv=none; b=HmrLZ55TVKEg01BpdNpVy4hY0oRmb51j0oG/9gBjMd36b8bjnXw7rk0RsFNdi6ZsUSbuMzDBadrroACnu7dnyk9mnbCRxiF+s2rSJ0nqY6Yp5nxvmyqWYx3xPQ/jJK3xuNGI4fHjP9lfHru/A8CAFXxl561e1xgNpeNKrX6TZOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748731794; c=relaxed/simple;
	bh=ld9W05BM/fy3eF51QGhEKXJi0oeY/wg8tSiVP8ib7VU=;
	h=To:Subject:From:Message-Id:Date; b=LVK9bxr4UATAp5KuiyHUZqm0A3VC37X5fPWz78uJYcs108AkNJ258wGFIn4VZa99aBVyZB2QA9Y/3Pq7oQO/fpWRTYCwfru3KhgvuXtbN779+HbpS10OHtrv3A8rT9B5v/BPPbf1vfP2ZmEUrSNfUfLgcSpQ6wODJBc8hF9NpLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMhoziCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMhoziCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78BDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748731793;
	bh=ld9W05BM/fy3eF51QGhEKXJi0oeY/wg8tSiVP8ib7VU=;
	h=To:Subject:From:Date:From;
	b=OMhoziCXII84JoR9u/ssPrSQ5gQneohH45VY7boPaNodDhAf+1r3ZpUlTikmHTer+
	 pCjfiKngCqjBgMNea4xfd6W3Y1TgMTd2aXwKFHC/3TPQoKAHUNOsUwL05qfnXpYyvK
	 Ot3aazvg/gPAI9XfdgTWvlzUNnIwUe59+DiLApq3QUEYEbdRKPUtE20Utz0galTH5O
	 XzOY2IaP8VRodxmckc36gd5JHaQfwFRJQXe212FK7KvLHBQEbO8eCEt0MlQfc3dflr
	 QP+fgl0zmaoLuPeIdC+IQ8cq0IY40tY9dMKpIB+pGN8Ed3IF3I8OV+lBm/ozPhHr1l
	 xJkfsmSQG9U2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92065C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873179357.28741.9922634911145258664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1f705c57a615e9fd0311232c609c95d0c0e6342e6f18c190231d1ec2df59e4
Date: Sat, 31 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748731793
