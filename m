Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B211EFF8B
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755558593; cv=none; b=eBuhksVzdaBs/ka+HRySOskE3lNlzQ8nrVqMlRxDzRjHyaXX39k8D7Gn4VfufuRuGDDIjkjuo5O0sewOLrfvu65VrTol9dA+S7IrFw/o9+GzZUlWhXfLC8yJY8J3IscJZAkpVO0PG4tLN4KaERJQKM5+jKJn9u39w/lZZarF7r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755558593; c=relaxed/simple;
	bh=mM1qOzzWiBBSDNaIprghKj7gG83kaUTW0Lqf+l8xEP8=;
	h=To:Subject:From:Message-Id:Date; b=OUhBYR0LKO5HJgN5Kafr/0fbNCojuJnbJVWHd+Dtwx6a0sBlcVM6JDXcjNT1TGeWbpBkHyGNtQdDLS0CmnQEd+i/7lmcELbJ9XUdCTKEA87EqCdZ5llrERYbCqm6riHdOAS1KWdjOJ6NcYmcxSiSzd2+u0Ta6IKZXPyvurw8op0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCGHS0S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCGHS0S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 984BDC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755558593;
	bh=mM1qOzzWiBBSDNaIprghKj7gG83kaUTW0Lqf+l8xEP8=;
	h=To:Subject:From:Date:From;
	b=dCGHS0S7tEt83FmtpkEE8OQs07ds739ZzF6GOWmBtPbT+4J/d497FVrH/dsdENtVs
	 cWbrmCm6pgSiN6cFDXkflW/p5DFa6LhYsuB7Nl201x8fl4NkgN5lL/QzG5XCu8DVvC
	 8MBOMnOpuZleOL+oLn6g3dL7ISjmj5AMl4p1620r7Nmy1x3XJRpGdq9E8HV3Fw+Qpy
	 0FCqIStlJXynLdyE7PshvnDrtvxnMIZSnoE1H+SoVIO7qTbjqnhtkPaFMPeqeXvVkh
	 ELm06mxAcgxi3imm5QgRQj6/89MGgxKHiOdb8/rWlKXYeG8HOBiwPytbJUm5Tusmd4
	 2sxoEat/rOS6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF5CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555859358.10326.11251556276881678760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e84726e9fa59a562799d7d318b29ed7626b47b1443bb92c2fff47ae3e47d11e
Date: Mon, 18 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755558593
