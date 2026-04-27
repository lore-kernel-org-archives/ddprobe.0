Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0E43C3C1E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777295854; cv=none; b=d6V8xEk7NLXw9achpIbDpot5dTKUIZlvm8MlCu5Cw2wewmjKXsI1iFRTsVT1flyBWygIDzh8OQ3oVqV0qFqnkbs2AsJum5owmG8supDuWeEVxnh7SHZ4Oh1B/IR1djEVzUvJO0uSDX8B5Xn56wUp2JX1VRrswiLb5z+vMT0UwgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777295854; c=relaxed/simple;
	bh=sWM5RiCyJ4pnreYoufRgJsD+O8iu7Jw5PHhXkSqtrJY=;
	h=To:Subject:From:Message-Id:Date; b=QkO4zE/CUWEhJ3I07TnFok/8y+H1bUbQQJH348oElfqmuuKjvHulWWCQgDegGhmKUYg/TxqzDAGyXdTm0MKUjXitJiOrFJAXGdzr5ZIG2q54iz6v8QljAGV+5bJTKilA/Kh+tHV3QgKZZlDnNOXwvs4ZFEOq5omMNq6RFkmnDw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFmxNXc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFmxNXc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD128C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777295853;
	bh=sWM5RiCyJ4pnreYoufRgJsD+O8iu7Jw5PHhXkSqtrJY=;
	h=To:Subject:From:Date:From;
	b=QFmxNXc5+hZ7D72TKf7nWZFt79nD3rex/CtIe3l8nYoV1I3YNHSAVPqBTs6e4hsea
	 78/PX0bvHRlna/H7PqpKV0jDQ7uhmtvOsnhG3EyQkP/jF0QrnBvS5rGsLz1Np6TM+l
	 hcVFDi3zHguchKZ3hzBhu3faFeio9vwrITR/GouwzZzcT7MH8Q67YfnE1znER+EnJa
	 Db09SewNGLPIKb2MZ3viHQLKRNKsHbIJH7ld1CQcAqqIx9lJM9CcxxPnF9asWYjXBh
	 7fSaVCLMu5bPZXy4fDMUJbSTCJqqnIj/2TnsOjCMWh12KTePLx4TxjxVkb0WtqCdR6
	 ttqnlPV+j4+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA3CFF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729585370.15048.13412984286916722494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5364614526a1e2a780f71b308583f51f72a76465e2da7a5e94b89043c17da613
Date: Mon, 27 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777295853
