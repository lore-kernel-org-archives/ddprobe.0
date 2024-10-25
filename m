Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9D015D5A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729875354; cv=none; b=o5PF7KdjLtFxJyrXt2dL/keN/WugUoWt3H2mfIYBMu2VLpwPfXUFke55pOW9iivXFDvKvcCUyT5wgZo141ZB/9LbJmIXaZ1CZowFGYpBEZAKiY9AB2tgIhFMf1nCPIY2ZbmdupAJn8Il+xOR6mgusg5jzxR8gkSdjKwTK0y3j+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729875354; c=relaxed/simple;
	bh=CtRoWbp2v6RWaXhihCe6qtr1HUNcYpd1SBRH3tDds6Y=;
	h=To:Subject:From:Message-Id:Date; b=jjfyCdy0+ivOtHynvVpEeqVRQUzHIC1vGxVvztKvAVtn5aa1tqGN4r++TX4av001MEG/2i3lKXlVTWD80RDxucM4jnHIT7hUS7ZqZqfOvQGtks0IqquAryjbOs3gGYynLohiIrM0R0etqZY+9I52UQLK4+zFjJbXwCzTaqzzoCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5lEfa9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5lEfa9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA5EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729875353;
	bh=CtRoWbp2v6RWaXhihCe6qtr1HUNcYpd1SBRH3tDds6Y=;
	h=To:Subject:From:Date:From;
	b=K5lEfa9tM3IZ8zKN0lFuBszY59PYSPyA1bmbOAVANmGn51GmcdCMn642yVOt4FFAS
	 PDEwOoQP8mRLQ/Wh8NKJWorHDkNCXgp1heE2YU+qoOJqijp0zTGWtqLZIm1rvso66c
	 z9bKk2kef/R8LkmMvbJdvjvlQ3ipVWrYMhQNnJmld11nQoZALCnm7ciatsW+r3Nixz
	 jrEKKlDzkHSXFV6k8de1OIk1glzheHEJ91ZFDhQIXOSoyLD/1Ihb7jPxtO1+qUPGY+
	 EwqXDHeoIwhjGu6vMZpabeuICMc4znvuhrff9zVhN3B64wVZ+0FOnIzOn1c7Oum/TK
	 v+K1hKJHJRCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765ED149D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172987535360.16309.8746831852598394704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92689d36425323a7f4bd54b2b6ac3d739ed9d1d9c908a06b6956d55557694e79
Date: Fri, 25 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729875353
