Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E103E49E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718467703; cv=none; b=TK9/oJn8xu7OqoUUQAusctFyQycNEVsBxe/8pFdyMprpTvz5LZC/QgbPwHTCwypeqvHjIoyRlVDQgfYUkuOsyELKanxNEL90um+FsPxFse5sCi06PSm8o0uNKP0c1t89WKwneQPwZgXbCTwnHD1tq1JCA1GzUwMZyGlyf3LDtqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718467703; c=relaxed/simple;
	bh=O/BjdSdqh+pKhFJT9bz/YncUuCnA+t7B355CRJrG0Iw=;
	h=To:Subject:From:Message-Id:Date; b=efmzmA0hZZ4qVRX/UvLJG+s3oRVRxXdyU/oR6KiYVUPj53QTQFMDgMHlpUOaOv6w+tDL643S8L3kAKMq3MY1D/dh6v9jQxtI6vnxl0czCNqsj4UNVshutXMcID+Qua8lPWpzmfYxdJ5yl5T4P3lsAgQYjYesqZ0+U0+8gOknYbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DONpDMP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DONpDMP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFF21C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718467703;
	bh=O/BjdSdqh+pKhFJT9bz/YncUuCnA+t7B355CRJrG0Iw=;
	h=To:Subject:From:Date:From;
	b=DONpDMP1Oq6R7IlKfJ2eS8kqfWJqWICVnIk4Jes5rHI+q9KMxovmXMClKrkaJybxG
	 6pjqgltEMt8QiOw2GdX1EBC5hJ0+QCxErxSlhK4KU2lPHJrqVtZ1y5Nb+CSQNQC5Fg
	 S9smObHlvuTb8xLsuKnYOGeknxLDJoBhJdbXZkPNtXTF7NJw7hFY3JpuwrTS3RrL0I
	 8JQ0mhUB2CMw+2a9Ub1Jk4PU+16yLexFzS0G+5375/y+5BGTE4ghN2xDsY2bj0p9KN
	 WLay0sHsCrQSDD4vp7nOxwW9pfsQXMwrTBOnnujaLLHnOZZ9Mg1yTzjfXbtVHc/ESO
	 +GZXEmk1PWJeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60D8C27C7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 16:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846770283.28963.4960469977648898815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8a517f3788ad81fe15e8777aea1295a1f5b9c32137d8664d25b346ac3e8382
Date: Sat, 15 Jun 2024 16:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718467702
