Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC57320E
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729362954; cv=none; b=Ohwt6SUFdz37/6y4Z4Y3BHB5tGrb70jzYWDkIpTIk5vxLh/AWSVcUY5IErelHaYe7IZedWksxSMxBW2kWVnm4LdWrCzpyJ8NGetc5eA21ve137dMJjsBxBEuOKZCTSFkOLguNduPu21SHeKEVt5dqk/WScft3HALGDM7UDl7ots=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729362954; c=relaxed/simple;
	bh=sKuLybUOKJU35yFGvHtfkMV+ho8MgFMAITSab3iMorg=;
	h=To:Subject:From:Message-Id:Date; b=uJ9BdGx0hUv6RZ+/kOq1b+bCYLsSLWFhiFdp8gJY6ZYUIjUq7qZ47Sq8UJSUXzgf5eLogoAnK7310Qjga8MmtDWNNMgKlyEFGMZL+V+VYWeQ+oypqZaTEwFX4mxVWtuy2Clzzvk18QfY4/2ParuLqrhxYNgqkIZwzdsrqFD3vAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNZkJ7lF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNZkJ7lF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1986C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729362953;
	bh=sKuLybUOKJU35yFGvHtfkMV+ho8MgFMAITSab3iMorg=;
	h=To:Subject:From:Date:From;
	b=XNZkJ7lFsp4t3UaoQBGnPY+f8/dIdmphOC9O9mRs6GmfSdykfTb7++wGaI8mynnoq
	 Yk89ssaBP3ihZz3abMx87quOe6GthSDMcqoaj+Yd7FZSkHs6qY1xqzVP/HaaPZei++
	 Hv8Z4aUtk/RibX9PYMZ5QlWrPbtqEYsm/LCwx9/SCLaz56OV77U8S1TueeJI60VVGk
	 ZbDlGT7HptJAtjlFH7wlkgq0fQQFA5oLcQndV/V+dgxg5PHzrMxVbhKaGReNksfy6I
	 kZ/8v7pNeVDNAfXSYOqVglD/+qFlnp1bcRBzJOcdS9kuvvGtwLr0n8MABr03LBngcJ
	 pJ7oUGrmOOcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA59D3C926
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172936295361.11289.16936225478408316506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167dd19a967e682b1eae1d3e286f93878666db144992f89ce0217b85f230b3d7
Date: Sat, 19 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729362953
