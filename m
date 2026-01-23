Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA272BE034
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769130234; cv=none; b=sQ+FuDOwqKfKW9fJsh4pbjB3Z7PycYimv3cdRkYaCEVIL1ymY1pUgzztpLOQcfrXAzREvyRaIdvspN9CCu5soM+oIJpVgMEXJo2YiCm2QBoP8H8W7GrDGQ1Y6selNtzhHw+AS8TBH/3pf3CjzEhVrO6fchE6U1ObebhTpUQTVac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769130234; c=relaxed/simple;
	bh=cDutSP6J1DOX8H7yyEUUVlYV9z/Et8xFp8FiudVU2eY=;
	h=To:Subject:From:Message-Id:Date; b=B0QZ5RsxztnQeqVVuOVXQ1bsoDUWtGHCMeoYFGOVkzMPwaCTb9AiM0mFoPFUGWfSYeXt2+V7GW092JB1Ey+I9fA3yVWgH4z26v0jWKM5ltURsnH0gZssxifCPo1fVR6DJmOVN9GXeW2ktikbn1t1G30ohnOgb1kLy2/GSAKIpOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBvtdlVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBvtdlVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB94C19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769130233;
	bh=cDutSP6J1DOX8H7yyEUUVlYV9z/Et8xFp8FiudVU2eY=;
	h=To:Subject:From:Date:From;
	b=lBvtdlVrT2fTijSH/b4TUQVZzUCmRB4CvnvZf3Deh2s1fGibcF4azF1rp2x3qVE9z
	 e1AOph9mtbcYU1FKqApwZ6LU7zgd+oMC0X3+otQcllZLibdIj25NU3bl4lg/7gINUA
	 i4GhC+2KhjDeNan8jIEvUaQJzTbqwHL03o6nkdtO2PA2Ei9JfzkK2c6z5a0WJVtlQX
	 I0EnhDMgRnai47bP1614aOZfkqJDx+vCDbE6xo4CL0DC3yAcJ9hKVTzeTAuarwJlbW
	 UBy5qCmraGRPpHCcTPCIkf6227S02eU0qqro+uJWCC5I6rxBsco63aUBBMPa7d4aqJ
	 OSXedPgfnFdXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3C9D6CFAA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913023359.7097.13456784980711369449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88256231dc27f92272f71b4cacf98f1a66aa276e52fdb8f0f8e90c05ada422b6
Date: Fri, 23 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769130233
