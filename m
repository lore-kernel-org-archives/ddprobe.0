Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37391F9F8
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726917354; cv=none; b=RWUAnnJYVWyI246r4iFz/KiPkpRKNH1uKOz3W4nRksvAFLgNcOZLoB5zniWTejCOS93qrvQwi9au93iR9mCKht2Gl/8FiLSxink+5SUgq3RQ/DRNovlFkyl4ieTybmJamLTJSY9QbfZn9sLLYK8n0pfy8S0nWTt3sMRIFDln8JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726917354; c=relaxed/simple;
	bh=nZQ38eVIsnNpCotHWQopGqHK6bMpmoVl1UXsTZvWmb0=;
	h=To:Subject:From:Message-Id:Date; b=eITtRByAAlTavPMkC73PZPxIKIqk6nCVV79DAVTc7UOLOm8rySmXVNopul0et5QQMxrhxnUjOyp1pekIXvAf0c9qK+dRUtV5O/sdTXIy3yS6kdZxcIa7PMWFpSdwefNzkcxDhPHkYNfs2aDAng0AwPD/7uVJsCiZhLFAsGOjxPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpO0WMQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpO0WMQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDB4C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726917353;
	bh=nZQ38eVIsnNpCotHWQopGqHK6bMpmoVl1UXsTZvWmb0=;
	h=To:Subject:From:Date:From;
	b=XpO0WMQCVm9PJcYFBrpHU2DVjajs+CUiqQc9nM5EpE2XvoG8bwZVZOdYyArFVipS0
	 JVVQp7yNl9fjXmuntzHQifeWtTS6nHP8fQRQ+mfwRQmzlFDeIIPLdXIKrkyF165REq
	 3s//pD4AMYUh0dXqWAJEJZtmQ7MMtuIlcBLDVCh7QCJ1r1ptg28OPwTYqn04FXjsmL
	 QF3FsSWWiGqFHjkZkYqJnKnLwUtbJoqBQea9lk7xrvHPzO0iwzSQaFhJTsEJrnZsTl
	 x4O4OqiU1b7AiEJmJ8ycGB/gNraAxsI6Yh3mzKJwl4KeQMWH891qtjdkcwdO8rxZm7
	 sq+K/8pnjTk0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBBCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691735360.29635.191261800624738536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47cc28d20ef318cbf56ef7eb155cffa3b40ddb1638d47cb2868326bf24b45b1b
Date: Sat, 21 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726917353
