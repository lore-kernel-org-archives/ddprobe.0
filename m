Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409AB17BA3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735965354; cv=none; b=EORg4UrRYdExD4YIjSGurMtJg7SLNeeViNOkhoiCrpGjutT+PSzDumZrDMSfVRRXmgNqZPs0KzSo7yXCaw/vlprUzacVy5/LzItebqjRPVAfRKsEo0yClR5ig0tPglazes29NlyNXx95JbB/MTA2kk4tN8OGzc6+C+ZouoEM8dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735965354; c=relaxed/simple;
	bh=ZaxYskBkb3Reh8QZJFo1xKonPsjVPZMeYvuKhqnE51o=;
	h=To:Subject:From:Message-Id:Date; b=Rv03rq2CRsUrHR3eTGdDa7gQ+ujJF2lTr8yihdsRX68nGnLGZzQYboFbLGS3a3B0iSqcrQLq/0i/CVwfz3yiS6KLV2hRk37MEwccfm+tJaX9HFIAeLjD3c2YmtBDe5WeNjyy0nY/dbhZhPDbvbE8Ur4MFf9XTmCc2kL8e280KhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUNLQ7Ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUNLQ7Ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC39CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735965353;
	bh=ZaxYskBkb3Reh8QZJFo1xKonPsjVPZMeYvuKhqnE51o=;
	h=To:Subject:From:Date:From;
	b=kUNLQ7AgN0yV+Mal/O/mFgFjWauPmoHPOn0UrOwKU+phEPVS7tzph9DDLTVsAWLr/
	 izD8DHytdvqTDmifPQX3zWvrR8VslhEdj2MIVT4FyE9smmaDtigQiegBd+zhI0g4K9
	 Ol6dJSE+lqyEdEZy4uFd+6wEWA/6mwol6FKVfBlVnql22ehmHMUglfBUiHdIzqnYJ+
	 Pi+pe0+UIRfb7hM6iTO5YExK6pVbpFtwVD9bHSa2PeOEfj2NCrRRoP29lSgGthUK44
	 1YrWc4C+zmHbX/2xTlbst3B/yqd0slFMHfS8wz4DI+pxhIMuB5qoxlchgldDvZGPx0
	 5TKC0pVtyS6fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9509DE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596535360.29678.12732716954743915994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e94d74d4cc26279b7dc3db9bd9a61a634375500c218b9f9acaf528500c28d7f
Date: Sat, 04 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735965353
