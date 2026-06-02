Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421833DA7E0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780400674; cv=none; b=MBxTLkIWPNQd5Yh29BghPvGBMxiUU/0Dp+3vV7Pq85VKzTX7rExHuFOr+p35GKRTUJIMqvT9WdJMkj/8OwEQ/NzV4uWo2mv6zBlUunu/feZi6zLLM6W9BzFlJp4LKh9UMcei64sMS2Os3/8xGjZg4GGN7BcurG2QH8CDAXxU6Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780400674; c=relaxed/simple;
	bh=SjSssd0fRYsCUU1scfMeXar9Hq0e+mbGn6tj8cwaEqc=;
	h=To:Subject:From:Message-Id:Date; b=dyAJZmu//hcFNh5hONiOpWuk+ib6zY4dn3hfoD7jhG30LbeBAdGkZY70PnY6CEr2pHqmnpCMOSm0FKSdv70nRk9JrnQYkbMgXcGpW3FI/DnSTcEwE3CRjytH9e6pPvB6tzdVCu4alnl8fAPLz/n8AHFDGYK43kIkJZURz/IFKJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7rGhDLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7rGhDLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25E7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780400673;
	bh=SjSssd0fRYsCUU1scfMeXar9Hq0e+mbGn6tj8cwaEqc=;
	h=To:Subject:From:Date:From;
	b=Z7rGhDLvChU4D2AqJGG5+nU8+xZQE+ZwLPqlzrSKW4LGkYAlfMcF99+0HEYRmuGvJ
	 gjsLpCyn7fsUpvlD7N1reI5krtdJ1rlwWlWc9+i239IFxYdHkDYnW0bUljy3kcjnwp
	 L0Y2NonAIUUCXItyTV/hXniZnrzyUOdGfAxpFlE0Haf4mbysLR14X0hh84HkZQMMJU
	 SiK1M6fQvuXdaK+0Buv7Sp2i/iFry/+zyMO1wtH6Dl5ZKKZ3E72eir/fIBLwn88UPs
	 2ajkexyiFUdyLON30TWUZKvbUHjqbYOe2/9UJGaA6RqI5X/BxYbowsMUbG6OzqT8a8
	 WV0Nh0dKDcBbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F42CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040067368.28673.12275535927802052995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2caf5d0293b17380d2da0b2addaf7842f1bab932cc449ce1194093273d961918
Date: Tue, 02 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780400673
