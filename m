Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3932036E9
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771388694; cv=none; b=IQ3kytonYD9RSmZqxfibakSaA7lR7BTdCnwquV1sQQ64IYui6k92FXQYrY1gb89htFJbZJVYSepORIkH0qXbaUAeUzJtkdydm4d+/OqWaN4ypfGCl7gN9dCGYMYDDi+zxUKoguMtRkEzhlyT62ZukA+CJ9SG1BA1ulMYwFjIL3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771388694; c=relaxed/simple;
	bh=XVfrPgvdMKd5+lYv8hXbdKUTHkT5JNI+TZme5nZhRdw=;
	h=To:Subject:From:Message-Id:Date; b=C8cpM0fbOdMNrY7iRplmVOFfXeIsFbo8P+dwm2t01dwXXpITXJ8Q7DJXdDNf7+h41UqtYQtDfYDQpsyfQIpNuVgfNAuNvWlM4+j0lonzbhL1gYF8kzu/Qt4DMxu2iffkvxNBy7U3AFAidlxyHiYLPZcgddSL1OCy9W8URe6qymM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fs+OGQ6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fs+OGQ6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BCFC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771388693;
	bh=XVfrPgvdMKd5+lYv8hXbdKUTHkT5JNI+TZme5nZhRdw=;
	h=To:Subject:From:Date:From;
	b=fs+OGQ6TwII2E/TX9JaZtrMIIIHfWsADOsdJdjPw62JcUDDGm3mbTk12kPZn8tbhL
	 lavEY8QCN+GxYHmUCXSIwhb6eatuqIc4UCt03iH92+/mifV43uRJ0mfXXNH4k7JKf/
	 IjIVdBTSDuz+ElJy0ysOmWeff5wECQZmXKzNBvofkbTNvhHodq1qRUhD5ZQYbJzKfh
	 HjhQ3XI5likAod8PtZ3vRrdcIJFzFUf6XlM1gjrGTZpajY8pw8IcfdjfqT1LX39Qmv
	 XoFkVxKFaURM2ZVuelphj/NtIpQJcJwwQ11seQGYAR/KkulNuRmk6PiX8fXmGZpkT9
	 k/Io1XMR7UepA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A860DE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138869367.18506.9529379778885490821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4010fc30e6aaeb28b3ae2084e37f29d350c858856613843b92da4540a2ce2372
Date: Wed, 18 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771388693
