Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349981F866A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755469794; cv=none; b=Av7wsFyJkBlanrJeuxA/YP0E5bzEURzRF66menXZnE4Tq8HKujZdmfZhR+TDe0cd3lTMSLNzpXido5GnfhlaTQLPA8cN1kYrEiTZn+xEfdXwJbCpqex8koug1bgnH0T/cyCsRoXXeotZHiSPP6ltAEt1zmiCNZt8ZwtL5gAPWCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755469794; c=relaxed/simple;
	bh=eup2VLBko0HEW6W/tMXMgJJwIOPvpdrLHCSKM3BLOsI=;
	h=To:Subject:From:Message-Id:Date; b=j0JRFUTnbFmC0JLdHsDTHQO+y5X8xKOtoAQYOrOCvG0W9AtwR0yVNfZ4vkmN411fjo+j4TElAmPUH9vPXXXBpme17kBJjIyqjgX/kVlhHKhRdmKrIumaFS6nZNzlvYWXThAMc99PX2DGFyqi60thy3xdZaP4b2hBUX4UX/d3aoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRXu6H1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRXu6H1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755469793;
	bh=eup2VLBko0HEW6W/tMXMgJJwIOPvpdrLHCSKM3BLOsI=;
	h=To:Subject:From:Date:From;
	b=kRXu6H1gzKtwGWGB1JT5rrTOIaUu+4Bmm2t7h/y9UhMJ1wPBjjfVKzDwwvm9MjT6J
	 sBUmwx/ClYzAYWvFt1T1Bg13BqzK9QGnTtl3R9rvimj8rjBSPMW6d3ijsKxik9afI3
	 4o1ULHnEutG9cWt7gW2qAfUO6yXeN+q+TN7T7XljKyCsOZmwX48K6NgI4NBtqYCVBA
	 dR/x8dky/PISIDVwm5yxtvMZ3LAilSy/BXBbM5YSS4NDN/+xmdYqSv+rdvIZMwARHc
	 qIzLId2zRrDLwxeZUH3IbDd62eewuACjaj4V09nwvUO7Eun/BfNyqfsi2SRIt8w8gD
	 c38xDx2LGIqGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963F8CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546979358.806.12387942318244321084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44dc8081f8162078ecc6a071b25dc4e9abe71fc71fd04d1ec72d81d92dd1561
Date: Sun, 17 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755469793
