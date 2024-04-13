Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BE645977
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713029963; cv=none; b=rlBHRowa3P7kOAcEjzMxay5Euee0KaoQbsIIGx0RQxYyuyIiFFIkkF6bGXmJWiP3esRqoXC9u8HgpJZWQ2Ph8MugZR6MVfSi6VNYSetVYC+dtdczuCNeIprx3gNZoM+xdv9Oc+AQGKRD0tSutWw5ndj2itP6svsIkmm1czImBIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713029963; c=relaxed/simple;
	bh=fm1qN1w+SZxWJwBcFqBvWRRYS+xKU3OR7n9kvaW4dws=;
	h=To:Subject:From:Message-Id:Date; b=k6Z6d2A++ekGc0+94fWRvZDRpSpCMmKpPGqF1dWA6PFrAiSueN7/LmeF3kzj69HHYdaIc1UG06Ylljwn1p7skd5ABtNffdIrhJCd/M7QhW6B8ydVGODi0FjU2cu7IfPcRVSiriJQ0rw4rdVgmt4QNnBmjSgKiXqXa0OvVt3OZSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAPDQ2hJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAPDQ2hJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0450C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713029962;
	bh=fm1qN1w+SZxWJwBcFqBvWRRYS+xKU3OR7n9kvaW4dws=;
	h=To:Subject:From:Date:From;
	b=oAPDQ2hJT5rbbVPV8Qnc5KDGY8Ncp5r++R8oV3NRZnx/VWOaAPkRzOhIMyllBO/zk
	 jyJ7yVfR9WwekccWzNCyUPNXFG3bcVj7jASiFPkNDAeKb6DgzLxf46BIFFK2m/ehGS
	 m0Fk3PwfvGSHrpQggu5dQMEYJtbd2S+L8qhVjm6chvgHYEoyrULsZrX2bv6ROMTzNV
	 hvDS6FBAQruGfa3zdp064+8ZJtUkFXHHFWwW7NOj2jRDxsi5OUzMJACTLCs+PRuatw
	 IrLbCqNLy78L/JvHPHFpQhV8kUsKRvoGRV/6ApOlkzmOCX9pb90OwTXYfC+xt0gJVQ
	 5p3feADwGOfcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF469C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302996276.20055.11642234072969977552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad231c18140251db7fa850167da419e4755dbdba1e63199af04ad7b4c920443b
Date: Sat, 13 Apr 2024 17:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713029962
