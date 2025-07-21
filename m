Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192C4280037
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753090794; cv=none; b=Dqy6SRb+/AKFJOyTGZlnR4Hra/dEcz5jMrOrcgv8Imzy69llZbRz3RXyOLWE85X34A4V+EFNCOM4BXivhRl0pm1tByIi22bWkuaDNsHdAnr9rXi9vSvCp1jqohC9jFu3C98cBX4nLNgAwjisSOdlYNA7ZhAWJdnNdHEgt8qDi+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753090794; c=relaxed/simple;
	bh=s95NSMDqPYp9dClJKAZj4PeVqlNHDOZfsZVdEpNqJgY=;
	h=To:Subject:From:Message-Id:Date; b=SNrJZKeL/k9egz0++oU2jt7cfBC6z6tpvKP/HJ9MBzqsRVpsMgtKMmXhiH0F1Y3Sr78wSBo+iCRfbsbJ+WyGWvNnyRzTBw4n5H7C2gK1qlCUyfpM2o9CqwIJDsVRRUNzoC7OeTrZWUFJGJWsxNKb629e3jbL0bMNzPzls1suiic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqUkM/24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqUkM/24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F278C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753090793;
	bh=s95NSMDqPYp9dClJKAZj4PeVqlNHDOZfsZVdEpNqJgY=;
	h=To:Subject:From:Date:From;
	b=bqUkM/24i3bjfD7q1VQmQwxz5gSItchpRtlmRIGAtG4V9vK53fqi+FMTP7ol4ILff
	 jYnz1FcJp+BA38rpYIX+A+05hxZp42c11UH+lxYNM6mHagpEwSmFKWLYi67430iz98
	 56bbxnqrH4gRY3udMcDEnCrALqJKqwjwtNbyqM96+U1fnVn5b5V6QziqKcmSpPQ6aj
	 lnusV5zlS4V718yVvsKUTUpKG27+nVwwmPCvkB3tn9RcOpuHkBh+vFOURC5KCFfzlx
	 5JfxWoI6JHYYAHbofQGHcAiiFzVe+oeCi5EunEubvVlNP+ud4i+gGTe+rLREbnHmLf
	 bcHMnptPTVYyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA2C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309079358.30440.16000675813512426286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2be9c63e2d19587294a1972aa1bb8eefc5d922460723c47680fb01ca023311d
Date: Mon, 21 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753090793
