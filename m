Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265F42D9497
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764589374; cv=none; b=fAfro9Lsx4RatwcMsmZnCabHLBFlkAdo0vuTzdtK9Hd96Z1/yc79WOHEu/K0o+VaxHFLWyt/v+qy/57PUeUnuUQcIVNo0Go3EvTuZol2z06KB+505c8lCHUKfINJvJIdJmvD+HyJDPB65LTaEB49Xdfa8snAV9M+aZ+6I3kKyQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764589374; c=relaxed/simple;
	bh=9cOyjhML4Jb9LowG9sCOrZ1YoE1FBTgbBNZnKNQyc28=;
	h=To:Subject:From:Message-Id:Date; b=ohcL4or8mCQw0m/+ajr03AQfLxc/SjBEZ0EEONHObL/HMr1Sxv/xqQDk3a8pnc5j9OrDv5Fug9a5u619tAI7PQtT8Z91CdckLwPb2/SZKLhQ0lU/9ViHNP+QlWtuW2oEnZOPjpL9AFvc9JECkst9jllmZfTraKiVKM4AHslkyXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIgF2Tt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIgF2Tt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764589373;
	bh=9cOyjhML4Jb9LowG9sCOrZ1YoE1FBTgbBNZnKNQyc28=;
	h=To:Subject:From:Date:From;
	b=UIgF2Tt5D6wIS8jCfBSxbvycoiySXv2TvGxExen2rd+ukJ7EOfhrh4GcRPHhrZPii
	 vP1lzeGLBtZdW7LjRParC6let9lfKze3v3pXufx2BiV1Jix8kgEdKzq2UKCXVSEkDy
	 oIWeWZY0wrDZiJKfLidZC8cGdiE1sxP4jI2pDSRx8WaBlDXrPEUWDFaBi6s+qZ6Zk7
	 Pibg1qffiga9V8PkmO0nDg7BnNKnKkCJqpTmN0LufWUVoxsRY+HEDTJXNtwOXah17U
	 L4bXrKan3SO1qyYS5qy9NIz9ULSJWOmSRrrPYOnjoRct6SvQxIPCCMPDhvokeJj8ft
	 fxkRHzGO/f7UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E6ED111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458937359.32015.15969616409883564731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda40fc3d602f685087af31091aa0c9fa84c9d2864e6a1ca0e6e811c40eb48a4
Date: Mon, 01 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764589373
