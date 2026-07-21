Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A19D340406
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784632714; cv=none; b=TgamVH/9FNEkxU4tyZSJuzrITUoOzPH2i7C56nhU04MLjFGenKEygV0Ft9+hjA0SwvE+HUBrtY9dI3incBVAqWjXUIKG6VEcUpDpkqDoXus3Fs70HihfL+Z1YjDQhrHRAMTaSTaKYhZ/u3Vhh8S3iL9OQ3oEo1ZdZ92ghgUDxTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784632714; c=relaxed/simple;
	bh=/wneLX14B3GTd0F3tWpoxIHr/FtAawra/PZ95lyaae8=;
	h=To:Subject:From:Message-Id:Date; b=DtZJg6eMkVni0ZKJpN9/thsbyNipsM/bEI6IyId1IdKwPscDc3/gkn2Mj83SQbwN3t/hWB3xyWi8vfBdc/LT4Xh83hRYWgXFWb08K+0u1bujZEhKtI+/qPT7EMf5JurS6Rwi2Q5wvnOXXx0fvmhWV+4enR8sDYXImLEk6VZHhHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cwer/519; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cwer/519"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0AAC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784632713;
	bh=/wneLX14B3GTd0F3tWpoxIHr/FtAawra/PZ95lyaae8=;
	h=To:Subject:From:Date:From;
	b=Cwer/519jixTX/UAgdikfwJgD0tJI7txfIGbWzfMwQloRiE/4VS4hDBxUXHMDU/pi
	 fiyGylP4BNpBBrqRPelh4PPkUQxIDb7m5HDRgRwjlQGO+3zb8c7TBrkizZhkXowzu6
	 MyGUoiJRI47hnTeeTaYbbrauAAiTmp+5U9WFNrg81Ddj41l0bqn/7LbrJcFuc7EJe1
	 fo3G7ytvgFfRx9koNg2so3dFVlyFAw52udbPGLt4z7e/UXv40nh42uD6g5LVTyhRLQ
	 jTliU+y0VIFb9Zccoo8hpSAY/Z3inSp4BEva+5VO1Ax9PbJVwLh6JMTaJa56cqTVNA
	 p7GFZ9mcUeSbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA130C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463271368.3408.17475705108406024708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276dacefc9a1ae382c94260482d898b81a1f7728838afec464b0c3b83e086e10
Date: Tue, 21 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784632713
