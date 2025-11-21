Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBEA1E3DCD
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763685714; cv=none; b=tZs2vYpJcuV3PFXLMxl8bE/TS2Ogzwv3JxMeieMEvPXu7AB6Nx7oN/YqCDaCKcF0OqrFs3+cjxOjuYPkEKFLY2wsjQmeCbIRvgt/xOp+YCLifP+XwtsSQiXgnB24qyZklMDLjZGN9hENw5Fj0bn2uEoHLGGSpGnR2mYfJm39tDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763685714; c=relaxed/simple;
	bh=NuwHHXJzdzcbNiXoZLCgW2kbwCiLdy/IU2Eq6ryUAxY=;
	h=To:Subject:From:Message-Id:Date; b=BaPe4op+YaIV3tDiBnmN+GUPSP0+yA91qUWwIng0HfBeqp0mwpmEcOa/pMQGjZQw+TNACC9HwBvTYAejjdZP6AuWZBmJvwgkg8Jo8riye+bvC5LUS94GVn3LQcOE62EusWkDOxK/IcX6dMaQiy4QN6qNM+45RvyBYoLPhvOJCZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKE4mmnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKE4mmnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BC4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763685713;
	bh=NuwHHXJzdzcbNiXoZLCgW2kbwCiLdy/IU2Eq6ryUAxY=;
	h=To:Subject:From:Date:From;
	b=SKE4mmnffVYLtSbZpFImJ+qcFcUJ47+Unn0yDcOyYHcUw4wr5FlTtYpEMx0g83ng5
	 cuARdSzGlV2KRGGxu9Fl1lQkXZj014ekJ9LnGe6TrernxjtI9/W2gi7Y+lUMHoZtQy
	 TORaUOue0V8PBborMJNDRWGAADq2vB/qWDZ5GBH5RoVr+qVpbgUwgte33Qhn6W0xX9
	 3NdrZkxOouqg9aRX3zP9YiFipLMbqN1P4FAcyudLK00tQRHDT88yWLb/WeoBgIc1Mc
	 WJvRjOt5LvTO+mcFfRxzu3Vtj1Yc3igfGH+4NvnTF9vaSxEcty9skKpEvi5s+y7YCj
	 OIN9WfaJJdbHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD4CFA464
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368571360.20449.16205773695294768574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b71b2be1622b9795beca3300dde49a40bc2975ab3b7969db7a9b0d4b76fd9a
Date: Fri, 21 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763685713
