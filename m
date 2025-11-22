Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0361A257431
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763782314; cv=none; b=M08rRBqUCwaYuTOgX6SMUTDpHFAZHiQpDYsJkzYfjO2+6eUvB2q0z3yzn/4d1mkRCCP0o+zYrzYG4CFoIZs7HopjkwIr+uAa4qrBEE2I5MxfFcW03WckebvpJmlVUAcnN8Jsemk4dJQ+iAB2Qi9VAlI+7bD48E15I5q7IvDGncY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763782314; c=relaxed/simple;
	bh=13rALqmulxqRQ1uMUZxl7OD1gipOqeUq0czTdA8OdYo=;
	h=To:Subject:From:Message-Id:Date; b=XPH7o3uY9u6FTWsGTyJktCDlHLInMItCm77VjDhGQUF7MFrw/4qLhYuDC1yoeNlRfcGt95w0kMYZhyT5HLuKS0ci/9SNfdIxij2x5pUb2Yj6u1iGGB4tVTz4aba5sXTq+24AkeXu2LPt8RIgRUF7OPGC+5oX75TD/iP4WoFQTB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fT30vyMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fT30vyMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E83C116C6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763782313;
	bh=13rALqmulxqRQ1uMUZxl7OD1gipOqeUq0czTdA8OdYo=;
	h=To:Subject:From:Date:From;
	b=fT30vyMXWiBXZGJ6p4RI/hcDcHoergsazwwV+0118yc8ADSKh+HohRvNTbbbcL32g
	 NO7CTx4g8ZjC/IkwFhN8Dzlxy2Wy8jaUyk7Yql2bEwC67OuehDzUAVZ7pp9/ExoUbq
	 7DA96655ncIIHdNc/HN4Ga+v//ZausdlRWSV5ym7WRjhwh3/FhYDY1ImLugAIpNO3V
	 H8/1L6mKqGo/ku+wysThVXA14bwFd8r5VHlgcJ9T7KG7+QQBP3SJuuezX4AeXPXMbi
	 hGZngFH+qbI0nhsyY5AVFnvi81UVvJjCncDda6q91Hs2c7PlBUU8MjxLqVxR6duG49
	 +5I7Q0LLle/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F6CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378231358.514.13149581827605056391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0957afb3df333a4cd70b9b7878b5b0117085ac11b663f6772c2b76cae109499e
Date: Sat, 22 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763782313
