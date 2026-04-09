Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E97B20E023
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775755654; cv=none; b=OfrUZBHt2rGTRWDns75EavlGLrJ0VY/5eumZbADQ3XPLiGpQi3vUvZKUtSIfcN8B94P3BGjw+FFfl15SaybEY8jfTlsirD4pm+stir2TMoJKv8zLTNEToARije+cwq0Y9FsWYG/v+vXSENAFNcGehBpo4dbNh7qrTXGonVXiAnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775755654; c=relaxed/simple;
	bh=REjSUvNkOsGup+sCVJit8mG1yq/y96i+DJe/2CfmNgY=;
	h=To:Subject:From:Message-Id:Date; b=f0yD9lvbQ8E+SEcYy1YqRRGPoqiCQYzl8mJa7zOMFNDcEBuG6UrgN2yzIVVOC8prHe4/lMPaUYLcT2iNmjAAf92t3HFCEEYyiWqEp53V4EP6kHZeIo/BXoLpS6h00vJNRIBYB4yq66RiDWn5KkS1rVgKTKOSkPzoUCNhg599VY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ld0szvoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ld0szvoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD085C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775755653;
	bh=REjSUvNkOsGup+sCVJit8mG1yq/y96i+DJe/2CfmNgY=;
	h=To:Subject:From:Date:From;
	b=ld0szvoohBHx6SgU5GJZypo9nS/XJQWTfX8c/7kRjNDc4h9z79NJrhU0xAUrACdvC
	 RAVHEgAmUBhwHvF5/pUxW8IpOd1P+Q8A3wLwdS84OFEV8notm/QeDi6+rfdxGkszoS
	 ght0YLqMY1SHwuFbDbqK5ubmcGm+jf9iGWb3+p87ulkR5M0m5pEHWkhev47PFl1xl0
	 ik4i1GqA7mwKhml8W+3rzFKwQKqcVr6Xyl14VgJQ+AD+Cu2/o6JBkkvglJ1ciefVsE
	 RHyDWkGWhuEsx5On9QJcAbzTmpUYSNJsTZGC7xxNK18Z1mgpPAhWAHUHSO0m5oZRsU
	 QARutlcI/O/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC44CF364A3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575565369.21043.18372421465721863188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fde961ce69a4a6e6663dab0c7a4826fc5aacf9102668952c23d446fc8a37d99
Date: Thu, 09 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775755653
