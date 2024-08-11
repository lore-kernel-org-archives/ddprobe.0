Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D02C2F2A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723347354; cv=none; b=lv5o1QhgAnOZy+/UnC7Tdqr6gdS1fxYydqyevRvP4sEyTCaKxiv4yTBZN1zcuutn1ptTkZ5QwhKRWeQdiLARYuEPCplAhCdBP0LMTzM6E+O4rX6+H/ZthbsSGAU3m9EuAUbx2JoDpbGaX4cWpDTcLjkbYy47J2OaKv2rof7upzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723347354; c=relaxed/simple;
	bh=wjyVoeMTEGNvSk3zcx7BqhGBKx5unxrY8jtoPzFgUXk=;
	h=To:Subject:From:Message-Id:Date; b=OhvUoETDpzpfrqVqFiwTykw3KlR37OrYuHvSLF177ltOyyEgCL//H2LLl5BySNrPRqUmILMIwInDYv6vMVuFh7jbIOzK5h7FMfLO1hcDac8KVzQ3QLfAL4NdbYW4IRzumS0Jfo2tu8yJOdJhSgBbsEHfMPvgNCIfDLnpGQEotEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbTdIjFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbTdIjFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA115C4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723347353;
	bh=wjyVoeMTEGNvSk3zcx7BqhGBKx5unxrY8jtoPzFgUXk=;
	h=To:Subject:From:Date:From;
	b=JbTdIjFTjyxbw1FLTMdZwDjCuBPNyVQYZpL/7wPFGHnSvscYPod76jeVEQTTnD4OG
	 x+yGRxzAtaOrNAcF7ddPwp1a6nhJmUHsHxQkku1Fu08NFDsnYXUWr613lv1zFMrI2h
	 Khfm0smMKPXgkXVtsb7AsNSOo/b6KVRFGI5FJl3PAVDjXlfhrtyqESMuFyKk6j2tpQ
	 FApoErwt7exUCgwrzIdTaVYgQ5Be6sp2uJNmwVmlF4ueuiqHgMeSGYk5toZa0zYdeL
	 l71WTFSpgFySikkBiliTblcucUKEL/IMcL7JLxrv7983s7zpoC9IJ4yZlCKBUCNmyZ
	 S/TNwi6VnXhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97082C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172334735358.13037.14554363530656688903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ceef43e9cdeed3fb6b923642f2966f871e450a647909c605016f7ce7e02364
Date: Sun, 11 Aug 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723347353
