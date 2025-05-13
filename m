Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A49D213236
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747178994; cv=none; b=kCLYli0XAx03XwzTLTrUD65HrE/uTwZ4NyoB6fQYqc+f0qahMlHwz59hk44XKjHPCVSg4JqolhDICDH1E80m2/p0KRDLx4JDpkpItirO7/QoiNbtoYgCtCcCRjZAOJf4Tgrc3TurHwsuPoJ+vVspoIB3YQiMhNftUm+fk3Q5UOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747178994; c=relaxed/simple;
	bh=41icxtTC2HS6LW59EzX+U897fI434fkkQYrnEEbd0AI=;
	h=To:Subject:From:Message-Id:Date; b=fnNSx6n6+foljGwxtjOw5j0ktxoKIR+kHbMn0mPZRXGngQzDWKGQpnKZSulVX87cMDYJ23Teak0sCh/jjlkWQZxjMyznu7MUsOeHn6D61Krj47HWKtrWMv903bQPcBdEWhyHLHXJLbhndyg/mHuiyHZG4D1cEcB8kDSmimxmLyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIcPmYzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIcPmYzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4100C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747178993;
	bh=41icxtTC2HS6LW59EzX+U897fI434fkkQYrnEEbd0AI=;
	h=To:Subject:From:Date:From;
	b=gIcPmYzAhHgaOYEDLCcqL931q46TajHHoYmilqEZtpC1c83L2VrqRfbcuVKRLN0nv
	 dneCjFA7j3vKGpj0jsfwpIr2BJV8yBoTqgy4q4tpbyeZlnK5f1RuG7dYdvXfHw+OVy
	 7HesMQ+aBbC8slh0WxYy7su2C17GZ0xm+UgDMTO7sCUthnkonvWP5j7i5YQMfHiMbF
	 LYRRemszymzugFsCHXVTiV2B40KGKatfZ36XAPcy3mdU44ho88tlppsSYj9fLyiMei
	 SL13d9xGa0Ajaq27YEwOVl1ih4nx2nJhvi9PtrimKZOqY6DCiXKiRP3MOj4HFkKcu+
	 yyQ24/Rv1fF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B25C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717899357.5336.5616549070429713721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355603fb9931e2bf2b1ef61532724009470e7a1cf13cc11394ecabf31f8ae255
Date: Tue, 13 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747178993
