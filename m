Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D2E37DAA9
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786223434; cv=none; b=XxXJjT6kJaazKP9guzFXjmmAN4b/0ZZ9ahE+7E3lAaoru6riJFy6Ei8fz4mpokc5YDKu7UWMb95oituafhJpIdU0MK3OdbIgIJJXhQtUnyiiQylH4yDV+qd+PATbMY6cIimjFduMjD8z78kAIMvf805AzqvDVih/F4soGgQ38ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786223434; c=relaxed/simple;
	bh=44dWuNjIKEf017HBGJNgclsExkOqoa/u8hyBD17K2uI=;
	h=To:Subject:From:Message-Id:Date; b=Q97dvHzdx6T8RLaUTnp4nebf6NXFHAWT4RFC7RMyWm4kwvpLsyAO8d36dZ+NxXXNuz9RispW98PtOD/JdEL6P5aX1HKS0NNWK9yueB0rgx7T+xdbLEqrCuEtxeX+V2rXRDtEOJX+QKCikD90kood/x1LCKPnN+K/nZAA43LfXwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG6RkIPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG6RkIPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F63C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786223433;
	bh=44dWuNjIKEf017HBGJNgclsExkOqoa/u8hyBD17K2uI=;
	h=To:Subject:From:Date:From;
	b=eG6RkIPoFKBsG0ImBi4leySoP2/p9u5r73QZt7Wet9zxgqNO8f26GGh+eDsYlKaup
	 p+63U6SCAEHlwLmHkeCW2wVvGIPmDTMRdSOEcCUu+71DPNGYpM6a+kaCzV0jXwVSw4
	 G8CuRwvFGI1yjcSXUD1bZi7wGN6wbzE2vgXGS17/9Nn47yJ8dmwPBTCoNYMXIPVfBM
	 /ZWp+tD0I0rDWDVLaxJ7VlScqKrKiZ/4SA4Hajnvp1cUR1KOrEjlDjC96Zc4erDYzL
	 HmmuqY4FtJb0KZwapdDQhpePfo6W3HUSKVJ76ln1Tkhk+pm9Pb3OAQs6JdN9Ko2mj8
	 zzNlzNFXVc/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33BEC5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622343372.12567.10623669048984423023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e74d34a687d46a6caa22125294f92ba892406b52749c0bbd67b004dfc4a56f6
Date: Sat, 08 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786223433
