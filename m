Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C16748C8D9
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791808834; cv=none; b=NGEy+4qPsCTZiYTtI3RB0ynMRRKQVi2C2Dl9gWL6lpoiDyVKIb2hWfgbXhRCVOAbjZ2hamlwCwSKgPJMeSpxH/124cver9XG6trPHF1PSiIw3d24NIT65OC7g6zevXtx3nj2xLSgieVwLk+y4MrA15JnxV/rSKxNBRlISFoMsJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791808834; c=relaxed/simple;
	bh=4iJzBb7TL89u5Qs0J1uHqtsoDp4Hd2xiLIDJTHde6S0=;
	h=To:Subject:From:Message-Id:Date; b=nIaqmw16qzqdCQQLtmWBrg4VdvlWQrwydwq9nlhrh6RXX91A5fL8a3Od4JCRaaTJcj8O4bEJX/b3sYXJImMFGdWygl8JFe5W/iRt2crZTXPhZ9ppfNrdHzNK3rxAzeUxZK5cXt1SERSHw+6+pZX/cUdrsq+OsxPBc4qAGdTi4pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3e5HcKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3e5HcKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32DAC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791808833;
	bh=4iJzBb7TL89u5Qs0J1uHqtsoDp4Hd2xiLIDJTHde6S0=;
	h=To:Subject:From:Date:From;
	b=b3e5HcKImquJY0GG1baQpwDqKKhJU/2PKNCLyFUncF1q9F1ZS58xsHhoDIWeTx+zL
	 6TlSHGJH6mHag/Ve0KAW8aEM9vXYSOBeXCRXoeb1xinOdwIrxZmcp4qTTrYvUMUDeh
	 TS/L1mDo5DbbuOttm7yWmYezBbsyybAn9AK5Vz7z/zqufkt0wx/qke1ZJ8XFbQj9ss
	 Y7sbsf5pcQGpG46Kr27lhjRpehULpDQEVyyVB5Ola77+6Dhf1X5f8gQJxSWRPuHz57
	 RP6Hucxz4qnGu3QZQ1/SCZpXTUz3oU9ijrE7WecBJkg9zO13PZYNI8GYXS6I7w1bIA
	 BtkDcukk9iM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CC2CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180883371.24137.4536761583738508031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09dcf25f6220bb9cc5f37bb7f8e610a722556ec82c5e84ec8141440a6a35e842
Date: Mon, 12 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791808833
