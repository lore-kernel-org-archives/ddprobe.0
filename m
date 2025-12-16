Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C71C33A013
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765886034; cv=none; b=tDjce4g5wsyLxh9IdFY+YG+Gkslxg7V/sbywzcYJeI4doJSWDZ4T/7xrYioiUT9dIrAVHxpQNtx1PSs8qySU7j0JqmcHFzgedjdEdmFrJRTvYyHKlT5SHGZtICsu76WBcWuxpqNoD4sgBB1SO0GKX9GHlxSpXUok7F/CkHNQHgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765886034; c=relaxed/simple;
	bh=hnuLmheCb0sreBpD8ILz9Cy6AYc67aahGwZzHaOG5zU=;
	h=To:Subject:From:Message-Id:Date; b=h/Npkb2PMuC2ZBGkDrpFeEQ4q0mZC+saQxb8Lg0cAEYC0KJdW6NWAWs0F4owr5jMiI3w3mUfjV7Ukz1ZBFx4IPVgb4VetYlFjts+rGS6yY+6huXXT92G+z1Jq4jgi68zhLTmRB0FkDlzZ1vBaIHI+KujQV8KqvZQZueFPM+qkuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzBDlkTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzBDlkTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765886033;
	bh=hnuLmheCb0sreBpD8ILz9Cy6AYc67aahGwZzHaOG5zU=;
	h=To:Subject:From:Date:From;
	b=VzBDlkTTY5g4O5OqXoHnXMTPNrfTGcC+Ma74auUFBrfur499r5m0m40GlsYaee1eH
	 qttdv2vbqcRT7d9F/0HU+oEXu0oDrzHTKtDzmfm9228FUqVm+tZ2/CWhGoQGTMLEVp
	 UwLPyk30h7gtTH5zzkR3MqNk9nUTDMjUQbrCiUfn/zNSKYpdL5aJrDWwrxgA9TOASS
	 ZcPM5JqXCUYOGHni0XsX4uL/LZXLCUZbkVLkpvxv9iBbFhGbvS+SWyly2bqsJwQ3W1
	 2qpoJ/C0DcukSLmufiEVqdOIA8HtFIOtJAEHcx8GDpLTLuhY34y5aiOBKJCmcLNuOc
	 2qpHDfjmO491A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92199D5E136
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588603359.17437.6440662265852302748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bb72136f49325ff47caa86e96dd1391803760b74d5646fe9ad43d1a5c26e02
Date: Tue, 16 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765886033
