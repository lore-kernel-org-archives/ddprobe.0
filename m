Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078A51F3D58
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757460594; cv=none; b=ZBdDjObb9mr8YemkwflLjdemuInaqit+cOTdg4TaPNtD9poPiblg5K0ByN+Xgj2xfsI5H6k2uq5d4IVoYx9fVkQ3MZABy/j0/6L8DhewFq/gLmTzRUrdzxpi9SV+oTajjYLxFLZvHTmxpVB6onluTVFBHvNby75Uo6gBWb+u70U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757460594; c=relaxed/simple;
	bh=5t0RryXmd5mcTrr7pUJgfRkbfosqIdFg/jrCgpKK2L8=;
	h=To:Subject:From:Message-Id:Date; b=mX1LtOIPDg8Zt7itpwHEAPPn782ZkT2T0F5CPm7ve+v8xdPOjuMy0XifxSbUKlyFOR5S1yUbW6NoJ4rMDLArxyEw3DlLP+wCHgoQ7v6KG8sCbDGCP0nhe2O8j7of+cGuSbi2DxVhJ4WGpmKKe/q5M+c1tvqzINOi5NHqo1tAR88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYhaoSgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYhaoSgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757460593;
	bh=5t0RryXmd5mcTrr7pUJgfRkbfosqIdFg/jrCgpKK2L8=;
	h=To:Subject:From:Date:From;
	b=OYhaoSgKDmqq2YCX41TCjfVju2YDQF2k5qYlpBJLArGmJMTGqfMg6eTKGDOSgRzVc
	 MvxgmHS9KgscgD+GwesVjZe0XoJbne8gtu0DIW1D+1CaeWujbZP90+beyj4RqKlb1o
	 1xGBu/Hog8W5U6/U9JtO6kf4Mg9+UhciJ6qbXUNCXmtlj+uvBRzWXAhFdqygwtzccG
	 sY2aWHH32tnl8ONBISlyik4VUjYMJKYM7lorl1bCKIEpnVHOUQP+w8WM5aYEnAsvDK
	 DI+kUH+l8sQ+D26YIuyOy7ykcF1mrgL4z9aaDa+hWbbTQYk3PsIyjiY5Sp3BykjFPa
	 jRJMCJEl8d1vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED33CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746059357.20889.7329265819784156988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93ca2eee32b25618eb890441717f5087f6efdb31a6647da7a6fb1fb298a657d
Date: Tue, 09 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757460593
