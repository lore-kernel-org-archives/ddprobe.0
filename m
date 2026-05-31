Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2194D3002AB
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780241674; cv=none; b=GwvAjyVH+svy7ZlYf9R1yWSSrSnkp1geL0znxbG39kPdct3vtksnf9nzSGRqulRsZUERJ6zusDBHkRSuMoBMO+s7aOMr1yZz8Yebx6O/zGhxGxIHx3YVoi71TKwBjYg+rfMdsbP/gL80hx8vsy2Xe8P1DjFESqjrCICuz61ZUwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780241674; c=relaxed/simple;
	bh=WC/iFZ7uVSCsCKOski5GFT219MWYyfDtQs4IezkOuHs=;
	h=To:Subject:From:Message-Id:Date; b=F6apggsIU2HzhH3S527/aTQan8TkDlpPvbrYNqPxpfQGQHFXtJmD9yuJWayslF0usVE2Yslm30aLpJ+h0GV/Xh5jfEmA9OKSpUF+hL+ybb39BB5fQqwxAqCq5afrY2ye5mWtuUKbfAy4qDGlGNUD1RGldxfFj/Wa9unVxvE+MyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ec/graCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ec/graCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DFCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780241673;
	bh=WC/iFZ7uVSCsCKOski5GFT219MWYyfDtQs4IezkOuHs=;
	h=To:Subject:From:Date:From;
	b=ec/graCn66DmOL3/yCyR1N9+G8owkV0SqKWeGMO+X618dokPpXni6jeoBl88lrjG5
	 X04M35lqQyxt8g6o+oUarLUVD/UZcSOzLZmrBUuvJrZcoM0KPWbnr0viuNRJyrzoNp
	 1WzuF0N6/8aaDiTuyFJ4HUOgvK3rcyC+wdVwrKOtFleABqLsAHaBEp0frYnpYXzY9f
	 QJc9kkcet/OQBCvToClJy78h4i9BLFUC9Ap4b1cQQk7lYZqBFb/RxwfG5e3p0EyD44
	 Jz75+W+TTOUixjwaWBUZys9DFln2ich/7QL6N/D4Qq2WOGo4eNnJSDi5yoI9IMpRF0
	 gB87ZHza9aq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB0CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024167368.11102.2114686937045313133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32b395f7197dcfe9559a379a35d5c0245513c159b0bf0323a6b7963c3356d69
Date: Sun, 31 May 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780241673
