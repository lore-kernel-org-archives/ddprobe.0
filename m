Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3517F15B998
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776378454; cv=none; b=DphE8PiTbHDayQJgd0gCxc/TllpNTfruY71aqoPylP1qBnyTbenUQL+5PL+fpkkzRPljsie7mOuHFAF4wqxL+NLbq3F8ftlJTIrDHzCuHBH6H7XmPv67kokCYDLrgflGl9PG+vYY5gnpL2xYH1OuBsXTyAdzMUDxJ4fP1trxPwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776378454; c=relaxed/simple;
	bh=Hb1Zrl7pb4PMTjksAre0Me2qxQAXReoZZZAwmHeAIGY=;
	h=To:Subject:From:Message-Id:Date; b=ctWtiHAAsDTH6D9dC30EmKc6/uRX7u1P1GnLvFnv7jzxI6tcZdhskkXCkNdIm00TJc+y1oRbvL4BuN0Ser0krKF5zX6zMkBiTQ5VoOxhRl4Hu9x7yJAFQ1ZbiVHsuKySfqMO7olekTriIylEit7q/55xSIJXqTlw9MVDOxMh4ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezK4RUrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezK4RUrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8E1C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776378453;
	bh=Hb1Zrl7pb4PMTjksAre0Me2qxQAXReoZZZAwmHeAIGY=;
	h=To:Subject:From:Date:From;
	b=ezK4RUrbaAYY7PBGaB7MNVFj7W5/Tt9EVcKPfv9NZvu+NYypbjmLTgLkSIRD4KcWo
	 s3fKxwBoiW1uAuYF8jRhJtfjPl2D2x5aSZrDSK6TW124q1RQ7bh56CBT7DBNEuaY73
	 TTSN4r/+6X+yHomytuyNXriukeCB41JG6k6lZOt+jM/7jyuTkRgyprpTcZGl/Wbd2h
	 SMOKd25fl1B49ZZGDbLBXMqjoKVa3lUcQyZRaDviM1JKmh4HcAvJOYhOJVTkPmnZWi
	 zQMJlD0EbfH5WB6cHxDgx1v01Qha+SYOdU2+BJHyaxa6KbSt69jW4yXAbjjFvjsIvN
	 1+a9OgDxgUYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962EF8DFD4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637845368.4641.17838555891131542138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 602d603b64bf8f4201382f449fd91d1c23243cd2f69696be3f9a42e5f26dc2b6
Date: Thu, 16 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776378453
