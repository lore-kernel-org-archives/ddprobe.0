Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EF62868B4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791149434; cv=none; b=LJ443O0Fjkb4KbL9czz1PBMeLyOAImk/y6FC+64+GmxR//vhvHh3UA/TvjiUaRRqj37QzNFzk3u9hdpeIhmZaiyGWABtKoG7P2LHxX0NLXqaFihMzU7qYPpI/Jr83VyrxVBuOaa2pcXpdNvEfka660oECZ7k+I2jQuMPXBYDEFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791149434; c=relaxed/simple;
	bh=klucjNANyyZiRw12G86vzY6wUXi/0mzINfPUozNB3/k=;
	h=To:Subject:From:Message-Id:Date; b=FJIf4I7xTV2SH5N4IGVQrxZxrhxPu04GPUJW8bs5aB8yWhenSCaDqnS1oYCcrhkx1JwO4XwC0/acZgpmyme5VSESPhOiL1XSMGhiKmD4JX7oBLWJXifY/6a0BLquQjn1U3SesfWWY2Fmbapv67dTehnerflkfhR8RCnact3iEAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erbBkjyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erbBkjyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8CAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791149433;
	bh=klucjNANyyZiRw12G86vzY6wUXi/0mzINfPUozNB3/k=;
	h=To:Subject:From:Date:From;
	b=erbBkjyPUOzyXxTk2JAdjrVR8/Qa72Cpvsxqf3eiR2jkbKJAwHFh4R/hUNlEioqg0
	 MXqKHzKm+9hzp+IfZgdKn267yMsL5q9+ZAVId/niMbXYu/PriaTyUBNYRkunifL5ZN
	 yHIqOIrw2rQbPm+QPZT8RI4T4cwa1T675sVQ7FSbwNRHR9Dv0waC+G7Nb/4+T1Y4GP
	 xzn7adA7LZfUe8Vc7OPs+PzyOytytMHttT+1nJDO/Dv7WJkSo4c5PnkzYC1hobctTn
	 NkffpkA1ueOERUqvhCq9ewrHC+fJvzJYLCuYdGmyuPICwACSFGQLA8tV8CZ6UwQIqI
	 /Z+pWkxbce5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA510CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114943368.16159.3612976780877123136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e988ae895341a5c9d63becb5f3fb70cd0c807df48d57c3344f1b47ffe40f8c1
Date: Sun, 04 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791149433
