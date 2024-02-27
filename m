Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4FC1386A0
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709030297; cv=none; b=ZeMXIotRcj784TZHt5fWSp85Z4wnXTkpeVvx2gAR5QtcYaMJO6Uzoput+y3OF+ePuXLC9tU2/s6j2od4OXB2YLr7GpwzbHWZxZN0Oln+ya7ao8YS27FFkQ+ARvNB8dkRseM/VhPtql18y3o4xA6zLlP2tqYyFWM4v3xd7cBDj9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709030297; c=relaxed/simple;
	bh=oXxS47SdIQvvcjDVPRSpBhfW8tfJoGc0AIZo/YGlIh8=;
	h=To:Subject:From:Message-Id:Date; b=pv0JxNzZGVHQJt1AHdRHnrgmOEmIsI+aa+Elo2YVJNEojCfQ+YGh+M5mi8NakfIkmeHHcJlZnx+Qjuz4L0tedn0LiZDV3+G+s+zKPpsezkAu2aWQ3Uuv52jW9X+Nh2K3vLtim/peeDDhldKDPmozfp2WC2A8S0/Hzv5C9zxIsqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lsb+p/Ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lsb+p/Ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C49C433C7
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709030296;
	bh=oXxS47SdIQvvcjDVPRSpBhfW8tfJoGc0AIZo/YGlIh8=;
	h=To:Subject:From:Date:From;
	b=Lsb+p/Sscxysiw0sJA2XM4kDjsboA5jRYdh4f1xGzX9xGjoOLcx52d+SkTyL1hfgc
	 CE4ZF30GlKTXhR9RHOnBUUPIKPhO2WEFDp/o1U96lXZ+bH8MTzXFJF1V+tHJKymKfT
	 tc619K+AhQ107SyqHECuYg/c0EdY8qzHrMtB3GTaqQ57VtojtAMTbGYCV0dpJpNTw+
	 ar0PvxUYfi2+e7Q2ddwh4l7XxW0zMofjoqaAOAHPj38ookv2NenZZ3sK2ol8Xd3lYX
	 zeClwFo6y76iGhtBRS604iPyDQDJ+M9X5GMxxgORxHy6GixoLnjf8vCzlE6fVQ23cy
	 7lEvxXEKZCARA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D96CC5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170903029637.10626.687478622785308133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d316056a7ead9c2f8411e9ddecdda1e73629a9065ad20b6b7856de8d74d83859
Date: Tue, 27 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709030296
