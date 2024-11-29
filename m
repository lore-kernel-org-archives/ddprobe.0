Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0871A257A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732911953; cv=none; b=Xa9NKXH1ahcn5bUmiHLqDvONnGyjAmqMbiHdG7m6hE8lC8EyOwLpzhtcOz6UOhqgMnfOMN6/+iYbXpWC0NBZ3FkeYhaVxn66uaeWLqQiM3ZeREZ4AIGluINUA/vnvV4iuxgJhxYI0Ag4e8p9gNoBVKEL21THntnJFRsh94GI2yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732911953; c=relaxed/simple;
	bh=AXt9acqKUvxo8pK3VnRHb0s5XvGk/jApP2uU6a382Pg=;
	h=To:Subject:From:Message-Id:Date; b=XVn0MiAiygy4LjF++ObP2/62HaWCrNVVhrS3UCp6z5V4ypEwwl6EIZ89ZT4N/QsL5CXLq5VeBiHwTLbChMC+WAD31Q2mNWEz1BkImx6Yk/vdBVripQSdiQQeg8x0XbeKgRA7jjGK11+bE8wNs8L/r3hNhlkcldxk2m0WewwmRok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPfbXb2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPfbXb2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD3C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732911953;
	bh=AXt9acqKUvxo8pK3VnRHb0s5XvGk/jApP2uU6a382Pg=;
	h=To:Subject:From:Date:From;
	b=CPfbXb2MnIAL1lbmHJCMT0bqcM+IBi0WyVyUlkfxGEUvIrWCSSXX49UdNv1vnAQUU
	 aMK9ZdjNi63vtC3QTrgpC1YL/Qoj8AF/4OURibzHzu43Hc8BxB9oX1vGOjOz9RMpTo
	 SLOuf8bkyGysUvU+9WLrCtn3hv2ykjn/i6QK0frJW+/qAJYclaXw9/YMJ/17QdrQmE
	 JvPoZ4epKsczHjDEpt/T+SQ+JYVXyxFh/jLR6rkMbIUuYHHrVLlaSkhAo+j2iGlah0
	 /RM/WndU5b4xCz60igM/VChKTgN6677SBUuAsI3wZloytbE/jwR5mUulQXcUi8VFdq
	 xQlEq7F2DJtSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F10D72A14
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291195359.22823.394170917279118849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bef79c2da7016165edbd81ada887b73fd5eb2c0e5c8a26e8a35bb0241f67216
Date: Fri, 29 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732911953
