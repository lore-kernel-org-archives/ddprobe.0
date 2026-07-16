Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A96B37E5E5
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784180314; cv=none; b=X3nQNovcY5tmRId+jSDxWoQ9+X+I3XHfeHH3KSsNTGS8sAvg3oI/mhZszlK8yYdosl1tYxpSQZzUgb9en5ORZFbuGEd29VESxZycPm4FuP2UkEnnLZMJVWiiFbrPlTbO2zpOjF+OHeOfViEMIZ2hLjxw68D+7vFU3x6RoYJgI98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784180314; c=relaxed/simple;
	bh=34/HZJ/WkPdFz0kFiZA7LZ/zo9nqvsJEkMZWTSbcv4E=;
	h=To:Subject:From:Message-Id:Date; b=FjH/jBxOX+53xJV8pxdrthueNkPuinHdV9K0s3isT53YdbIdeYyRiJZTqsxytdR9pAocOtbinpyupJQMl3kHsdilZPusMFVix2XijzHGTnCIEGT0yhNoLfSKZKg43BN11L6f1p6neaE3m3dOFTHkjjC/0WBAjW9O7IvTLqm/qgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZpXLrDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZpXLrDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D86C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784180313;
	bh=34/HZJ/WkPdFz0kFiZA7LZ/zo9nqvsJEkMZWTSbcv4E=;
	h=To:Subject:From:Date:From;
	b=WZpXLrDHx3IrANp3vwXwMNsjcmB4zUo8hDBi1iB8IBsGbugZmz5PHggPytA6I/VnF
	 wkmZ7Ig+2+nnwFTIqS5FaGcN6NDPhO0SDIiudG7YGHnT50cIVEm5YSYjdYkWzIBQ54
	 UxxcSTb5ILM4eBbgkQ1XcY5PnjovWkcjmmHp03e0xPSqySR8O0FD2AYtChGiLQBMOe
	 wKS0+RnrdCxuxGBrEeptbvfVpzfCHudt1PNb6XFu0gfTFZdIj5bgxwKajLBMO67gVG
	 sxd4dRC0cnNjqo1BfZDlKznvcAh0Hfh3cf6HQt2Q3JoYO5zTbwwN3F6djH6YWQOh82
	 uGrXKVsCOKMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B55C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418031372.5455.9023976643150633598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61584572f6fda42f7f21b0067a87b8442f373985c68d82ae9001c881c6d4514c
Date: Thu, 16 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784180313
