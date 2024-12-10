Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D9A23DE87
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733844954; cv=none; b=J3GHOCkyV2z9KWZUzjn7SsbHBX2JFbjDzDKWlW3+3COB0LOju+cvr38s2UPLlmxA0OCrdjgJGJR9rzwEovTgUzqHqweRCdvMQjR3szZadZrrhY62eR7GmIC449KJ8EPdtCradxoV8TNI/gi1BgHxHP8S54Hhez6IItaQGUrAHog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733844954; c=relaxed/simple;
	bh=tcwdxJF6dsNgbQBY6ZliCNsVlo3nmD4dH+vu6PMIGEo=;
	h=To:Subject:From:Message-Id:Date; b=cNCX0RuGUasho3VWjyEJUqQ/5u5Lew1FzJDz76aAP+GSYFTGREeEk3KP2++Hg5yaY67Jx3PjgDzRN/GPXM3aFLoMX/hZ+eXzmPUQlOfKocMYHqV7oPAX+u1s/DBy0a8HdW3w0zAw31DZbF0zER4imJwvld8do8irP8Rvuq44CdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/2mRKtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/2mRKtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1DC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733844953;
	bh=tcwdxJF6dsNgbQBY6ZliCNsVlo3nmD4dH+vu6PMIGEo=;
	h=To:Subject:From:Date:From;
	b=H/2mRKtbB0iwiOyqOFr6+gs1szQ1XQ+rmP+OQqKBATInl9tgjUPGYAYD1aNE7hOl/
	 fZpFTDF7aSi9BJthXjAcdJKL6yFAolidfUbUm3PbaBGtcoUrdtreCRqY0qBLZxLeMo
	 ghJoSemqgXWwJWVeJoesPMK5TCKJsZTeS/giXuYsL5kfNMnQkMrLRdcz/Wvx/5MaOr
	 j8sgCy7gJIvrPSTza9/DUOFMy8CqYeKbo/x8oRoEr7zdyccVj2Lm8xT30TrlbCHQYb
	 zhD9CmxmoNPVIOrHcI/eYyHxkxow1blDh6QIASzcSpR/fL44uM2Dv0VKSQ7sR8OSNL
	 ZMgm7SnEtWs5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D1BE77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384495358.5117.9193835669000012788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09303a46d45004033870d0420e70eae5025c123b8d76632e350a0f4b15078fe
Date: Tue, 10 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733844953
