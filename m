Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1348732571B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766667234; cv=none; b=aODUlhNUwKD0HMqwtU0R5hB0gKhnF9DZH5jid8lWmxdk0PsVvXr35mB/CvRqo/P7LtitFTO1j1iMNYiOCRIEgaxGrhBlQO5RBKSv0ZHq1t+R/wX6xNKPjnXSPujOnTikPlNbUVq3KBJra8kOFiqfTeX8Y2dQlgSyj1hbKwrN1xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766667234; c=relaxed/simple;
	bh=ZeaCM+hnTeNQlItKYaLV7fV3IM59OoNe+wTDAkj76yA=;
	h=To:Subject:From:Message-Id:Date; b=qogHSyoQd/mBP3ptPvnY3viLmso9n7j342eR5RlDP5LI8YfKOXtDaLL9wE+hpQRjIxnCtPjFd/2UUAuZsvxfVuOLtjnnnkwpZGiaMFG71WmpP/KBUCTX9p1BVGEzu/V0xHgRIIzDVrMOU/LwsUqFWDXFmlh1YNg+1Q0mRrYx2w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyxiamKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyxiamKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766667233;
	bh=ZeaCM+hnTeNQlItKYaLV7fV3IM59OoNe+wTDAkj76yA=;
	h=To:Subject:From:Date:From;
	b=HyxiamKqbbZ96X81bMGmGJ8WkXt0Nntw/EAgsbscicqUczQ9TE7t8ouJfmGxXWmSd
	 YwZg+o9J/frI3plR5fz9PZrONKzWK3WnDZjoddP6ULq16P6zrETxm8tooJBIW193/l
	 0MRSdEEUH1sHiCEwoixqMg/K/v3KWQu9HN2+upbMISd+ilCYjQef0JLv+T54m4G/UT
	 LPW2hKu9XvFYgy+0yFtoyN+MiB99CNLvoGz2cKr+dWgIw1aP/bZUN9z9oMuscjMZdo
	 PlViE7C3k9q5DQmNZAW8108iKhG9e6UjS4AtGU69u2oZLLJOVlM6oYJMRX6RAxdZEa
	 3q5JIM/Rs+9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253FE7AD44
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666723357.10092.9551556911852288620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37f02d5323e6834e2a87496aa346bd820d9432df5074c9ca100040c7e825e0b
Date: Thu, 25 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766667233
