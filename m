Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4B12749E2
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756549194; cv=none; b=rbTpFV1OgjpmcDWZy88kw21Gw4chP0b1C2g2H/v4kjZwoxx1JdI8b2g/Ce3SJb/eTMr+UJ2NIwFJ6YGmM36GqrSldDI5MbLGEGJlP/zvF0Rs5NA7KMFyYPTh5nCr5Kts7T0XHEYQnzb9HNAAaLR+bUgxI1wYXAAQN+zzJgA1vkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756549194; c=relaxed/simple;
	bh=TMDTjPJ5AVx04/brDwQLovco/lp8ifIVzSwMo2FlhnE=;
	h=To:Subject:From:Message-Id:Date; b=Iha8/JDmjpiov5t2SYCo7NqiBcsZ0dfLB5GR248afMRyC6bkLOEAjWm0rasfeZMHPvoRS1OCGgp9xvuR6ZkrNh4sSPbiXvMIRWNTf39BerB8OCF48emGZwBTv8pGj4H6O/z7D4RhcpuggplxP6f3xigEGCcZ3YJ4eAFt6dheMLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmQV1fr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmQV1fr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756549193;
	bh=TMDTjPJ5AVx04/brDwQLovco/lp8ifIVzSwMo2FlhnE=;
	h=To:Subject:From:Date:From;
	b=JmQV1fr5hyO0juf/WQtRww0e76/ZiDqPk6H5palL/wd6267Oq3GPQ8p3SoB68hU+D
	 q1EooHo6+NhKboxcOyJhwp2htb+Z/nMX3mO9iOZKEsDx58Kv/U3ihF4GFQKorONQH7
	 uSrHnHK8RRnbwMfC6eNT10fOeQroSji3hxu5SxQyefnY9DJjQ6jXktJqz/uLeynhHl
	 uCdcK3Rduj2H6yejdTSiF2DZn+hhDk4vv7o2EuLmzB+630NJF+vdRzR9TYordYwOwi
	 lQ5FqMIQU3JSHQRkgctROaTcyJ+EPa5bS1/pc2gCkGaue+1vsWCnNHRGtHqU0D7fKP
	 wJUsgHeAMNPMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BABCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654919357.29629.17167724198554227151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e3613eac14fcb11b1bddd2c34e2477f520b3cf21f6cf981436b2833507547c
Date: Sat, 30 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756549193
