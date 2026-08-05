Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9056323BD05
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785897634; cv=none; b=WO9jnnBf2BT5Yq4DQYl/eJ0MD04F4+OSFH9LLuhu3MqRsclb/n2mvKQyL8Kvr4VjkmNRVBXShYmtcp9WkdcENNrY6WR+e5i+ji1dOFXxbBtmDVfGrhk4pLeE35/KgRje8adsWvPEsvSE1P3FAY+LzC6DPbatPocdjW0GROguIds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785897634; c=relaxed/simple;
	bh=cisGTr8M5khzstVe8YGxbWsArNj8qy11jV8/fKi2ed4=;
	h=To:Subject:From:Message-Id:Date; b=G97ygzC7i4ycx5Q3xKSfHalSwfggYmX3hjYGzYbXA1Dgs9FD80eYWEvo3rHXHUrs3ZE/qKpUoytIYl2NlIMK7gXV5kyYvlFoeWFCUKAqWEdGzjRMsga1at8+ZwWaRyWHZ/zTBRuLTL8bLtpLjkgHsqORP5/ijB7tu5RKIPBgWCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fw7lWvt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fw7lWvt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFA5C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785897633;
	bh=cisGTr8M5khzstVe8YGxbWsArNj8qy11jV8/fKi2ed4=;
	h=To:Subject:From:Date:From;
	b=fw7lWvt/oglKaErfMAwx14mzQmE33IpDPDTpN0gUhTuZ7EFqiXcnzN5s12Vm54cK3
	 A44znewhSHx80bZY92RyZyY7MDPPFY8hNKH04P5BuNVbDX0+HavjH9TlbpPkwhxVmR
	 FFnP08HnAHqflEU01V9n+4rStO/mygDOIQ+OOHYE5QDeS8TzWGeqz+t+kHlHuIWlk0
	 RQTZrgoLrXoo4KHwMOIAnMqmUnJV440YK7xUzsO6sJ7kXNZ9bV635tjLbGivQ/uBzu
	 Zn/uIlSviWeRSBT0qcJY0d+CVP5xz/ZA81G0LbJWvDAT/TuGF4r5MIoB/Cq5g0VB+E
	 OrfnwzsZrrUOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA337C55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589763368.13015.11407006763700768931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8fad460e148f34ab7e49cd9d91895ca33bae637f97e3567981bd350407edaab
Date: Wed, 05 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785897633
