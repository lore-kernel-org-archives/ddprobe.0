Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91DD947DD52
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780646074; cv=none; b=VsGXd0h8hfSTXk+CeJvZ3epSxU8huoz4g75nOeLLLmg4kSiMv5ocJJbpWdTO1tWSJlumNBNI6VNgf3FSenkGFhXk/xb5GHN681rhhgYFPMZE92gjQ+hUd+Y/7oAZf20AMaq+tb+kWm0xkqR9z+ImSHlgRjGyBNn4kqMnrPVzX+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780646074; c=relaxed/simple;
	bh=78naTAcamBX2TjUWvX1rATmQtFVitffyhWroZ3Qyics=;
	h=To:Subject:From:Message-Id:Date; b=rEOeDfEH0ZAaR12Y3WgMvqOKpGXLSM1ODBZ1vwrQm6Flt0lHFV+cdanJMU5L0jZTf7TU2ncirwOvLrHS6Mj9g2WoeTjiugtzKSqgSObgrAaypm/FTmM/MTNeCk8RLcuOkOE919y/9l+oBq6zAtOJ/KD3oy5ZAf4C8ouKL6e7jIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pE9kzXyo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pE9kzXyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B7EC2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780646073;
	bh=78naTAcamBX2TjUWvX1rATmQtFVitffyhWroZ3Qyics=;
	h=To:Subject:From:Date:From;
	b=pE9kzXyoyl0MydbVoEa1gAWUzEwxiAtmbGn6wzUyIsA03BkyTEKR1eYQRQLDdWVX8
	 Xs8ofqqGwMExcF+4NzMQxDbXyABkTNhWYyzMAxGoMQ4WrR/ULCbux2APphsA3BbSC3
	 wpPH/IMjPfQrQDZXtc3REXqdcXkN2ThNPuK3gwjWptwe8wvJ6vkWOOJ6B81WboLnHP
	 dqFPt25+SeSQj3jticxP1xoJjfetZ/qO+WVSttbPDOPDSCfUm2JD72G/iAzFhWjbuw
	 BRTkNm8kP5e0+ENZ7y0EXwTDKov2vuxGPsAQY+f8/cHHiUJDxNy6b7m/WWoEKSV0qw
	 yvAWfraXvYbZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B501BCD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064607373.6923.12061716633245300981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8528c7e71835d7286a8b44190b3638b21afeb1ed5b98955ba86d20968a51cf45
Date: Fri, 05 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780646073
