Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5128C2CCA3
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719690263; cv=none; b=lgGuqcjU6sOXD0bkztzR4WFaOKfk/dmd/BxV8d/JZN8o4lcwgZWtYuYxY7FSgqDksGw8Dd85EE8T8Z1IJdvFjzo8MgXm+UC5IEbgoydIsjMh3w0ZGeNOcsiMqhKq3jKMvMokuGuIv3q3aVZbLOlvZBl4zV0pvAXOh4d1EeowZiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719690263; c=relaxed/simple;
	bh=VemWAFvLw3WOXdQp9lcBXa7TGSgVq1f1Ve+mrpKKBm4=;
	h=To:Subject:From:Message-Id:Date; b=BimffKuEX3MDgOI9nVPz0jhuGsrKfNXo/wRHIX8xXaK9mMsEFx5anhE2XxysndVt1yAij0VBZHT/bs0SVO64Pb2VyjVn7gvJyS4YBL3CVrHML3XYzAKEaC9SDLicXxVONk/wLdjfd3OMD7pWAwqcT5LCWOUcTJamlzV1VWzJtmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQVcZpHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQVcZpHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8882C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719690262;
	bh=VemWAFvLw3WOXdQp9lcBXa7TGSgVq1f1Ve+mrpKKBm4=;
	h=To:Subject:From:Date:From;
	b=QQVcZpHXzlGSSuQkyt8rcY+wPTNNlfxOPLfZDzQp8hYdHG6me0xPC9SW1H+o1Onu1
	 N5pWumhLdscjbee+WExepHRoHSCrnwi2IjIeMEUal/0/mwUHKh6/TY246vucW6pHNl
	 ZRi7ebP5BCTV7Us2LyD60jakmHxWm/3+0M/1dCYY0Pnuh/Ig4IB+6JoOSTxZfpi8+j
	 Ydf/xpDWcuTUlWqeOcu7yoLDcgtwTkn5cSNJHeVy2tcvv6/VaVQWfiuLPohIQ0vzTS
	 x1BvghNYynMG5xTelShDMeObvdZ4GwcdI5AMBrt7xRMY3m7kqxm6kIdbueFPyROeIQ
	 VrU5ZTOCcBGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54A3C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969026277.26516.16000823630874651325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94cb9b7c087f58122f1d547525848feb5a0c22cb4929dc6ef539f3e0423a26f
Date: Sat, 29 Jun 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719690262
