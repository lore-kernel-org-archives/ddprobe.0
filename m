Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6D7312838
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786194; cv=none; b=HE/99OF16umXvDuV6AdU5EHFstP6NJR1VjBaHTQjO1kyPgHckIbEtSkTi4EOE7TP4vnClz7aZ31lzu64SriJIhDSCpORqQ7j7TR3e+slo9U0nhjvZNuo+zmxZ9J5WNvK3W5aAmRxreOegHwq9BsZyAyKGUubwhDgvqaPnL4G1Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786194; c=relaxed/simple;
	bh=iafeAcUmej36QKRV6umuF5capCWSmoS6pjE7Myg0RBY=;
	h=To:Subject:From:Message-Id:Date; b=F28HXFvUghx5gxIusMmMnZy3cI4YYR0onqOj+wfhyCaecC/4SphngdNyfI7JqG2jXowXnLiR+H+eoM1ZcBKIXvWJhbJe73qVWh4sTzG4e6q84i9kvbsZ8vI7EYyxfnC41rs0APDq7QALiU0j5/VKoa2xIu1qT5kAnzo8V+cHKCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RqLCYRC3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RqLCYRC3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5F2C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762786193;
	bh=iafeAcUmej36QKRV6umuF5capCWSmoS6pjE7Myg0RBY=;
	h=To:Subject:From:Date:From;
	b=RqLCYRC33xvWdR43WRvitFg6rQuBuNICz7/L0cfug0Sl06hSuAb+1uJdHwziDTJif
	 RS5nSJt5c34+wL1MxMCRnUJd8kQ6DlZjwQH27RBedMo+j+gNM7wdzQDGnTQjpmT5pR
	 DO/zuXrq2+FXLaQFLWuWS7A+6jzqmsgSYv48lp1MBKI6iyXAf8LDgqQZ38DjjTxmCC
	 AR94c6NEAXv9k84xnGm8B01EIdo+A30uNxL5C8FlJtbAqZ5uvgZ+ZL2LkrfVjQZ6lR
	 pWihptdxCduQvgnsiDiNGWa6BF2Iet4qXA/ORu7qw1+7+cRC6hT2i+OtLZrOMeVQKz
	 ztU6YIdcTnwyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB3CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278619357.5629.2627261142368874905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6087587c2152dea7d1dd412b810bdd3ba3a20be430752d937a1a11b959337b81
Date: Mon, 10 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762786193
