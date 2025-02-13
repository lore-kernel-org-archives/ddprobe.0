Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8E26B085
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739461134; cv=none; b=Z7f8cKp/Jn2zreNLRFYkM2pYYq0YL5lKSUtDtBiXlSp5Cnun4Xmn1BuoVe9JCwE8QVjpTFcYGnTg0j2hoqELwI/PjcyeWwdUWWhwv82Fwou1T3g2EHs40YYA0VeKnYKIZhpPWGtlK8GGqbJ6ASet6TrzfJlmE5+Z56F3dTNCMMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739461134; c=relaxed/simple;
	bh=IihJQ0TGbhEjpuvQBtsnm38NmDgrEhWsdJ6FjMtoFcM=;
	h=To:Subject:From:Message-Id:Date; b=GWxfudOXpztWtac7rcQQQk+swYDxj9elptPX9nAoNOtHoeJDW43nyqikk0ppXXQpApV8WMdvMJRSIcWoi8oAnQpqtdjdsmx0ouuVAKu8jETHXoAUKLVKlZbuzyGnC0nkj41ik+uwZrf2Y/NmTZQ2GbLHAKVrXm/RzHLQsdWEqcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsYwOkuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsYwOkuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37D3C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739461133;
	bh=IihJQ0TGbhEjpuvQBtsnm38NmDgrEhWsdJ6FjMtoFcM=;
	h=To:Subject:From:Date:From;
	b=FsYwOkuDT8id07NCAtEOkNxL48hSCId5t3fqJFOy5wLND6IcABE2+z9aZRHgkin1A
	 txrhd2VXqJOYxWOg7+wYy9PHgWdqSbL4Xt9LRYTgMI6z2kGGi+Vo9fRilrsVxeF9Jk
	 V9wfcgbBV4Lrh4eoMN247NqZOa4bQSpXr7TZENGyuJPa1ROIf4B4p0HYoCBZDHTimj
	 K4/apOIYAgPOoOTSxdAsNEIL10S/8xwjeEBqP7XgThRa2sOGX7Hs+k2qooHPSlc8qk
	 oq7+m7kkEJAnxKrCYGNLL4b5BrKtjLkVe7u3SVRKUd1xIksaNsx4Ix32+owalLEreM
	 kCP2NVJVG4OPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D789C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173946113362.2797.16488535619597010082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ce7359ee66f53f8fd01c8bbb7c92c1974d68712adf5d8ad45dc055343e4ffe
Date: Thu, 13 Feb 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739461133
