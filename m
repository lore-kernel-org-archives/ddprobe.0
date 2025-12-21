Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A849179A3
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766326434; cv=none; b=NfZnEuR+BFjTJC77xceEafNTGy9LWfV44bl1+qPzunNPfMlHGdbhj+YVaibEhKbB3RJ4Sfu2jaJjUB978OjFkofM4dRpNuJhyOWeFJSgCMybfe4E1T2Q7EbggQt9eTq1dydgh0YF6RSaSPZf9YN2ntLoL1FvPM/mLAuZL6cXbvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766326434; c=relaxed/simple;
	bh=FsYAXMPulta0zDO3ck06Tz4xpaBdd8ygUo8hVvEeCzU=;
	h=To:Subject:From:Message-Id:Date; b=tXtGxIEmRHtBYdyKZy9U1rVp+/XBYKAa5vt5yibILrcYmH7I2swWdyWIBxt9AKUn4dY3ZrB5I8VKvlmgN9uBf8vbN6ZBi6Kywg87E366U9qxKcAhyLy0RDY7GMLRR+KAQxhRZ3lqtmIQIbUfdKXOArWoF3x6Qk9UjVEaZHmXdSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7iBawiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7iBawiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78A3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766326433;
	bh=FsYAXMPulta0zDO3ck06Tz4xpaBdd8ygUo8hVvEeCzU=;
	h=To:Subject:From:Date:From;
	b=a7iBawiNBIRA6BRRg/gQQMRKgxZcgCEC8MrON9ls/AmWKzCVZFfVuMkpTqoM8VYfD
	 fxI2Rm/XfhK3mpboHfC9yBHR04n9y9gBfqt1stP3meziuAAFC32FzY5Pjm39yFbugR
	 4igG1UiWMUiqjbRJZnCTEcfyjq0WZdTb2lVxxhZ9x0TurqvEfEZw0Us698DYvJNOqi
	 blTDGbeNFtWeCM4Gig3ClMEveOWEaBhZzqgXxm0pZZk/F3C+1QLrOiia8/O4vPIhcs
	 xdykyOVEtiayc2p0sEFFgPsxMFMN3b2SDcCbKZM76txqi9qat+RrQR6As2tyr0kYqk
	 xZ2e0d/A33l4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96869E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632643358.15764.17697827158648807191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e96e70c32685fb543afe92fbd29a05ea742cd8f90735d51786b19d4205cb01e
Date: Sun, 21 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766326433
