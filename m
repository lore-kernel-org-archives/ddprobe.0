Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDB32E093F
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765739573; cv=none; b=pnMoV4fHQ2yG1B2KJrFI7Otm2ZP894A1aiO3buG8nSPvM/x74I1HKisokKHB0Q+X+7CSmr5R+qYI9amF6s0O8nmAf2ELKO/8HHof7RqEmqaSzuk6E9gEBfLkB5zIdnLxQqalYFDXKj/o3BLglAq7Xg0i3lhMVl8vzLC6rDfWMEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765739573; c=relaxed/simple;
	bh=7apTdQ2R11T27xlEeK2OPfN0v0WGUeQw7F4mqU89imo=;
	h=To:Subject:From:Message-Id:Date; b=fvLY7iiTLQOzZyZKDaiERDPB78mne2+KaggU6S/kxYzXRt72agx4/AW9nZ/bHH6q8hcvMzE/w9VKoruzRY6WKisopospedsENvF0WaRMJPhO7OvlXfzlUKyUtbRNYTA1ad5jNFrweNOl9BJvqxr7T6CWJGFQfUt0T9tbU/JZjCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/Ho7wDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/Ho7wDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CFAC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765739573;
	bh=7apTdQ2R11T27xlEeK2OPfN0v0WGUeQw7F4mqU89imo=;
	h=To:Subject:From:Date:From;
	b=u/Ho7wDgsm+dZfT+YnTbmJuTLWgg4afjUAQPfxANhdkjNv24KCh0Z8egalkc2skR8
	 viONSw41inhe2T6ds5DsHGpHakMbT5JuXnDwklGmUCz5iwf40odgicO2ZfBKdoJAdf
	 HNvk/PVTgZgqApT5dY2AK3CWQz5k5/ZgK0uBsbsVPe9a5TOlVipJjYu44T7R8yBv/s
	 jvWNHzv0wFUeTeq56atYxF5l9i7YIBygQxWLpu3RsYy18VeBmDdJrI+znCN2HA+LvN
	 8fA9klWdSVqINF7CMkA0E3qpZKAOxinUTvnQr7TbwBt+CGUfam0A5uNjtwjcn9C5XP
	 Tgu6PNQ21Sa/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E59D5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573957358.31469.4689510294482957074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070e2c83a9cfdbaee4e55054c5d584e20f02f3703f12c00d09568ee7d430451f
Date: Sun, 14 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765739573
