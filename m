Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640353537E8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789689034; cv=none; b=ND3WXGSKNeqdA391fhF7QsjMGUUz+ocWRcuwaFePLf7u59Q8Zn+Gwm7S6Lvv/DJuJzquCGjoFeisWH2Rfl/mMwgowFicO1ee0JfjqrWqDoi+uqI6eZcl8LkT3dIbOv5UVSPa8TRI1IflDpwJjkcl/1EccPjk3vVqjhCx+BBMVws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789689034; c=relaxed/simple;
	bh=FshkNS7Q7T/1yyAqXvrx036HuWd7DGvhT8/Vg2CeY6I=;
	h=To:Subject:From:Message-Id:Date; b=jb4RCrXNv5zxyJX8P/Vl7Rmzn/+tRcO+xPMWev60baZDM/VRtK6vOJ7S25SpFvhONPns+uBdSejDB5IfGQIfJkzbQvGxzzX7owpkgJrKXb75gYhVTTX37IrfEYA1mX8IcGb3KVpwWTnQb0STf61gB0RujJv/8PIGIXbJw3UQgfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAx/GwBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAx/GwBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD92CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789689033;
	bh=FshkNS7Q7T/1yyAqXvrx036HuWd7DGvhT8/Vg2CeY6I=;
	h=To:Subject:From:Date:From;
	b=HAx/GwBg6kh+iqZ4RvxhfZQNXtllHqDM/CD6GHIwA2HOI0lRARQfpUuM9OS4bj2FH
	 VJSn36YlQ9JHnXygXdnKvlV/0hatKjm0BKqRp8Sau7C6zm0ZdThx+xB6NYYLC6b3ZR
	 ViUjtKR9H+GGuiCoMLHXWKTbSGS3E6R8lPFR+9YRKe3p3hmjeV1GgP8XkHr2wIk6/P
	 JTDj47KgkpgogloiwmZe4M/4w+vwwBmMKivXOAv/NVhHujhZ3Z6aX6T7Jwt8xbm1ey
	 BR9HrZVmvaW92xjEcqiqv87jLDj+JI7fXEe4AFkpJuMyuxTLo/jM/5qLqZXEeQByqb
	 xrWKUM/2s+GYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB9C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968903369.8927.5630162136138331755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334748099d90616706e4082ee9219ddc699cccc1cc85fde33962ea3434f772b4
Date: Thu, 17 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789689033
