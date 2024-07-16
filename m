Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FE6481D5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721174123; cv=none; b=OKy9mstw2PBzMIT+4Hv5t/x6+JbuSn8T/urx4VHueLspXgx0+xbHWduKjw0yQCAjCgW6ekmlEZAarOyprVIZg+/BXOC0HTLJFITVcPjiXeDnQkpQ9xIKmbsoNnOxafukyy8MU0TORihyiwYfUGUtLLXMwnwgNaqJApkRYUIoH7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721174123; c=relaxed/simple;
	bh=kUol4nF4mlIP6fNwDXHa5dswH8R3bjqlHeWIc/zYgLk=;
	h=To:Subject:From:Message-Id:Date; b=Xg+axOheOxCLByGd7BBkGADAq86Jp/StF2SdTSsj1q7mSiCMhaORrftGD4DMh+F2bkgXb6WWpt/KyswUrf5RL1i3qUZCFiemn4STdOpKJ5aNFoO2Ty5utPbHPs7UFw51qCF1LLOgxN9qjczcifWFv46wF3Wz3Y8khOaPGNfoyIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVPNr9ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVPNr9ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF2DC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721174122;
	bh=kUol4nF4mlIP6fNwDXHa5dswH8R3bjqlHeWIc/zYgLk=;
	h=To:Subject:From:Date:From;
	b=ZVPNr9gaLX6nkjeafOANptG6LC9lN3schi40xeC0vSe+SvQpGmRVWmyyGJYy87WeK
	 YBjHMTp/PCX7J04FsfZzYq4R15bZRt9OctweWJNIXUnIkHrIVNHFHKuTuVpyopGgKD
	 xIw87EU7Lg7+lQgVz+DdbzRPCj/qQQvXsAzzSeG2J5JbFxuBOfurUnjVoIQXq1W8nb
	 b/yhKYx8qKzFaBVKMhPv5qOKm/NNqx0WZvvWAanN8cMiYmNo2I0M9+ViuOQn6J96fc
	 NmT+BvYVTstsxBhxv7MWXgLkXbm0/U4AAbxr/NUiNp70MP8GjwJNYsYGEZ6uTuGqVY
	 MpAAS4ebIDqpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F0BC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117412278.21497.4382687964274407934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50d2f5809ab17ca5b2ba1e3343b3dc3a31da7c181dd0ed9c4c0242be16fd5d4
Date: Tue, 16 Jul 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721174122
