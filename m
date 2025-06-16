Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209A227FB10
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750070994; cv=none; b=QwjNfy7blvpDCR5XoScDgLCBlTGHT8i+fUSwE7215Jt5wiilEPm5cS7TbGm4FYFpjnWROxops/AVu23YIMgSzsn8dufikGVX9ZMLab19iRJErZ0MsO2RL2ScdC58D6kVBQ1WwT8K+M8SkLG01DrX5DORGVqUVFcnbZzhP7PuNV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750070994; c=relaxed/simple;
	bh=WtMWatHhjk7ROXSJ29mTSahmuXmha3J7Q6Dm9FvVQlc=;
	h=To:Subject:From:Message-Id:Date; b=Gc23RkA99cLaSgtXhagIyN16/WtrRn5KD/CctPH01tfpsGH0oJHqyWyIPb+G2t5lCt3gTeJykFqhHCe7cUCFuceEQP1aW4OBs70NKAuoaCdXh7/3NQ01XheYFd8EZHT/VVep2QrliIKI2IJd/17sSO7xdeehLUTESRtm+hsJNLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOXnrBQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOXnrBQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B84C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750070993;
	bh=WtMWatHhjk7ROXSJ29mTSahmuXmha3J7Q6Dm9FvVQlc=;
	h=To:Subject:From:Date:From;
	b=HOXnrBQBFUgaPw420yDPu+/jYUZQ7t/Gj9J6lr0RVj8AwxepoIOtOMRfjM1d0IFzg
	 Cbw7/U4DWPX+4J+w4DCtnadHMFdpKnIQXYIB+eXgaj0aiXDR/4PZrkMmsaPgVrZv98
	 +Yic9lJ5tfVm0iJuLtg/L8qa7ZQHM0KUkPlKfxrb7DylmqdajJ1eWxK9KHP5tU67vl
	 +IGyqts4EpsZ5tLumZn0VLMG4Xc4h8MPTs+pV0QvgcJRMD1PM0/xLxxw/E7sWMdv/e
	 YTXDglFtiOWr4SX/0nlUkdFQUUmQ4E2c9mTuoSHsTB2OLlAMurO1tlOwpZdLXwwEax
	 1FL1cI4M0R9mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90355C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007099358.3814.8638782910660651349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f08897bcdbf2d8c51b5c89bbd636e00111898fe9f1f2bd56e25b9816c4008c
Date: Mon, 16 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750070993
