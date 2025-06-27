Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11901E571
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751038794; cv=none; b=slEXA5KKAoA4JbXWAsj7nF7oTyTQ/V/KoRZQ0tbQ2NAhrhy8Pbybcm5J3fkVo5ZjuQdyWkKs2aQ9QVCMtSURjiUyRB+2N9Dw0X7txVBTj9uor+0+jWZ/NqZOKiEJr9XriBn7qHZSnxrCU33s3ebaIqRc9nghjqcPug/kCmzAYdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751038794; c=relaxed/simple;
	bh=u15m8cIScAveHV2WCDxSa5j0b2JsQbiFb+eQT4Uhzkc=;
	h=To:Subject:From:Message-Id:Date; b=SIAqZF5fD+Qirnu0Ozi+ICodEDW8BdS/8jmPvk1YaZ/w8uj/2MTaE1FVGQWdEWcupz3lwR3atqa0Wi12eImO1gk92zdkrTQTK0IPqNjObp05pXjjRFgkkjk63dI5z+5oa3KjRIF5f7wdRufEZXRc47SSHfO4B6H0zE0f5AX7jAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUeoSs99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUeoSs99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1D7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751038793;
	bh=u15m8cIScAveHV2WCDxSa5j0b2JsQbiFb+eQT4Uhzkc=;
	h=To:Subject:From:Date:From;
	b=LUeoSs99MZM3pYCp68plFE/wqWtrQT4T57kBzZxOzReZFWE1GWKEs0WNLoPOcUdb3
	 iubuFKc5/AqWs9jmBlZNr4Cc3n4Eqx8z5ZDReMaMzE9K7fdqNZ2lp0oaqTiKQ9N2bS
	 VtRw3UOJv56ecIlr8zzHJYAfVvc1TKyuz4rW/ew9PdTh5WKgP6q91Sh98JVz8wTZl6
	 wO4V01KYzdfMDhM8tz7x+4oR6cRITudYHBDpgz7E6B6sYi5j/V0+vdARAIN9nU1New
	 ygM0t5zm2WNq832H2PklbwUb4EwShEQQOj9wPceTERQE54bKLHh1/jqet8uZpOLc60
	 ApfZzrLslgunA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91488C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103879358.15904.13395110443125500297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a222f66d13dbfe32dec7d29d5df6a007b9b1f000c74ccb73224b9d338c55392c
Date: Fri, 27 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751038793
