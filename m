Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C4288530
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768329234; cv=none; b=jDC+NINIaT9oPWmrhV82q3ZQz30PezD2uZ2T4t51BOOQ6Swh6naNQQaLmR5dGqDJqun7JiB8ynNFsAsdYxkSYzWeYTEigMPpjd5BYTGk0wQ6JHPf3skh6MGnuSMK+MH5t7f5DjHwf5f9R5Jqi766HZjuLDwaS7fMFyHzpQSgdR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768329234; c=relaxed/simple;
	bh=qVfVck4r8wZk7yU/YNLucYQ0Lhkc0YRlFL4S5uArfX0=;
	h=To:Subject:From:Message-Id:Date; b=crnaTdSVBsmO4ehKE7sIFCkjerO4Vx/UAmIcZEBqnENDy4RYJ+oVINSJQtLeZatRrQogRc4CW3FaF5pb8V088Gh9fD5luTc9mKEvGUP16skH4eQEVpVgCQ5qOXbrncVTiGx1KX4RurB0yYe79ugyUNDL1zzEE2KdVRGs+s8PVW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMlu6iNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMlu6iNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E918C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768329233;
	bh=qVfVck4r8wZk7yU/YNLucYQ0Lhkc0YRlFL4S5uArfX0=;
	h=To:Subject:From:Date:From;
	b=vMlu6iNjWiBWC0i1iC1jcaXBoSAY7vAo185leABmMXDvnACeginpmjtDCBwNbjpd3
	 SWOFscJaEobWqNR+68YYKBUOeS3vNvoqt72xoacELc6w8n8cett2yjXuVdOx895XrO
	 glRtdI4qHgWSidYWGyHLmNKRdNgfgUNqU5XAjExIfmfWQY+4E7jO6qensshVAqiQzy
	 aFRtF7qOz/Uzvtmq1s705v26gE/sw0GPBwQimuFUUkZKGNTztLUuHulczOFfEJFX/1
	 srtPD4qA57ZnpdBP5vx+DFUG8s3DGhMm2v042bLyCPsRTe+9rWasYdSKDLhvoGnnLX
	 9ntJFsv9yJ0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045AD2F359
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832923358.6277.5665401307995244889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee207d0abff21a2c06a4bfe0a5b7b63c57af4be19b8efe2873f110d60a376155
Date: Tue, 13 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768329233
