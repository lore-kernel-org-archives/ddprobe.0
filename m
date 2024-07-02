Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D9A79CC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719899723; cv=none; b=ZUDK04OMLc+dWqTyeREcxbb8FavML387j6E/MuHrY4UdNsMamTs+U8UyaTjKA5EWqFmX5bnQg1fmNF74wrL9v+szK6B1ZfYx74/VO7U/em9kFXns7UZyJ5V2Kzjt9aoZwdEXvRqNsVpXEFmguZ3j6Oy+ipc3ibDop0arAchAx/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719899723; c=relaxed/simple;
	bh=Gl7OKbTy6OlHtpqHZLvocnd87oqBTCamNc0APuhSm54=;
	h=To:Subject:From:Message-Id:Date; b=If3zmm5S3nOXWK2fWp+YM0I7LnrbSQAbBMWH6CpRey6sOYoSCmK4T8k9G3NzLvt6qbDhlmr3+yhzYPQu3VK4ezqBU593sMjwARK4YSUAnn55mOQBx3FysXTUP4TBq/HhNk8FLNBdmHKb+6g4JmWK9+AMtbo3suqJRdm7qCH5TN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4wq+98v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4wq+98v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D127AC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719899722;
	bh=Gl7OKbTy6OlHtpqHZLvocnd87oqBTCamNc0APuhSm54=;
	h=To:Subject:From:Date:From;
	b=i4wq+98v0oWH8Dp0lLTgn/0BnV1IGp9qeZm469Eobl85y2XuHoyGq/6wLaFDtcTNj
	 C1azDI7NW6/d1hPLYQeuHwQUyBXTO8vW4wjezROaFQ/u68RDtAM15/u9AEHXJhPeQm
	 bMY/hWzGW28ilMfH6pHG6X1IYDhZS3rYnRbfzUJGu1pYkvPOJgqUutRQPWOA9k1Gjc
	 KbARIO0lxW1lM3qy8hpObkL8kqgG30ysaVxraZ2vBNY3HPpB9EhNdzFUaPOXL6pa07
	 jzR7Nkn7YQUMDMEXn9efiO4Q1NVJnbyRLjkCDhxO8osD4JYmNfSPeskJU3/9hog14s
	 8FeJATvn/6Q8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3DBC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989972276.27497.12843638158874859702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504c5c9598b0851bb61fb09d9a42a31ee3fa38c5a64a9cf43860c4cc3f14c93b
Date: Tue, 02 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719899722
