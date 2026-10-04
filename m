Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F2234D389
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791102034; cv=none; b=ME2TZAIPa+bpC7yKwx8HM9teZWqbIgw/QalqqRVL16x/+IMj7IrIthXH9TNm4DNga1tbNM4ATeHHdq1tAmo5TuIfKKsNE7BE2dEtQlPgS17IZpkF79SUtRu2gXHIvad8n5VlYiWIhXhajLwUy7T3qKeNhBBAOkgoMQTFzE1LfSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791102034; c=relaxed/simple;
	bh=rLPykjYtuV+fLRHN7Q7i2RuwQhJbrSWmyejRLhPmJLQ=;
	h=To:Subject:From:Message-Id:Date; b=Ch8tH27p35D4HeNj+Uw5kXdb0cHHaDpwFf8c2QKTDDMklIDWheq7Xa5YYSl28VNOweOjCBpdOjhlucrPenz9SLRw5aGsXK1XurVN8MTlWPouY4wXjsbaRFu08aoJ3B58fPhRMFfPige2dn6HhqdNfpmY+JAAivR4tHrMQfu2k1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Piz9VtJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Piz9VtJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2ECC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791102033;
	bh=rLPykjYtuV+fLRHN7Q7i2RuwQhJbrSWmyejRLhPmJLQ=;
	h=To:Subject:From:Date:From;
	b=Piz9VtJf4MQy6CQ7q7F+34+e3avMOR2QFHQa5URF7gRxqQM3aZ3ZW4WRml/V3azds
	 hn2TcRH81oo304AK+KMs27iPi6/a7b4Ffx3cjxvAGnvL8iSjOiyClb0jOxNtkeFiMx
	 wjmKiObQv0zUUefvTYyJI03nxhnFk+sUapDmjAg7lQscHXhzB4VLTrwePyi7cwN6Ix
	 T3/GFpYeA6mzJ+Il0e8aqdi+p06MROXPnpNzWFsyDbyHIDPvWREPqrYw1mjzmkmDep
	 7QLzIFmwricol6aI7Ln2QCEwnSrHRB5SHSF9B0wwb+SpytDzkAy6rpl7MLNcWcqzSs
	 tv+s7+rKDOvsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B3CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110203368.1481.10608612894958452423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9a15a70cd8c6ddb849f6973b9dbe234cb4fcf83128b07967f9f389589c30e8
Date: Sun, 04 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791102033
