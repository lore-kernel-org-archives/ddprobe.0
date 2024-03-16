Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15964431
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710560897; cv=none; b=jUo28vmQFyVnJJ+OlaBuGztJFJ0OjLtHYXbIkqqAY/JScnd0GLAlO6376Oa233fCX9P1FyJL4y4xGl6eqDlBrF2lbYFNyiP5WNtWNPdKbYYtyW488JHaT7mLvgrtQgBG0K7o5/BCIBRS8d18P7WIWL7g1rG851vPwddCzcS7K9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710560897; c=relaxed/simple;
	bh=gZuB1/qI4LkDOULlAoM1sXLxMZGbVnS1EkK6TwV8+9k=;
	h=To:Subject:From:Message-Id:Date; b=fGYAawjYeKPNln4bhYRzeygdqn7AvRSeEvOTA//LGxg9ynF9U++ZTJaZT9U3LD3iLkQWBjE141Z67D0O9OSZMkx3plCF6qvCcCAAnPRtSnjRh6C0K/rLlaxQgqvA3xsmBNUQ9kyJDsQfGAEj9aB0gBpX7swpFc8zA391Q6jdrVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpsTjkOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpsTjkOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77033C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710560896;
	bh=gZuB1/qI4LkDOULlAoM1sXLxMZGbVnS1EkK6TwV8+9k=;
	h=To:Subject:From:Date:From;
	b=tpsTjkOrBlTVqujUtSQd580WL3XKvgr0dCe7TTjOlNT9SLzvgL2IBmc+8mQx+c+d0
	 653OuXRoDFyt2Nk2QVeP4Ry0qVDUptmQzLpfVfBFOFspy4SVF6Z2mYDnn5mponLEpX
	 5Q2HLQmTJHwttDFROqcLwFstN/yFjf3B5T6TB+++aUUx1oJayYcCbEdONczwBCp4zf
	 pEDQ+2GcivBugK9puuOS5180atR/5rkrWe8C1DKltSIxe5v43EkZyWEoWSYK6i2Dp2
	 S8LM1MKzpK3Zzrw2Zp31P/hnO/QyXiJziaip7MQx+8aasnNm72myef2Nwo9+w2ZWD4
	 uoDRCRGnsH78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AB7C54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171056089638.3760.2590812612687032262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155d546bc766b1333479011829249097bcd95cdd719b66a5d60bb519ba920e53
Date: Sat, 16 Mar 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710560896
