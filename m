Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2501E1C862D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776781654; cv=none; b=RnCLT+71fX1f5+zDJujlagxbuKMxMt3tFTjlVMkaEGE2iowRWWrUisrIQMHkPDS66kI3qicAesBHc6yOFEakT3sZH5VYG3QXKyrx7k2zQaDOlK223ZstiHVOGM4dqDQe4q9IlSO+rG2odCfHzudP6/U+FhNe7v3rGicgXIYe9nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776781654; c=relaxed/simple;
	bh=CmphBWK4Q3SeTCqydIda7bXofE5an3VDasnJmCXKNYE=;
	h=To:Subject:From:Message-Id:Date; b=mbGYiha2G+Z752KYXXYCglMrt06Rf11VDu5K9EzCXEzYhLVsLrwAT3mzYFEXJQRXkTukyatgjYN6xjdg0OFUCwPvL2UeeLtXvGhrdo2W/I6qqwmimqLoWqB0UvcI8qm/DVAxSfz5sn3BYLZgaEEoS1l/aApwUCSoX6aHVzWASUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBs/gw3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBs/gw3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9894C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776781653;
	bh=CmphBWK4Q3SeTCqydIda7bXofE5an3VDasnJmCXKNYE=;
	h=To:Subject:From:Date:From;
	b=dBs/gw3RCKtFwlCXPXhZj3D7PSIlbPZaXOc8JEXqyQ7eoYnVEp0k8TxjK3BtaWEdp
	 pe2HyZG4TLxmeT5UgdROUm5vBdqvrRTqRcJ85gWcF8ceyHesmjfWJVMOkcgglR/284
	 gi55Q9D++VIQfC2DJLTIMcBSjFJPE3j6GkSrXARKGGdcayaFYXPPw4/QYEk6YhJa2J
	 D2n0SkTQIjUxChggu/gctW50VCflnBatY3jMdXsQ39JFStrpA5D5MkAqZCXCjsgxgs
	 0OTXO0wrKfVbIu3ObG6pib/W+o3TUeve1jea15WXxbphI7wEnWUCMD2t29pLqhUHND
	 T9Fkd+e1mRjJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA683F8FA80
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678165368.8389.17267866853894261790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6661fdcba3ca3879b9436afc41aa2a639fe3151b42a0da552135364ab467f7c6
Date: Tue, 21 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776781653
