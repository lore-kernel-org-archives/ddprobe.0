Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F86031ED80
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780841074; cv=none; b=BjMiQJDDhVruitUGS+W8Lt4KDEw1g4A2mczNevPEBydPMeFwvaB4IdCQHZBP8I0gK1obK76ygA63SHg/i54088WiQw/3KjA5VPBdRvpk5bnaICRqA/k3F71hh9DQW+AIiVHiPdE6uKlgPp9NZa8qCDT04Y0qiRwBhpPyyV7+pK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780841074; c=relaxed/simple;
	bh=CtcetiiX6uA6a8eT9Yf+ri97cauSeQSbfII1bT2j07I=;
	h=To:Subject:From:Message-Id:Date; b=Xy5GC4QbcTBRYCIXae50Kc0tYxlAVw1kxO9ukxEBTR+bFuZTytpFMTlKTXVVwaEjQWiOf4pJcqSux4b44ba+Aqv9Ucc+WPG4/XgdbZeAvjB4Ylo/k+epwpkgrYYlhMRjdUexkoKEbWF3l8GX4ifk7rkOJ5cdJTSZTtmAyMRxWUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ9qSkrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ9qSkrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14FBC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780841073;
	bh=CtcetiiX6uA6a8eT9Yf+ri97cauSeQSbfII1bT2j07I=;
	h=To:Subject:From:Date:From;
	b=SQ9qSkrqVTk9cOeOY4JbeFQE8zdjtdG54+kqfyrYmviLmDou5EU+PeIhXzPITPRGK
	 79g32ouuoTCUqLJVHOtg4hdn3Cs3p5C1bPvoTtXSY7EgDGR1XoXL4xPX3lpbuc/sft
	 R3eJEDfTLp58paIwAQ/AnJk6wnCkFZKbTd3u7EWCBr3a4J6sGNr9FEruq73mSDthDu
	 b6lrSIteDWxYMnmo+uaPy8nE0QNVl7AzeF/M8NUbNvyM/ahKP8dRXn1pOAuC3jYfrv
	 fA2M0aCoPVcA4O83+ips4xDelZLpPRoRQnFswG9K6DDFafhBLZhAx44TDoZC3eYQj4
	 cHN+UF4+Zyofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995BCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084107368.31630.13466649720413584837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62329b18b6006e00884cb9dda5cf3d0b895221d342e488d44c83dfcb8cf819d4
Date: Sun, 07 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780841073
