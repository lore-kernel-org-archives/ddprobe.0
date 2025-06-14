Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6821804A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749868195; cv=none; b=dLjImQYVddGHowvj/Df0nm3j85rvNUHpIZp9dxkIiE0tm9zStTPx+JcTHRZ52bJfoTcMWLPIBOey/QHUQvzQtr5IWx8kMZ7pPtK6u2+ihobgol4TZZaWWmr1Kzx2DOUB8na6eau8XQrsAPpsflZiBUWavrZGAtPMvDdguBoWVe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749868195; c=relaxed/simple;
	bh=efM4fh/Hk88qabC41GmnnLgQmoDbKeD/kZLG4ky6+XQ=;
	h=To:Subject:From:Message-Id:Date; b=oijMMEnK32adOdLWHS95hZl9kbzO98gncL4hBu+CIx3oLipbqIicOow39qSRjVMbMPbXzvQCkr7wFthVHwqPDq7dslXBMlUscgnq/r+WmtvCE7T9vhTddKFd7R/Z6dXtHkHmbC8bvbYUKwhpxJirFnNRKwdDcTJfgWkkIAC2rGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LScuFGIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LScuFGIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59F0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749868193;
	bh=efM4fh/Hk88qabC41GmnnLgQmoDbKeD/kZLG4ky6+XQ=;
	h=To:Subject:From:Date:From;
	b=LScuFGINdIuJz+ttT9LiAyqDww+EN9XCE9Mo1VGT6BH2NC+/pno94cSIAYm3SzEEZ
	 z5HQnz55fNau3g2a67fdFG7GBaavBmNT6262o5xoatcmNn3ck56rsfkDu/oMWZpD4V
	 x9gN96Swz0p3TkQhXK612zmfiJAiY05EbU5LqbGUzulgMe/Q6pn2kxiTL5KTmI/3YG
	 q5vhV0InW9S53PUbuZfRYJDgLQ5c8f+x0TZ1hU6ktwRf9U+TORHXetIzgUeh59WOvq
	 C4BuEyrjnQ77kHgN4IeoSVPzDtaKt73gimr/OQ+1z4nfu/2iScMqb7pmAsmmxPxNCR
	 JAD1Om32DrJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9338FC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986819357.14127.11801674885179957500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c32021edeb4c139cb2e82c55f4ebaccccf2787833cedf5d31af87373297fa45
Date: Sat, 14 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749868193
