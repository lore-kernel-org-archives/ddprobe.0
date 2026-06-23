Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F34D311968
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782235594; cv=none; b=l7fBDEVMQL817ZyKpJackm8l+bgidZRLSJ5EBQCCoCY8kEovtM0oKw0EMZtn1wTLyrfmlGVrgBaBCumDh98pT07X4giYCa+JzhPYUBUkOKCq8+/onHiFYgByU8Dpr+4Z1IPnKMAmrA8zV4iGYb9h14v/cRVgzUP/+ELyEDpgTik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782235594; c=relaxed/simple;
	bh=6c6XOXKb5scIMWZfF+Gj9WBQrbVNUxGGKWsANaH/fsk=;
	h=To:Subject:From:Message-Id:Date; b=nAYSctaXJnU0X5iBO9qpA9pkNb+9eSPJLCff0cIrG1qaCqUJHmrRGker49EBx7n8SQNtTC9vemGTGZgGTpgOwQ46iRzTHgia+DMGyabKrLpnUN5vlbKnfvGbbQWh0SQJ4LJ9ZoiF+s6G9t06ckAq8pEg9r3OUjaVPLgmSVBV1rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDnru6Gr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDnru6Gr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DF4C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782235593;
	bh=6c6XOXKb5scIMWZfF+Gj9WBQrbVNUxGGKWsANaH/fsk=;
	h=To:Subject:From:Date:From;
	b=hDnru6Gr03GNqktDrYQy1X8MUOje0pTxjqvzZ43NDWieNyA3JZL0bHfco2Ouc4Wp6
	 t/wZV0JzMpSDOZq3dI407BQ6AP9bdZJEbx+xYi6kzpeNlLm9UJ8W6GAaQx8vng85PN
	 iU39Jryaj3IrfATM9Gph7unJPWNLNPDVtEj8Fipb2y0Dz7xHz5qJ9tUBuQ6nZcPKzX
	 K4Iz5h53uE/zczJ1lWtf7UitS82Beu0pkefuEHUVkFkUnaTqxYMJk/5Mj04gPXwXym
	 LKrl+K179qwa0rMbdKIj2GQbhRyM8oUkhptX8d4Bic8QWVmTCq+tLR8bsdEbqVCVLu
	 rq1Zs2AVE2cFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C40CD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223559368.32040.16614305206946600233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94ff62d7bd69dbab8e206f552c4eae2d72c9f6ad5f1c3cf2c421b30587204ff
Date: Tue, 23 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782235593
