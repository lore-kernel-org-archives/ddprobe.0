Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755B1EE7AB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736254554; cv=none; b=PLenLW/WPEgo6ZO4YJsly61c4ZaiDaFjLn6bP5P0cXHl+dS2uwi67vL1J5GckiDsk4NIAG7xYcPo5HvhnkQRt+rc3oea7YS6iraO5ppCtxwNuyYXmGTMS/kpxJPNzuQwlaAIpsJQW6L1FT1VhPpVGZJhdFK2wKo9JU/HQ3gRtpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736254554; c=relaxed/simple;
	bh=/kV6i79h5TLPuD/9Izy4/cA6UMvkVduSuHUYtmCP47w=;
	h=To:Subject:From:Message-Id:Date; b=CtmrcwFrZMApJAk4uQcGmr/P1uP+LK6ZFxRiQWP5nOtJxvSwEPSkL5+ptbYB1L9FljH0H+g/OI73ddbqCL/9YQeduU7LiHb0jicBOb5UAHf+qlOcbsdyPikU7yTcnY5U2R5lS/1MrzU5vpMLcVpiiD9952wCNoKxA398JdHDc58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bidSZ5vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bidSZ5vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19D4C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736254553;
	bh=/kV6i79h5TLPuD/9Izy4/cA6UMvkVduSuHUYtmCP47w=;
	h=To:Subject:From:Date:From;
	b=bidSZ5vh3yq+F1JNMwhA4ooLPGMPiMZC2kD9EN3GwB4mY9Dj1dGxtbXBwl51wu/bb
	 GobAFqt6GKZ78xDtcnb6mClyxntDRF5fS1ULNRr1TxysozTotKzHdGGRPdMTaTYoTI
	 D1wpzSWKQ6Rs/72gSVbMrZT7CPTxpqj3CeEuPwRR1nRanwmmVKz/L8rjhhzFLnWjPT
	 hLsDOW9K/fZ/4OAIqugBX9RwpRUwSdYGb7rzJWNd7vxSHEkKixt2S/ZJsRRToxFhOO
	 3KMK5aAD6E758a3/2VWH/csjze0o5tYkDL482dbmRfFI6+9qWFWRsNtZVnyQJ1qGCp
	 i4pB8WxTH3kFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8A2E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625455364.18161.6715099262084481064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d43d5d1c5afee87e664c40774625239990ca8b90599fe9e99df9a360e7b72d
Date: Tue, 07 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736254553
