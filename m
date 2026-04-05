Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890181E520A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775372134; cv=none; b=bDhRxMlDgCqxzeEUd8Bl8HIkVT8Vdtwsz07v+yb23jU8ByR6nSaDZD7yB1ht8jUlIyfErcFWtoIy1iMVS1Ssu5AEQ4PYmGhdYDutLO308F3gQtCYLs2+RalvF70kdY8p4tGhv3CdFpb7uaNzk8QrSThNTsp8qOW6nJYzkr18C5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775372134; c=relaxed/simple;
	bh=Se9PdaUDoB2xCmN1VcHl5YePPXuOU7NR6Agz52BP/7k=;
	h=To:Subject:From:Message-Id:Date; b=h+HulYrWkQ9GpJblMDC0l7JBZ0y7CZ878EfYHKpVyYlhJ4dtS65J6YSuGJ71NcbJqjz1xfxyncr/as3jPWCLFjAE5ktmBPRDYwAMzvf2Og6Gzo7oyBnFSeNSBG1GoOH1PWspg6/4+APgUNNW4Vy6fPG1bdbIi9muGJGmh3futR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjMf7AGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjMf7AGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68B9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775372133;
	bh=Se9PdaUDoB2xCmN1VcHl5YePPXuOU7NR6Agz52BP/7k=;
	h=To:Subject:From:Date:From;
	b=pjMf7AGtYA+e+2tUgNSonMi26Y3eNaYB4CVw+iFxCxSr0XvPTptRuiGn5dC8J8MRF
	 LXFaCdl5V4HuqZeI7TLJZgzDsf7Ru17aSaDEb/3+9KRFYSa3YStcF/mVQ/bfxW/imS
	 i7gxVuD2RduYeKMk7tu2fy2d2YYDxlKeVc0jxdHWKZf1QtdDIv7R/oxl19xMwDWRxw
	 RWOIBPfav+VgtNn4TcQb1GRjEU8jR0Mv6a+o3FOnGDrkhAYTZElwQRY/15T4EG/CXO
	 1H9QBP2DVtIQbqI+QsxaGHa4Bj88acshmVLzN71BGpsVXGPXyKF1/gU72PwvKK00Fc
	 PfcswivtXKy1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A3FE64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537213372.19468.6972523318571495415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4859c3e789d5820b69d6f25fd4b5aa334e108652d0056c2b35924440f995c41e
Date: Sun, 05 Apr 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775372133
