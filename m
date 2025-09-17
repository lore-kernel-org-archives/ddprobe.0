Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9FA2C0276
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758131994; cv=none; b=ILrXVbtAYjmTmU3/raxFRFqSMU/+GWVl07xzXK0F4yIAS+x2eRvUwJAAQTAW/MLwLpefvQZVK/lWJI5d9v8DCOEegwRtb5xHz1V3bYF0P72T5TotbnlGW1WvTFPQ7nlzdS2Q5I5eDWXnaN7KszPP+b+N3etb9bBmzlB/tKRoMZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758131994; c=relaxed/simple;
	bh=CFiP4mI5PwzBjMyEJyt54pg0ONQfUZYXNlkCEn9KEDY=;
	h=To:Subject:From:Message-Id:Date; b=j+qLgHMT+sAd3HiJ33BCqtMYamRCkxFJBHNjXgh9adp8ryOYk72wPW6lIlT2XRqvceCAnIkaTW8oChkRTLPnvLEIGzFcYAGfuRAkvpba0r0RJNDBM8KihBWf1qzyDqxRxEQs6KxOjS89QaanhD4oXn/9c5h4hYjQsKTChs875Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpjNgRFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpjNgRFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A795EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758131993;
	bh=CFiP4mI5PwzBjMyEJyt54pg0ONQfUZYXNlkCEn9KEDY=;
	h=To:Subject:From:Date:From;
	b=CpjNgRFW8W2CKRTSgtE8kvrVj1s/FeDM8ADykBQ+Sa6bzI5854KUhZua8mmW57KDH
	 3Ov75KmuzbC/8JCVeO1QlUwpbIAbs30ceNMEmOP0PqPb2vSql6lLOMjarSIBCIXlNr
	 l0VhxsQnbWlVpito09DRbFeRsYWXABY6nRxSAgGp0rV+YsdRRPR+TjJeK9NDiXtO3w
	 4OXJDntpwpvOb2z86ke5HlJaqHtwDoq0aT1PafH/vWpDjH0nPkkoIhBU8pT3lbqS1I
	 vvQsJyJrtr8YBuyhR3X/RQIElD9EDO4guQMEp2mz8/ZJLSGASMn7uOrskFmoqKyKZl
	 baxWeIm3WFn1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943F1CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813199357.10751.2330345134035775976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03eb46303d04352a92ca2fd0930eb30c535140180834dd891e5d5f4de054e68c
Date: Wed, 17 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758131993
