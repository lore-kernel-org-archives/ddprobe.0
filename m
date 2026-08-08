Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6DD78F29
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786203034; cv=none; b=quyXI+MVzUkLvELIaVhGspvyhPgNq4Ozudhj9LBSozikQ1qFdbJVkfHoLWCeP4x2lk2jy6+qRyYNZCKiFsfMTHkxQi/y9XS8Dxv+W6zv4NxQ8NWWV8dB6yLeWtBePFIZtE8qAodbwZcS5JObkwIw4eYbTdjdo2+j5WRgUz5W/jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786203034; c=relaxed/simple;
	bh=6zDlnZKYBHI3TCZ5HSR/lEWjCpbpV2Cz24PMSkN2Gj0=;
	h=To:Subject:From:Message-Id:Date; b=crfjcOlKSO4PAE1Q+QEFe+1Mdk4XvZNfmeRBnQGbBpaKL4BnxqeTcvCRipf2slZp/BBja59J2ETNEtMTpBhrtq/S4nrggW6wOaD+GgsCoq3VBqFfsHG4tPPPUZR/f00hWkP7fdY1lgSvhXnqzbi1z5utK4BDwtm3GHjyqRxNez4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPG5cTW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPG5cTW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD74DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786203033;
	bh=6zDlnZKYBHI3TCZ5HSR/lEWjCpbpV2Cz24PMSkN2Gj0=;
	h=To:Subject:From:Date:From;
	b=TPG5cTW75EMMouuCjwpsIp+dut2KjDL4cJTiV6yaYzivIOzQFF9erg/c5fa0Vp7ip
	 FKS2eh3G/5VlcLUiaXHl52YOEzfdpS67Y0GBRS3QQ/JcRgyGaOYeD7r7WEK4oBF8eZ
	 SfhmimIl47qaDK/pffDaIYzjoWglnV6xnTW7OyY/76hE7yxRGuRtifNNCWO7aiGY2q
	 MCMpA3A74DqY43vc2JnfvXZOq5P2MgI6jwbhzE3ryZ4MIn2zGUn/lKgbqVk1X5mWmX
	 2rRsUd/LshaKLpbiIs97pt9N1UbOXRJVIqthQsJUCGFGrviR4iWzNVlV8zZrz20PiY
	 7+In85qNJwdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E7BC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620303371.31242.14004388575359517156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510d14620b499f46b43fddda8bb00c354d48650f700088d6e4eb9cb83e82fe6d
Date: Sat, 08 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786203033
