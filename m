Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D42F4A0C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778980234; cv=none; b=dgXF+rb6HXRpV0YiR9q0gjzJcEfxq3S3Z49ab5PcqL2sA8gCj2MoEgzyaEhGsNk8QJ48us/5WDKAfg3Nz29JtOERwRpqNYIcjjAOK/8e9NVqJbHqo8yOCp2LINmGKyENEcZipkENRCNH5mCLt5zqK6UFFQQWTQkfHEtpN0veKOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778980234; c=relaxed/simple;
	bh=J4AZvLle7ITXEG9aiaY9grKtu3E2ledKB+kyHr3soro=;
	h=To:Subject:From:Message-Id:Date; b=lpOB6LEml+WSeZCD3h7GAjPa7yBKJeD8AhDF/nGn8O8YYH5VpbDeCrDX51dPSPbCUsmfiw92LMz00sChJ03epM+ebnC9di6plgiwQFdUo9Vk253y2Z/9ezey1exRFv0GQP2p3h0D5EcG4WRnoMWYFXUOAyfmgb6GhiuH5NP9PZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i45h+CYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i45h+CYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF56EC19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778980233;
	bh=J4AZvLle7ITXEG9aiaY9grKtu3E2ledKB+kyHr3soro=;
	h=To:Subject:From:Date:From;
	b=i45h+CYKOjLVt2VF27rWIY+Uhp8eRUpPePauE/ByA8atGD/jOYy0jzeRJnnAQzHfM
	 mvtfjkqwA1+8BrjRuZcGV8PJi+bMtKrS+qBYkL3HwNKlfg9EH3OQqHeDRSQAwq8Z+5
	 j0Aq+qO6T6txvYwqM9aVVRBm8JqYdtltyHALJ9P3/PanJ/5DR3O5031TsG7JjYGfhi
	 FD3fcaDCfwK7oWWLKmonPiXvn/uf1IwSXfdaO8wUU89QgJ+HQyFUUYEBThTrNQ1wMj
	 Jyb4ss49ohcR1kb+mrxb3D/2bQwh1ogKZEEzX+/TEM6HHevE/qHSz7kkMsOpY4j8D1
	 70iovd+7Or94g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B8CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898023368.25354.6137042080098384903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb03f3eacdad684fe531d00f1877f373827d055f7f56fd4cbe1bb0e784c18af2
Date: Sun, 17 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778980233
