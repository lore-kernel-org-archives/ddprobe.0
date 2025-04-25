Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8094A24
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745597994; cv=none; b=D0m8oM4988zDTJCnSdMp1nT7tmYSNaEy9rpLFrk6cIriBsiprC+4BGjqHZBNqUlYS6gJncErbEcEzyUYvb9DHa1aTebzjBFyd/Sp3tw4efZ9/fnuKjvGk0e1HH+af8xeuqLlO0eZfAqfHjur1qg1gP9TCsU4z68rjvzKBcmLViY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745597994; c=relaxed/simple;
	bh=ncQvElaYztWkhuDJVp7tcyWdvQ/XXsR20y2/AGPo7SQ=;
	h=To:Subject:From:Message-Id:Date; b=juPBE2haauaz4JBJDsddNyDsnBODV+k4UJzU0cvvnDzwCeeU0uCfyjIj1/cRLz76mlRjxK+acJ9aCz6BiEoAki3Q5jVnFohraY6pii30iZIcmFs7Vk6zrDe6E1SuBDHcAT9e41V3swiXjyu/oEmjH0HcN+FTd/Ke+JDuPHCjvIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td1HTlqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td1HTlqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF3AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745597993;
	bh=ncQvElaYztWkhuDJVp7tcyWdvQ/XXsR20y2/AGPo7SQ=;
	h=To:Subject:From:Date:From;
	b=td1HTlqd3f8ELSMMGm5hpnVhR7bG3glQm2Gl9FZcco4eVm1s95CDQEVP1p3sk79Fn
	 Qytf0Gf2H4kc1vIqBlcfCs79oZ7Cc6KiQ6R+uh1wz/vGVg4rORHQrnXP9tRDSpZMNd
	 gXSmqY6DzcgNoiYrHbTh04CKHlY3N+1OV4fk4f33qqID6iOOOFwIH5sZiV1YpOen3t
	 TdXskkM58dlTKYmJvcuT/EWZ+aDQGqW5jChwmT3wVDfqPN+ViWPmh25Ir/eS402S4o
	 9paL9Bxe3g7QF+pTSocbUb/ktITWnXXO/pLYtKhc2AfeyaoXassHRNt3b0nTmMNne1
	 G+R5Otg90hchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F313C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559799357.7589.7662756465871231497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a862b21714ccba5ef0c7a0f697ba6068facc2cf4de9899ffa538c9e6c605ae80
Date: Fri, 25 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745597993
