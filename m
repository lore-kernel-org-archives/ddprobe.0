Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500AC1C862D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780970674; cv=none; b=J8luSCBg0pjdjU9c4THGI3shxo3DJ3bIYTW7kAqouMFlKuOlhX61//vJF3rIfRdS7GUdFO6Sb+4/EDwYu5TMuVJBS4zjhF5hOQmThgRyi3Y0NvSL7CZIQfepN2ckjUAxXY2+D7OjgfLTZI/RMfy2c/OdgulegMkKUT0UF7GYZi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780970674; c=relaxed/simple;
	bh=w+5yNY1n6RApS9VK/9XLkZT534XD9AdNAvPJfKl1Fhw=;
	h=To:Subject:From:Message-Id:Date; b=h540S4m7dbiMVfXnwBC+CRIIOuRuZCh/aLADzVt59ohQhxI+iC4xTsk/lXTZoec42h1dySzplckePBNjyqhbucbXEATz/j0lRlJfrJnM3IqtDwJsPdPBPdgQm6ix+8IEi4I+N96jnpHlERlA0W8hOrCA8vS3/EFQKcFW19VIXaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwG+kWDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwG+kWDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEA0C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780970673;
	bh=w+5yNY1n6RApS9VK/9XLkZT534XD9AdNAvPJfKl1Fhw=;
	h=To:Subject:From:Date:From;
	b=rwG+kWDF63F4VjNMr2d5fKIu0XM8y/8RxuDTknToCYtIaRc5WEMNA2kg3ZY2AircH
	 rU/0HUXtiH1Ce/lND3mMxkGmx704C4PcqaT/kWi6/ab/qiHVcsXqXmIXWJ+pk+te46
	 8t+RmD5cZp80a6jQFaRHBTVUWAyYtEdIVJAOx9ZagW31Kgwbm6bzNGQLRt3HvkNYL+
	 976dIa8XpJrxAEPnx5/I+WBpn1zUyzGYAIOBSPvKRkTTJodb5O2EmqVbOppK57/cF4
	 Ue4KkjpND3mPWlBPkUIBd21UA3TvjBA+xlkxEw2zYJmCdekIHke0qjoJ3KgaDLCCpp
	 3Y+zEr47w+zAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC198CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097067375.21665.6095080140683150944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754df059b88d48670526e7042a250de6037fa7126608a8d7641e54679d0b7928
Date: Tue, 09 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780970673
