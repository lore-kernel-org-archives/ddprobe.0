Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4C1171074
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716915863; cv=none; b=YSsbqmLbbP344Pe/vK6dCxdA33I7TnL05UnQptcM7t+537nhR2cWwsxiY1szPwpW2xEjH07KGOTgWBOHQYBzOMggV8KjNQAtc0D8K/dZPVsx3xxCiQaP/uWeTQtbe2saV3Wqz+U6Yhnwv1Wb9aaCpn0CyGtbJMuA3Ji5YMRTM78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716915863; c=relaxed/simple;
	bh=zpWKlksWbC1bekatKCtYmseFAbjYibRM0vVeDhLoT1Y=;
	h=To:Subject:From:Message-Id:Date; b=TTSI+4UrgtScGcSMyfcwistfJEqQB3Ir2V/OW6N70Ree3FxRYYU0W5cvXUXgRnMJBqd06fClrqxo51tLKknAQo6YLQaPtTHRt5YrGZvY4eCZgirvnb9eP9D0ZLvfS0mNeUh0R11gmS2iD3Rfx+O/y4X4D1vXzD/M8dPQj2S3E9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1ueenBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1ueenBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F16C2C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716915863;
	bh=zpWKlksWbC1bekatKCtYmseFAbjYibRM0vVeDhLoT1Y=;
	h=To:Subject:From:Date:From;
	b=Q1ueenBH6SIqOPxaL7lTnIQ1QTXiJSbwGQtdjnTSgFGGhD/wItJhxWekcGaF0HGTx
	 Zhxms8XpU7OrY8CoEW7nwu3s0BQQvSzQ50WGC9LC66svmFYq/aPDDlddZJiKogfGSQ
	 H6h/nY0SaUuRtp7ucZkMdNkicWPm3qFUb0S788TZHJzkkmpnm4jXb7L/bT/psC3s9B
	 8z0cImEwZiwMUrFiF4UTIETVvHCjaNKz9esYJ4QmnLkuKiIzyrFNtIoZKna/A3m0/Q
	 Cf48Wqf5cRlRRoJHXM74Cv0VgIBYM6/o0n8V/WmF5wm4LPwMeVN4Z6nkMGQJOGQMb1
	 vekySvXkxaq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D703CC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691586286.8347.5990576757882472815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92148db3e127fa329c43352b768b840ba95c215a97dcee18b35a500d04e9d028
Date: Tue, 28 May 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716915862
