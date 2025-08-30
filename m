Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AFA252287
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756595994; cv=none; b=MEfRbjvX1jC2vAUbQlOuNzk4anWuEO9LC1hn3A41Iy971bSDbqRtXwMen0ilUOkoYCxJB0eqoaC3ucOkFR6fE4GUUsa59hy2FkDTzNKcYwwNnoENtawNwa8tgS0BZCgIZddP4SUG0iA5tYbYIyhp4zNGN6dNCDmLyIoGIWtgKr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756595994; c=relaxed/simple;
	bh=oOGjYke1dl7h314TLiP98FgzB2c0sqhYCNmIMznTyzc=;
	h=To:Subject:From:Message-Id:Date; b=jM346hNmNcuLJX0LGrrDpPD2OEC/g6MVehPNgyQFL+o11kz1hESEJZ2qzMtH1plwIkQOMzILTM9YP6nzuI/grgoRTgig/BmQFl8j9aWAzfggj3GHAs3QL+EuI61xVPkzHsnD6juSk46e00ECOW7kqODWAbkMHBEbhMFSxE3ORJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnZ2QVY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnZ2QVY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A429DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756595993;
	bh=oOGjYke1dl7h314TLiP98FgzB2c0sqhYCNmIMznTyzc=;
	h=To:Subject:From:Date:From;
	b=gnZ2QVY7qM0MBCOEWaOtyinZ6DELYNCNIlDUN8x47RYlT4hoOwziLlaqTXFt15bZJ
	 XLWbATHVLzzz33r6MKjQlU4uIjZYb3dfHMgyueQAF3/2XIcsH0g23vjIzcDSky4GTC
	 ZfMkb//jjJpg324d9uGNPnR4JCvUUwtS9cZUxs7XPhR5aenp6THKkCebLTOkeL6kyc
	 ZDMgMbfS+wWOTcsNmAxt3ODL5n4WYwUuPhNPqNxGC64djK6cHOcovyI2QZPpV9u7m5
	 Sns8JLCgCOMN8DvFB+hd/T1w/nJRp9MnKK7ffXiXHqBkJz/0kuagK97DsJNyaf2YlD
	 UjJgNdGO6zRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91772CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659599357.29703.4898280908279015609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67037bae6082f6721a868dd53657b445a01a138f0323898fca73656e037cbd4
Date: Sat, 30 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756595993
