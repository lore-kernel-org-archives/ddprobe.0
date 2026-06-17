Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE622E737C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781708194; cv=none; b=rJ6zaCmAD/Z2punLZeXWe+lE21MdRxosksoVmXEV8QMcxs42TeRxNqNZwo0ajzpNGmkY3SQ61aH3nAnHvRkCYVTXCYAWUjqP33bjU293s2QKQajinGpF26+SjU/IBCeo7/i+GNSepiN/Xl4SypahHWel4a3ygGKejAERxrsQkd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781708194; c=relaxed/simple;
	bh=PRdMd++++KR9z71IiF168WCVulCrWikWl0MEb+vuKC0=;
	h=To:Subject:From:Message-Id:Date; b=hC9/QSZJcWzGkRTb83ibCFM6BRD/THQXKpPgc9RGJJZJeEqB6b7Qc2vBxEKmPqKSK1M/icUVVvkNcWVi2PYUn3ns6C8jlYaERbcNGR3yVE1flMYipM/8I29zW3YlJECjWajwWiLosp6+xhKobvKZ2bkTfGciH8RF5j+eaBs9Rbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pliHxIBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pliHxIBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFACBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781708193;
	bh=PRdMd++++KR9z71IiF168WCVulCrWikWl0MEb+vuKC0=;
	h=To:Subject:From:Date:From;
	b=pliHxIBkyG6D8xv9GXSDttmOn0Sfln/6llxisnydE9VC9e7fySMp9dKEV8NnhfmDy
	 zU/rEXC28ERImdctqp/5z3h/0IOjnSJVYSEFZVo/3k4Ec66XO0VyWl3NsuiuuIZ5OK
	 qjTEZqyveJVfLbJa0pGffSGZolndNUd1uL4nXL8juhrcJ2a9UbdfqwrfayecM74xgH
	 CuMRBHM2atc/oONQQH1zlwZgGOdivOkRkDoRiqDGeRrV5Mqr3VajX/HNCqpk5yQouQ
	 /SB/+A5AKBhJ2qkQ3HGZQGEmnYhZhnqRukZGIr1WtwIAARl1LITRHh6T9/s/sUMIr6
	 /f+mLorx1Sl8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94ECCD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 14:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170819374.31771.4007702788868799886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104fb748ff31a6e3e497efddd6b7d70287f5494ac96664525464049c12059cff
Date: Wed, 17 Jun 2026 14:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781708193
