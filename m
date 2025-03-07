Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4180863CF
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741313334; cv=none; b=ElhgxtC9pZ/C24X7B9um+SrGro1g4q0rRxe31C+NEipOJeODs3HUJMPPa2Bzz0rC6uXZ30p0c7RD/v7cuNQf8VNWmyQmdECH+KysdgeJGDZAoHz+ThNxWGk9S3/mUgWtCdTlQrKaLy43QNonDVqNehWzE8F62kbgB/r8y300i4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741313334; c=relaxed/simple;
	bh=fgiXZtvDkw+MzrpQzrEMZlp+gEuoriurvP3vVguhvhM=;
	h=To:Subject:From:Message-Id:Date; b=lSXOF9bbXlm1RjC78cBAZOcCETa8NZUS4hnnqFUIGU24xcIyHwn/1ZnpERhy1aZu0JPkifarDfZRKwIiSDyhNvvzDXupGWTp8coLEtoU/wM7zlJzJZyc2F8Ys4QP+0UkcuRyW97HWflbHYbI7c8eqQrIUW2NX+4JAVevNcgtg3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVzzRUPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVzzRUPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E3BC4CEE0
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741313333;
	bh=fgiXZtvDkw+MzrpQzrEMZlp+gEuoriurvP3vVguhvhM=;
	h=To:Subject:From:Date:From;
	b=jVzzRUPzlSvPkeS/s07xVSQrxVC3K9h5w8bnLS9F5OyengQ7E4iQ1Wre0YkVRSY46
	 igrG2CIWpVSZC5x0cztRT7Pjev3owDPM4udbt0eTKqekHQKL+A4RoKMk2hVYO5vr29
	 G5nRF/5RvWeFT9mn2Iub+ekIizDG0Qi6mpRGqlr/54QBolXc4Ai8b6iGAt3lNxt0Nk
	 dMeuDC1qd3yCKOY1SilW7qVK3DfJvfC+Y99h3uw5PykFol/44IBACx0zMeLfEDDBGP
	 7NxARMIPKSDH5IZBf9wX6JxvpQBK2waCTP/EhSB5wDto1Y/AV8Qcw5ODUkzl6EkIF/
	 08x+5SpTxUBug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462BC282EC
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 02:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174131333359.10725.7919801748268003541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded5d63670a9f18c380f6651b157d51a6a35c7fea30a10497ae7efea3f812b31
Date: Fri, 07 Mar 2025 02:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741313333
