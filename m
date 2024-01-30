Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CB7762C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706650097; cv=none; b=IwJkb3ZUwOibs9zaUPOBVVQwpdsqFhe91BWeKedYE6JpD05tOhA6JBUQ1oTW3+5ensO7YVPMbN2FqGX/EPreuP0+bRa001idjnzIVFn/4DqW4jvm+lvHV096i8KcMcFAwpOjTVTP/zBYv5bUj7XvOt7DzvTd87ZQxO5+hLDmbSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706650097; c=relaxed/simple;
	bh=PCAUlUc0jTiojOYvUjkVO2NvIXoe0339LURm9vSdiNs=;
	h=To:Subject:From:Message-Id:Date; b=qT0fYMevheXjvjSI+8HOOQeEEN8XgumaWa0r1mQVf4uc4rSGm7oD3JvjVJsX22aYvKBEyPVdba0LZq/4+f2ELG+EWn2GVTi07bxUkpr0dDEx/U6aEVtte6q+eHyjItCm+YhNoy2gfAnSN35qFXh59IYYvlQxwAzdjyCanQR5ZiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkKewaVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkKewaVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B584C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706650096;
	bh=PCAUlUc0jTiojOYvUjkVO2NvIXoe0339LURm9vSdiNs=;
	h=To:Subject:From:Date:From;
	b=qkKewaVJiZuT5pIZPeTYBMcrBRXAtLd5ySClLoR4WP+sowJLko4ABWvazloO8UXMh
	 CTdFwKMWcZ8BtvUgv8df69rTWMeM7pZkF5qQeO6w/5SsS5Jj6y/+vvU9/VlsXyAKET
	 JSwYtge9G938LZgIcgVXs0LPR416uB8PBQoahPqH+APS9Rq0H06LsTGsMhhFq1DzvU
	 0+xfgn3C3dnEC5KzmOpTXyvf8fPeLRM4ZVoMzILuuZ2auUkOuLbUemeNwSLt6NHwFP
	 gW+3bOBisEKo7FEVppedyzTevB/gJ8vulCded02etISUMJR3Sg6Od2Q3FRuC469iW3
	 MqCc3QLQ5LFhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF2DC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170665009638.30163.4329212957445150659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e25843604cca86ed9046e1f58851487aa0cf3cf9f745bb6b1b77d25280489b7
Date: Tue, 30 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706650096
