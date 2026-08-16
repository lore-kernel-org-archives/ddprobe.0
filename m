Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4A739B97F
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786924234; cv=none; b=uO/OL/fhdYT5Xk+qXk3d6eHleEwmimMon3vFdgqvjcRupAVW7I1WJ/Csl2q6rS1+UX6C7Ludtby+DAXFbxiLlImwmg6D68GwWMVwV+EuEyhPNXtOMj0VwBoKg6vCEnCzE7GuFzcaPAkcD4HwTMrCFyAw1MjDJq2Vi4+lP0kC3a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786924234; c=relaxed/simple;
	bh=AwgsNCdH8vpLTvyJ4+C/slnDTmwIsGumvC/Y5gA6NaM=;
	h=To:Subject:From:Message-Id:Date; b=NOWSJlrRtCzv1/RHZoccFVz7z+ahvP3Tvn2HmzT7h1WW3nJcERiv1LeCktUni1axXlPFxWg4HIACTQfGwmvOfe4HuuOvTxetwByeIMNZqw0UWQc4a0gyw/hh8QIGhNwMnaNJsn7c+CWl+r1TLoS29B9E2IYFhBEET116HXQS2SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHpOl0Ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHpOl0Ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFECFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786924233;
	bh=AwgsNCdH8vpLTvyJ4+C/slnDTmwIsGumvC/Y5gA6NaM=;
	h=To:Subject:From:Date:From;
	b=QHpOl0Dslfq7th9P+xgIT8478QLbeDmdmO2EQ31wTJO2/MtoB5ADkB1pa1OhnhEHI
	 Xz+yZclHYQ8nBjazdBAML6d0t1S0tjZNV0fcO4Zl2XKGb5ypkInbFfmAT7erLvJFl5
	 yfKPN2BspQrj5RzsY9RF0F2l15TTNmc/YJdKTgB7kSEmIuA9Je2Z38MYiGAHgeS5+J
	 2tSZf/fW4qjbxlSBqDabe2ovqS/YGkYiTZFAI4V6F9As4tTsUqgAK+bm0vFG8Hf4BW
	 HG4tWl2tdzHRVO7X+RJ8lj6AetN+hUTderaqQXdOh2NIHrSNUjiojcHQO1Z6G8zYAs
	 Dny1AcBCEaJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE036C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692423370.8976.3927273523171479802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee61401dd0e59a7715c67b78cd93265ecc4b131d805101e128a5f57b1c01a3d
Date: Sun, 16 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786924233
