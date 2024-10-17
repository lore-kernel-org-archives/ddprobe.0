Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB391DDA20
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729169754; cv=none; b=QK+tx+/JpFCCE+sKnmG7zyKdst2DxdbYjfogTG93G4EFLNlDnno6KzkztISVwE1z83EnLsCHwds+2GHugC3IiGoSyGBIVCyn+mbqShX3u5PY901sb4EfTJi91w4gyLncLOuiwtc8knJ57YWgSTUKCpFE1IqMZAHq3JBHQFOtxSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729169754; c=relaxed/simple;
	bh=HR6wOCnFfAZtLwTNi7E265rasweQSLwHLWUIj6/5tRQ=;
	h=To:Subject:From:Message-Id:Date; b=dC6kvVJdaxePCN0XDHhJA+Bp+ccSrZnqiWZrk/n4P/s8vsA76TjrjLjzZQAEiH0vpZ5iAiTmad0ZcuLiVW3TLTShdqgT6tBou/jIUm9xj14u/bjD7TFCEXBSbQASLD/8DOF24uxBV+fZ+c8OcE3nRyFmoa0V4GjmH+qTnoQVjKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t99Or7AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t99Or7AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A119DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729169753;
	bh=HR6wOCnFfAZtLwTNi7E265rasweQSLwHLWUIj6/5tRQ=;
	h=To:Subject:From:Date:From;
	b=t99Or7AJ9nc/hTW4QraK897lWdNFwhneVHqnra5jwQOZYTO3gkBs8HXxMKg64CYrc
	 qhFvNoQpiYnHn3+zLdrI3LOYfPNg5oiKI8NFOrExmrY6hsFuLkXRas2AxDVM8Mg3FY
	 5MDvzPYBTbHgv3tOsLggymL3YrNiU9ehvJTfsk2PCYzKdJ1b94aIKWMoLc1eEA7YYv
	 Dz+6YiK6rMjTeDVAV1DB31k4gV1f/0yc5dJpyMkb64mW0rmwOON4P+tuiQax7YkwCC
	 vPVpd6k73+UpVun/vZAgdWLqyK1OGMyyTZkP2Wu+RJlZNg0uw+a1vfHaHUzZIRQQo9
	 d4Qs/A6AE7r7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F48D37485
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172916975359.1227.2405797889469141798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd19881e746eb12c4122daa6d64d0a05b20e79158ca08718270671eef77b395
Date: Thu, 17 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729169753
