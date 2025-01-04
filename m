Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B23191F99
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735987554; cv=none; b=PlOYaTC8kviEdgBXuuSSodNxDj/8iDeIg8XBkc9OPR2jcAs47veg0D66SXBpAZkN2y2LaaVNtIzneqNeiJgp/o5gnWexn7L2aZDCrLG5+necp/olvckJTQem8UQGRZM6F4XOIGputp1hPgdyQnq6NbsScAU4zfkQBtCy2nc4aP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735987554; c=relaxed/simple;
	bh=WlizVuDbVx+OaelJ3nupeMG/SY2IY+Wp73R9dpXi3Kk=;
	h=To:Subject:From:Message-Id:Date; b=hZ/Lxmea3N6qG5J7sYjTv5WoxOMzIvyogwQj5ajlQZAo03Es3vsKXUnur4CN8IsBe30NxNjTiiSlxgofPgQKg8JF5YmnVDm1Ym5oTjfGU76ZQfQmwiLb0OoqXqOYhtbJDlYjuyHTAoATfrcf2XITyEbQ3Wv217PMWVb6YVWHk3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvaJ6FvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvaJ6FvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3FCC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735987553;
	bh=WlizVuDbVx+OaelJ3nupeMG/SY2IY+Wp73R9dpXi3Kk=;
	h=To:Subject:From:Date:From;
	b=JvaJ6FvM9Ib5QhNdKifxG4r3U5n8p4UCa/mzfwQHqHuiCS91tHnrqiAzU2ATG+y8Y
	 42Sx65y2NapY+0EJdpuIkpZ3o6lv1lvSRRD+wLLH3aw5mh0piPQalGeU6k768A6XO/
	 FfFpgxhrilhJe0GKThWi2+h185aA+iU2KAE5qiFoSszcAonyYldHqEzZLfvUrSlrkv
	 Pq3EYEiBtt1JBrZpEiouF1xaxcRdESsVpLVyCesQnA/M+Up2cpWhTyzcIeJ3fwMLRs
	 vDv5yVP7vKYJcATjRqfuBr9Hl8toM6eMd47l002GiakR8CYC5d3lILRM//8Z5IHVur
	 s9UUthdjq82uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B0CE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598755360.20804.12129907236191795646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0368d2a2b912ffda16be06846500180661cc46b02a95e0e7dbd74089ad01b81b
Date: Sat, 04 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735987553
