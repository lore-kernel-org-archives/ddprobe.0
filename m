Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0245D66B34
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706611697; cv=none; b=t0QAf4Lo3aJEluzcqdMIUR6gtvk16lPpZVCx6/1OmUdc/XdA4kLQORCMzgCujY3E3P1Se1j2BQ5HwyioZzS2UrAqD0/qOiwSBRXybnrPuZh04ybft8MC/Qm6D6KYUkbA8oCcM6int6Tdl+9y9/BuDGSschOzvYhFGyS40/XYqYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706611697; c=relaxed/simple;
	bh=Yj7d/ctROfW22yLqVvDIfAbyBJDIrdsp2nwAIn6O9+0=;
	h=To:Subject:From:Message-Id:Date; b=X8wJ2EKFM/lLlZkwhCHx1kV7LHVKx1Fu5v8yB2QfjmRsxbYHW75Jq5e2CHLX58tAZvHkqEnfAwLT5N/+t4jnInkVBMLSIDSO5el6efbjZ/wXGUtP1tR7sn3oKjpxC6z90zHKoD/AwqpNchg8eTp0MOdRWQa42a+/dkhSsLEOL64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko8zmt/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko8zmt/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FA0C43394
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706611696;
	bh=Yj7d/ctROfW22yLqVvDIfAbyBJDIrdsp2nwAIn6O9+0=;
	h=To:Subject:From:Date:From;
	b=Ko8zmt/w4V2OGgP22P11ssKcIErLOiWNmYYaR03504nImq/lte9fTxqWCex91NG8o
	 6tVwo0qJKcCfPUhnQaV/Ric1672Y9hQbWX3yu6U7A1lbNpGKUN9yRCaV2yRnI3GOKi
	 RWF4W1Ff9yqcjf7x3vw91Rzo+OvnApTXEy2m4HVswsrrhlz5uLfguNd2xdRiYCXBPn
	 Sbgi4+N3Uzvcym5bvlfpufFkk3hhjgBlbt4aV6mbY1P+m+e5V4gusZMnqTfzVLIe9J
	 5MDjpfmT+l2irdMRvtJbRCm0v4zOkXVP5SLMCqfpsgueI98665Lcq4cfRcY4Us3WzP
	 9GNmWEZ6DJ7Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1D7C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170661169637.4800.15389222712350266566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2596cceb0d24caccbd2ca88567d25308bb33c6dd2ed0d9888e7ea2a1bb844a6f
Date: Tue, 30 Jan 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706611696
