Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3001635973
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745876994; cv=none; b=onUkVfHOY3IBye3QLWS++iicFwdwgV7+Hehid/MQvuHqEHZJlSlWm/sqVjbvTlgNs4y9ozpKkuQ5dsjWc4s4elf6seE9y32fKzQlNTfyCSq7e4D+OPCb+GVmTuomJP9S0DH2vaFoby3Se1yJSuHLg5KUB3Ox+a6I1daNUuyZmsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745876994; c=relaxed/simple;
	bh=UiU+B7e4rIVCkBk6jKSOD9NUl91vrtUMX1iOutWjcmg=;
	h=To:Subject:From:Message-Id:Date; b=tH2Rao8nA8+i/tp5F5Z6VbvYrEwDvvCo7Fi5vqeDUcXaviU12z+pGVGd6+PigdClEuTaMpSVjVbS87pPg3TQmi7IWxboZrY9lfobHFzkIABQKuo+ClQxa9jIir//oOrqdnFyUBwVcCSxx4MXTB/FIxzK8PuU42IWzAgLMNL1Cqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4MZQTZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4MZQTZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF0CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745876993;
	bh=UiU+B7e4rIVCkBk6jKSOD9NUl91vrtUMX1iOutWjcmg=;
	h=To:Subject:From:Date:From;
	b=B4MZQTZf3hb28qxp5+nzXviPwZ0QlT+ugII6CkWHY9GC1U7vAv3VDyTA1L3tIP27c
	 RWyzL26TiY4IMJxi7fDbClV6hnm9RKfjr68mHVYHOimFesLA+EZ/3kSVe6LZ2lId6J
	 gi9eVx0/7+wC4ZIX4Pgb4RfBD3WpZePvP0OTrtKmzci7QfSiT8OnAbT+ixRbfCzNgJ
	 9kMv9QWRZem+Lg8xXmGlooydCb2x1xCMskVkFTbquTNIFTiK2dzN2NL43ZZqFe1F2G
	 W/qNcsYZwm5FRbLBWCadXOABt73HJmgfBvlmLxYg+k0edagPI/UsQe3RH9ZoApebtr
	 7vF7pXBId0hxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F771C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587699357.9803.7924812551647685545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d6ac2343dfd251433a24d0a773c4740427b01cd7795aae1e5f5f2c5514d960
Date: Mon, 28 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745876993
