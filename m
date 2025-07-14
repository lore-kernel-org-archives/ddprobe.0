Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DB823DEB6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752485994; cv=none; b=GIdHKZP5r3IiQ8xD0eJHI7+mgmHMPU0tIZJPBIiNEMpeYFx8vNN6V0PA7FgdjR+YXMicEySgLqG+9eUmi0f+QxpL53Otjye+X2artyfJxHhD9+ncTjnHpFl04MpZ21XI7ADBzwIpwH+GaoOp3gVY8akXpM0mErHfhcuFQrGgedg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752485994; c=relaxed/simple;
	bh=z7DExXNmbJlLGPPJUuAhKK9P/w2LawlSJ4/Imc7Q4c4=;
	h=To:Subject:From:Message-Id:Date; b=B83vOazvSiPLNQS0V+Jc5VUpeLW/c2j5oA7A7WzFDC9UT2VzDqu/YWcLI89KwmZ3JKkDxZBVTR/DoYVGfAmY4Kd4v8Jiw1EJbTJhlASVRAF/hGjPkkvpG6Fs0uYG7kR8V5WYqcPFEG5gsdSD7ZUcBTAiGEMG4oQHQ2AiDrfK7CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgoC5qzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgoC5qzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD782C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752485993;
	bh=z7DExXNmbJlLGPPJUuAhKK9P/w2LawlSJ4/Imc7Q4c4=;
	h=To:Subject:From:Date:From;
	b=DgoC5qzbr1mNTHW6UURgRFE3a6u3l7iACAin6xCteUQACRvVZkRHxOYk/TanBbfpB
	 BfuWh1F5kuCatDb794XIjRjqnIe71xYXE8orZx3oZxFpWhwvfc7am4kb1mw+5ZwpH5
	 UgOfCnJZzoD7jR7kJ8k9BQn4A9iV+x8258C9jwwjpLkSS48xuA6ltT0OYOKj6Bv2LS
	 SHWEP7vQblXG7fa70WULJkx08XXRhRiw88e5lsJwna4eVA4Qb+efyYqMXjBWqEW093
	 FIASWfg0k1nn8pOfO5Oaf0TlUeKjZbAONFEAQZVAGnU/97SC3An5+Uj/jDa0jarVtW
	 NVoVbsIPZNnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6C3C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248599362.29661.7109358228729873263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b063c23898d41ad89d0f5afc27208a5f7eb1a6011ee85e419d79b3d55fbecb86
Date: Mon, 14 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752485993
