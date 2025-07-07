Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20ECD21C9E9
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751919594; cv=none; b=bAH1mDHbRNWFZtJdLuSzlZANpXEB3dsv2m2VtOmTpaLWpiRsGGQwH5xT8QflpXR6dzfaARUpEGlh91KctLvbTImTVoIVzJQGQLVOrE+fbh4Uss4I2vRvyINHC6UXQpIRsmqyvzzCaCkz3RrdNbQ/0I5x1S/GzTsxQ2aHQCXYkx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751919594; c=relaxed/simple;
	bh=LjNxG6vxtgV/u5t81dU04LcmhnmWvEqjGIMEmLk5Zrc=;
	h=To:Subject:From:Message-Id:Date; b=a1XQgbrWN0xJz/4EUBRuwYvM+CQH+sRuZjuMdp9woWssVuqFQxzuJELYbODlSm8Dfe0FuMmjqbKSMjJYMoCnO26NjMGpn+bzDfnruF4TVuJOuULg0pjoDYrHdw8Dbwx1LDVgN+K//jL5nuGUAhFLiCheyddBtGHLqWMX6dEjpR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7K0F2YL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7K0F2YL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A261BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751919593;
	bh=LjNxG6vxtgV/u5t81dU04LcmhnmWvEqjGIMEmLk5Zrc=;
	h=To:Subject:From:Date:From;
	b=T7K0F2YLTdIoIzYA0mYTHDFjE98sf5qBfe5/wSS4cZtK4SrP0QgnPCxknA96a9Y7g
	 FEC+1wKIKzTrZ0Q9uj75IOa2Gx6NReMWboRZ6g9coVXJkHms1oXlnR+ghOPOvuxUao
	 J8Ysu1a289/w/45xZy0GT/cRbJ8k/UUWeV0ZPwgPLxoEGjuMZ9cTwrnXxXN/PN8mzx
	 tPN4AmEFKe32SQbCztgISVgwaaQTry85QBjGeXqk8CWm3pcb7B+mRPyAnt3k0m1Gkc
	 9aWmeuPvoZ8kv6XZ/DvUYGXFYw2AuVGksxT8t6qMCmkuMGLZ20m0iaCc41DhumXOVD
	 4G/Q27Hsv3tog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D4C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175191959358.570.5187940777567286581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab237dd41052475379990ae4f83929e013fa77fcd4bdc422a5a8fe5bf047404b
Date: Mon, 07 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751919593
