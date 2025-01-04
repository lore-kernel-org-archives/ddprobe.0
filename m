Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6C21D5151
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736014554; cv=none; b=LqUh5BKia+uqE3g92vgTzCnyi8Al/SFzWn9j69QvyMcmKvSo0w1PsV1Ze4ifljO5Hn+vUPwTEJ/sQ4rIY2NId7UdBzPYY7u3tUiLB6z/pYSY/DlWhI6sP8It4tLlravaaUb522VcNue+/DJvsoXame52AGOBarUoiHP9vt5inGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736014554; c=relaxed/simple;
	bh=r43w59/Ai23WjaZEWnVLHHSlnJBUif7p773MsHYGpgo=;
	h=To:Subject:From:Message-Id:Date; b=YI3rdXL9XWRy6tr9KL2SA5yLFUMGqzDI79Qv7ndnmcz/M2VSutyQtO3D1XoRRoePEv5yEEICkcoPZMh6fN8wxHAul7Nckg5XYW8pkk71LQp6t2WA8dDCaRimpLWUUXxYRVKUN/S3X5tmd522ZMVaURt00+0itUXtSim0exIx/Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYovy41/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYovy41/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95A0C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736014553;
	bh=r43w59/Ai23WjaZEWnVLHHSlnJBUif7p773MsHYGpgo=;
	h=To:Subject:From:Date:From;
	b=fYovy41/VLagGYws0Ru2TIK3KpNXUHNHsulRXWXvkXLuVZlwmm8G29oEQkanw+Jzm
	 fAEfO0uPd+cohFNBNKz3+ObwKrIObCX7WwA3gulLjScxsuqeo4OYfJO4rFRWIrWwTQ
	 myAtr4XUOdU92W4+fP+o46hivEl1O02OuHmgWSSoEBOYsdA5+ATUo7HWMpEprJPuHg
	 xBW4j5N8z4zJlOUXdueWl5JPfwJ9aH3SrFugMJLXqqwP9nzH9caffsbBTlR1PXPJwU
	 iCGbcBVUqed3+w1g1OpUCkxSOxf7qoSSaiaDSGGa4L/Rn2w19uvPAFKcqpg/t1p5qM
	 wVUjyfDDjBtvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215AE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601455359.2386.15872797606969951921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4749091f2d54e3ce08279f981273fee44af546c8d74079e7f2f07867dd3322
Date: Sat, 04 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736014553
