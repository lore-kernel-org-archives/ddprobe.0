Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F69B19DF4F
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784428114; cv=none; b=TUrRJ7Cp2E6yNz+jYu1H5y9XokzaGvHfAj+Ld26HSceCQEuleWbNnCTedK0jeSrQB+CDGSgSl70H+Q3Ir+xqGEmJmz3HQLSNgoU5CY12puaQw7X8WfmUEaNF0vZlL2sG4gIL9yJm40A9h+PLUgW9Q1GIIkLkwqb+HJRseR867eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784428114; c=relaxed/simple;
	bh=8QbbzG30p0oOpZ7/a2gEezuCcSYuTO7slwvHM1JzT/U=;
	h=To:Subject:From:Message-Id:Date; b=LgI/J/PEqe4lEG3Eb/RhXeare8MK6cj3VPj1wYWOtYKMOK8I/2YSH15GcjHJZH+lU61qVp43qav4cBqq0FG6u3HP3WLreL9bIOt1A1jrD/8MHQHln9N1YXAE48FP6LRW2ED+DM5Odqt3Fn6TSpaUN3y3+o2dsZ0zGaUs0MwCFUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOVWS4G6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOVWS4G6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9FCC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784428113;
	bh=8QbbzG30p0oOpZ7/a2gEezuCcSYuTO7slwvHM1JzT/U=;
	h=To:Subject:From:Date:From;
	b=mOVWS4G6Wk65CpNPa5iWmYJjFJYCiIX4eSE1vGurqyfPvhsiu5Q8Y+NqBMMOOgzkW
	 0yu+WOIRjzs2fIpoJItPSy/BDXYSXFTP1hTYBpzcwV8q5uJIuHxwJ6q+TuF8I1zqpt
	 COUczvbHVKSdUiOef/yaBgjf84f8BkyrHqoCJo9ssVJA9Lqhl/jroubtGLmmOTdelD
	 n9rXqLf0B6ctSKVNWFeTkRXXLFoedUdzDwqApQVbuIvu4ntBldTXq1wQiU367xHd1j
	 JrUQ2VCuSWXF0u7BWybpMe1pk7D+ttX96AqsfalPBPjRRdWaYEE7S7BEFB7oFZuHOL
	 Bw+6gNMnhLyCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DB0C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442811370.18118.17343820515818722403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cba91838c6db5a6771eb9eb78eedf858b8499528ffa36f09633981b9fa138bb
Date: Sun, 19 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784428113
