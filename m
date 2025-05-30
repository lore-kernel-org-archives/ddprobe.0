Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7C2148850
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748620195; cv=none; b=BX3wqBIZfIm+dZq7pwOYRk8AsJk+fcCz0UtlAV+hrwCke1O3IcrEnRFicMl19vJsCZgZBoutdXGvM371BNcbj8wsisCcOmxeph/W/0mn1WZ2cysmdDOfFY2ZDReLxgxks3eVoGYKl6BgIqX+t3TLVq9mVEwtxMqe3GH1aATME7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748620195; c=relaxed/simple;
	bh=Yo+oT/+s+HeZIHVo2/WYsWs1kAUJ6boPL5sbSvX20rQ=;
	h=To:Subject:From:Message-Id:Date; b=qvBRBjFj550hOADUhYFpHfX1bkMdQq/rmrkWLvo0i+ITD8R5ZRRO+ATnkzNal7+Yeu2DnUUuIXXO6ZwRNRbPDuXKMSrVt6+3gds0Gp/PKfhIPidu6m1+JiThCgyMhZvRhpf9UaX8X8fHimo4Wj2LH+KCdvWKbWoYIrEbD3aPxdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6+9rwwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6+9rwwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F731C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748620193;
	bh=Yo+oT/+s+HeZIHVo2/WYsWs1kAUJ6boPL5sbSvX20rQ=;
	h=To:Subject:From:Date:From;
	b=r6+9rwwmvkQ3TLtmURwD8Vp6oQ3aZfXUw353wOFjwFuSoWYbjPP7X5jWuxEjuMY+6
	 AAGOfc3xlW7/7GD4TN0nxvHj5Xr+IVE9A5dbSSqeeDnTa2CG6wqvwwZuR2MwAivA02
	 uc1F42qLhBdEXuicccOXYQ+PR0TI9c1TU0O5D0Hnay4sipbo45qVEGCKWEpTPwpHZP
	 dvFflVsPofV3Mmj8eu1Hc2DTdTTy6O6TEe6LLv1cWN1Llznsu6y0orIeAoLsolj295
	 lvLhjp8vE5TX2hnUxV81RrfctXi5FJtAYbrCFg8fBGk9s+U/IODt1SAi8sOjudmgiN
	 sywgjr6RQHAfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28EC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174862019357.7804.13190992658284983177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6948d7cee9c8fc9b950d218444a3ed48bd2b12acfea8fc5bf2ca30b2ecedce2a
Date: Fri, 30 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748620193
